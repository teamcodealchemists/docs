import os
import re
import json

# Percorsi dei file
DOCUMENTI_DIR = "documents"
GLOSSARIO_FILE = "documents/glossario/Gls.typ"
BADGE_FILE = ".github/badges/err_parole_glossario_badge.json"

def carica_glossario(glossario_path):
    """Carica i termini e le sigle del glossario da un file, escludendo quelli nella blacklist."""
    blacklist = {"ci"}  # Aggiungi qui le parole o sigle da escludere
    with open(glossario_path, 'r', encoding='utf-8') as file:
        glossario = set()
        for line in file:
            line = line.strip()
            if line.startswith('-'):
                # Estrai il termine o la sigla dal formato "- *Termine (sigla)*"
                match = re.match(r'-\s*\*?([\w\s]+)\*?(?:\s*\(([\w\s]+)\))?', line)
                if match:
                    termine = match.group(1).strip().lower()
                    sigla = match.group(2).strip().lower() if match.group(2) else None
                    if termine and termine not in blacklist:  # Evita termini vuoti o in blacklist
                        glossario.add(termine)
                    if sigla and sigla not in blacklist:  # Evita sigle vuote o in blacklist
                        glossario.add(sigla)
        return glossario

def verifica_file(file_path, glossario):
    """Verifica che tutte le parole del glossario siano segnate con #super[G] o #super("G")."""
    errori = 0
    with open(file_path, 'r', encoding='utf-8') as file:
        contenuto = file.readlines()

    print(f"\033[94mControllando il file: {file_path}\033[0m")  # Colore blu per il nome del file
    for parola in glossario:
        if not parola:  # Salta parole vuote
            continue

        # Regex per la parola stessa
        pattern_parola = rf'\b{re.escape(parola)}(?![\s.,;:!?]*#super)'

        # Regex per la parola senza l'ultima lettera con varianti
        parola_senza_ultima = parola[:-1] if len(parola) > 1 else parola
        pattern_varianti = rf'\b{re.escape(parola_senza_ultima)}(o|a|i|e| ta)?\b(?![\s.,;:!?]*#super)'

        for numero_riga, riga in enumerate(contenuto, start=1):
            # Cerca la parola stessa o la parola con varianti nella riga
            if re.search(pattern_parola, riga, re.IGNORECASE) or re.search(pattern_varianti, riga, re.IGNORECASE):
                print(f"\033[91m  - Errore: La parola '{parola}' non è segnata con #super[G] nella riga {numero_riga}\033[0m")
                errori += 1
    return errori

def verifica_documenti(documenti_dir, glossario):
    """Verifica tutti i file nella cartella documenti."""
    blacklist_file = {"Gls.typ"}
    blacklist_cartella = {"candidatura", "presentazioni"}
    errori_totali = 0

    for root, _, files in os.walk(documenti_dir):
        if any(blacklisted in root for blacklisted in blacklist_cartella):
            continue
        for file_name in files:
            if file_name.endswith(".typ") and file_name not in blacklist_file:
                file_path = os.path.join(root, file_name)
                errori_totali += verifica_file(file_path, glossario)
    return errori_totali

def salva_badge_errori(numero_errori):
    """Salva un badge JSON con il numero di errori trovati."""
    badge = {
        "schemaVersion": 1,
        "label": "Parole del Glossario non segnate",
        "message": str(numero_errori),
        "color": "green" if numero_errori == 0 else "red"
    }
    with open(BADGE_FILE, "w", encoding="utf-8") as badge_file:
        json.dump(badge, badge_file)

if __name__ == "__main__":
    glossario = carica_glossario(GLOSSARIO_FILE)

    # Verifica dei documenti
    errori_totali = verifica_documenti(DOCUMENTI_DIR, glossario)
    print(f"Numero di errori trovati: {errori_totali}")

    # Salva il badge con il numero di errori trovati
    salva_badge_errori(errori_totali)

    # Messaggio finale
    if errori_totali == 0:
        print("Tutti i file sono corretti!")
    else:
        print("Sono stati trovati errori. Controlla i file manualmente.")
