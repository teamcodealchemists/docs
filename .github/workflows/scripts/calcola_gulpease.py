import os
import re
import json
from statistics import mean

# Funzione per calcolare l'indice Gulpease
def calcola_gulpease(testo):
    frasi = len(re.findall(r'[.!?]', testo))
    parole = len(testo.split())
    lettere = len(re.findall(r'[a-zA-Z]', testo))
    if parole == 0:
        return 0
    return 89 + (300 * frasi - 10 * lettere) / parole

# Funzione per ripulire il contenuto di un file .typ
def ripulisci_contenuto(testo):
    # Rimuove tag HTML, codice e contenuti specifici non necessari
    testo_pulito = re.sub(r'<[^>]+>', '', testo)  # Rimuove tag HTML
    testo_pulito = re.sub(r'```.*?```', '', testo, flags=re.DOTALL)  # Rimuove blocchi di codice delimitati da ```
    testo_pulito = re.sub(r'`[^`]+`', '', testo)  # Rimuove codice inline delimitato da `
    testo_pulito = re.sub(r'\s+', ' ', testo_pulito).strip()  # Rimuove spazi multipli
    return testo_pulito

# Funzione per scansionare tutte le cartelle e calcolare Gulpease
def analizza_documenti(directory):
    blacklist = ["candidatura"]  # Aggiungi qui le cartelle da escludere
    indici_gulpease = []
    for root, _, files in os.walk(directory):
        # Salta le cartelle nella blacklist
        if any(blacklisted in root for blacklisted in blacklist):
            continue
        for file in files:
            if file.endswith('.typ'):
                percorso_file = os.path.join(root, file)
                with open(percorso_file, 'r', encoding='utf-8') as f:
                    testo = f.read()
                    testo_pulito = ripulisci_contenuto(testo)
                    indice = calcola_gulpease(testo_pulito)
                    indici_gulpease.append((file, indice, testo_pulito))
    return indici_gulpease

# Funzione per generare un badge JSON
def genera_badge_json(percentuale_media, output_file):
    badge_data = {
        "schemaVersion": 1,
        "label": "Gulpease",
        "message": f"{percentuale_media}",
        "color": "green" if percentuale_media >= 60 else "yellow" if percentuale_media >= 40 else "red"
    }
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(badge_data, f, indent=4)

# Funzione per stampare il risultato con colori ANSI
def stampa_colore(percentuale):
    print("\n")
    if percentuale >= 60:
        print(f"\033[92mIndice Gulpease medio: {percentuale}\033[0m")
    elif percentuale >= 40:
        print(f"\033[93mIndice Gulpease medio: {percentuale}\033[0m")
    else:
        print(f"\033[91mIndice Gulpease medio: {percentuale}\033[0m")

def main():
    directory = "documents"
    output_badge = ".github/badges/gulpease_badge.json"

    indici_gulpease = analizza_documenti(directory)
    stampa_indici_gulpease(indici_gulpease)
    
    percentuale_media = calcola_percentuale_media(indici_gulpease)
    genera_badge_json(percentuale_media, output_badge)
    stampa_colore(percentuale_media)

def stampa_indici_gulpease(indici_gulpease):
    print("Indici Gulpease calcolati per i documenti:")
    for file, indice, testo_pulito in indici_gulpease:
        frasi = len(re.findall(r'[.!?]', testo_pulito))
        parole = len(testo_pulito.split())
        lettere = len(re.findall(r'[a-zA-Z]', testo_pulito))
        indice = min(round(indice), 100)  # Limita l'indice a un massimo di 100

        colore = "\033[92m" if indice >= 60 else "\033[93m" if indice >= 40 else "\033[91m"
        nome_file_troncato = (file[:27] + '...') if len(file) > 30 else file
        print(f"{colore}{nome_file_troncato:<30} | Frasi: {frasi:<5} | Parole: {parole:<7} | Lettere: {lettere:<7} | Indice Gulpease: {indice}\033[0m")

def calcola_percentuale_media(indici_gulpease):
    if not indici_gulpease:
        return 0
    return round(mean([min(indice, 100) for _, indice, _ in indici_gulpease]))

if __name__ == "__main__":
    main()