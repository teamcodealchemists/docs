import os
import re
import json
import datetime

# Percorsi dei file
DOCUMENTI_DIR = "documents"
GLOSSARIO_FILE = "documents/glossario/Gls.typ"
BADGE_FILE = ".github/badges/err_parole_glossario_badge.json"

def carica_glossario(glossario_path):
    """Carica i termini e le sigle del glossario da un file, escludendo quelli nella blacklist."""
    blacklist = {"ci","log"}  # Aggiungi qui le parole o sigle da escludere
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
    """Verifica tutti i file nella cartella documenti, ignorando file datati più di due settimane."""
    blacklist_file = {"Gls.typ"}
    blacklist_cartella = {"candidatura", "presentazioni"}
    errori_totali = 0
    oggi = datetime.datetime.now().date()

    for root, _, files in os.walk(documenti_dir):
        if any(blacklisted in root for blacklisted in blacklist_cartella):
            continue
        for file_name in files:
            if file_name.endswith(".typ") and file_name not in blacklist_file:
                # Controlla se il nome inizia con una data AAAA-MM-DD
                match = re.match(r"^(\d{4})-(\d{2})-(\d{2})", file_name)
                if match:
                    try:
                        file_date = datetime.date(int(match.group(1)), int(match.group(2)), int(match.group(3)))
                        if (oggi - file_date).days > 14:
                            continue  # Salta file più vecchi di due settimane
                    except ValueError:
                        pass  # In caso di data non valida, non saltare il file
                file_path = os.path.join(root, file_name)
                errori_totali += verifica_file(file_path, glossario)
    return errori_totali

def trova_parole_non_in_glossario(documenti_dir, glossario):
    """Trova parole segnate con #super[G] ma non presenti nel glossario, considerando anche i plurali."""
    parole_non_in_glossario = {}
    pattern_super = re.compile(r'#super\["?G"?\]\b', re.IGNORECASE)

    for root, _, files in os.walk(documenti_dir):
        for file_name in files:
            if file_name.endswith(".typ"):
                file_path = os.path.join(root, file_name)
                with open(file_path, 'r', encoding='utf-8') as file:
                    contenuto = file.readlines()

                for numero_riga, riga in enumerate(contenuto, start=1):
                    # Trova tutte le parole segnate con #super[G]
                    match = re.findall(r'\b(\w+)\b(?=\s*#super\["?G"?\])', riga, re.IGNORECASE)
                    for parola in match:
                        # Normalizza la parola rimuovendo caratteri speciali come "_" e convertendo in minuscolo
                        parola_normalizzata = re.sub(r'[^\w\s]', '', parola).replace('_', '').lower()

                        # Rimuovi l'ultima lettera per generare i plurali
                        parola_base = parola_normalizzata[:-1] if len(parola_normalizzata) > 3 else parola_normalizzata

                        # Controlla se la parola o il suo plurale è nel glossario
                        if (parola_normalizzata not in glossario and
                            f"{parola_base}i" not in glossario and
                            f"{parola_base}e" not in glossario and
                            f"{parola_base}a" not in glossario):  # Aggiungi controllo per "a" (es. analista -> analisti)
                            if parola_normalizzata not in parole_non_in_glossario:
                                parole_non_in_glossario[parola_normalizzata] = []
                            parole_non_in_glossario[parola_normalizzata].append((file_name, numero_riga))

    return parole_non_in_glossario

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

    # Trova parole segnate con #super[G] ma non presenti nel glossario
    parole_non_in_glossario = trova_parole_non_in_glossario(DOCUMENTI_DIR, glossario)
    if parole_non_in_glossario:
        print("\033[93m\nParole segnate con #super[G] ma non presenti nel glossario:\033[0m")
        for parola, occorrenze in sorted(parole_non_in_glossario.items()):
            # Rimuovi underscore anche durante la stampa
            parola_senza_underscore = parola.replace('_', '')
            print(f"\033[91m  - {parola_senza_underscore}\033[0m")
            for file_name, numero_riga in occorrenze:
                print(f"      \033[94mFile: {file_name}, Riga: {numero_riga}\033[0m")
    else:
        print("\033[92m\nTutte le parole segnate con #super[G] sono presenti nel glossario.\033[0m")

    # Salva il badge con il numero di errori trovati
    salva_badge_errori(errori_totali)

    # Messaggio finale
    if errori_totali == 0:
        print("\033[92mTutti i file sono corretti!\033[0m")
    else:
        print("\033[91mSono stati trovati errori. Controlla i file manualmente.\033[0m")
