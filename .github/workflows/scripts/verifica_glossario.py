import os
import re
import sys  # Import necessario per impostare il codice di uscita
import json

# Percorsi dei file
documenti_dir = "documents"
glossario_file = "documents/glossario/glossario.typ"

def carica_glossario(glossario_path):
    """Carica le parole del glossario da un file, rimuovendo caratteri speciali e spazi all'inizio e alla fine, prendendo solo le linee che iniziano con '-'."""
    with open(glossario_path, 'r', encoding='utf-8') as file:
        return {re.sub(r'[^a-zA-Z0-9]', '', line.strip().lower()) for line in file if line.strip().startswith('-')}
    
def debug_print(glossario):
    """Stampa le parole del glossario per il debug."""
    print("Parole nel glossario:")
    for parola in glossario:
        print(f"  - {parola}")

def verifica_file(file_path, glossario):
    """Verifica che tutte le parole del glossario siano segnate con la super [G] in un file."""
    errori = 0
    with open(file_path, 'r', encoding='utf-8') as file:
        contenuto = file.readlines()
        print(f"\033[94mControllando il file: {file_path}\033[0m")  # Nome del file in blu
        for parola in glossario:
            for numero_riga, riga in enumerate(contenuto, start=1):
                if parola in riga.lower():
                    # Verifica che la parola sia seguita da #super[G], ignorando maiuscole e minuscole
                    pattern = re.escape(parola) + r"#super\[g\]"
                    if not re.search(pattern, riga, re.IGNORECASE):
                        print(f"\033[91m  - Errore: la parola '{parola}' nella riga {numero_riga} non è segnata con la [G].\033[0m")  # Errore in rosso
                        errori += 1
                    else:
                        print(f"\033[92m  - Parola trovata: '{parola}' nella riga {numero_riga}\033[0m")  # Parola trovata in verde
    return errori

def verifica_documenti(documenti_dir, glossario):
    """Verifica tutti i file nella cartella documenti, escludendo file specifici in una blacklist."""
    blacklist = {"glossario.typ"}  # File da escludere dalla verifica
    errori_totali = 0
    for root, _, files in os.walk(documenti_dir):
        for file_name in files:
            if file_name.endswith(".typ") and file_name not in blacklist:  # Controlla solo file di testo non in blacklist
                file_path = os.path.join(root, file_name)
                errori_totali += verifica_file(file_path, glossario)
    return errori_totali

def salva_badge_errori(numero_errori):
    badge = {
        "schemaVersion": 1,
        "label": "Parole del Glossario non segnate",
        "message": str(numero_errori),
        "color": "green" if numero_errori == 0 else "red"
    }
    with open(".github/badges/err_parole_glossario_badge.json", "w") as badge_file:
        json.dump(badge, badge_file)

if __name__ == "__main__":
    glossario = carica_glossario(glossario_file)
    #debug_print(glossario)
    errori = verifica_documenti(documenti_dir, glossario)
    salva_badge_errori(errori)
