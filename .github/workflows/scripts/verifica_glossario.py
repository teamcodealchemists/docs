import os
import re
import sys  # Import necessario per impostare il codice di uscita
import json

# Percorsi dei file
documenti_dir = "documents"
glossario_file = "documents/glossario/Gls.typ"

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
    """Verifica che tutte le parole del glossario siano segnate con la [G] o ("G") in un file."""
    errori = 0
    with open(file_path, 'r', encoding='utf-8') as file:
        contenuto = file.readlines()
        print(f"\033[94mControllando il file: {file_path}\033[0m")  # Nome del file in blu
        for parola in glossario:
            for numero_riga, riga in enumerate(contenuto, start=1):
                if re.search(rf"\b{re.escape(parola)}\b", riga, re.IGNORECASE):
                    # Verifica che la parola sia seguita da #super[G] o #super("G"), ignorando maiuscole e minuscole
                    pattern = rf"\b{re.escape(parola)}\b\s*#super\[\s*\"?G\"?\s*\]|\b{re.escape(parola)}\b\s*#super\(\s*\"?G\"?\s*\)"
                    if not re.search(pattern, riga, re.IGNORECASE):
                        print(f"\033[91m  - Errore: la parola '{parola}' nella riga {numero_riga} non è segnata con la [G] o (G).\033[0m")  # Errore in rosso
                        errori += 1
                    else:
                        print(f"\033[92m  - Parola trovata: '{parola}' nella riga {numero_riga}\033[0m")  # Parola trovata in verde
    return errori

def verifica_documenti(documenti_dir, glossario):
    """Verifica tutti i file nella cartella documenti, escludendo file specifici in una blacklist e una cartella specifica."""
    blacklist_file = {"Gls.typ"}  # File da escludere dalla verifica
    blacklist_cartella = {"candidatura"}  # Cartelle da escludere dalla verifica
    errori_totali = 0
    for root, _, files in os.walk(documenti_dir):
        # Salta le cartelle nella blacklist
        if any(blacklisted in root for blacklisted in blacklist_cartella):
            continue
        for file_name in files:
            if file_name.endswith(".typ") and file_name not in blacklist_file:  # Controlla solo file di testo non in blacklist
                file_path = os.path.join(root, file_name)
                errori_totali += verifica_file(file_path, glossario)
    return errori_totali

def correggi_file(file_path, glossario):
    """Corregge il file aggiungendo #super[G] accanto alle parole del glossario mancanti."""
    with open(file_path, 'r', encoding='utf-8') as file:
        contenuto = file.readlines()

    modificato = False
    with open(file_path, 'w', encoding='utf-8') as file:
        for numero_riga, riga in enumerate(contenuto, start=1):
            nuova_riga = riga
            for parola in glossario:
                if re.search(rf"\b{re.escape(parola)}\b", riga, re.IGNORECASE):
                    # Verifica che la parola sia seguita da #super[G]
                    pattern = rf"\b{re.escape(parola)}\b#super\[G\]"
                    if not re.search(pattern, riga, re.IGNORECASE):
                        # Aggiungi #super[G] direttamente accanto alla parola
                        nuova_riga = re.sub(
                            rf"(\b{re.escape(parola)}\b)(?!#super\[G\])",
                            r"\1#super[G]",
                            nuova_riga,
                            flags=re.IGNORECASE
                        )
                        modificato = True
                        print(f"\033[93m  - Correzione: aggiunto #super[G] alla parola '{parola}' nella riga {numero_riga}.\033[0m")  # Correzione in giallo
            file.write(nuova_riga)

    if not modificato:
        print(f"\033[92m  - Nessuna modifica necessaria per il file: {file_path}\033[0m")  # Nessuna modifica in verde

def correggi_documenti(documenti_dir, glossario):
    """Corregge tutti i file nella cartella documenti."""
    blacklist_file = {"Gls.typ"}  # File da escludere dalla correzione
    blacklist_cartella = {"candidatura"}  # Cartelle da escludere dalla correzione
    for root, _, files in os.walk(documenti_dir):
        # Salta le cartelle nella blacklist
        if any(blacklisted in root for blacklisted in blacklist_cartella):
            continue
        for file_name in files:
            if file_name.endswith(".typ") and file_name not in blacklist_file:  # Controlla solo file di testo non in blacklist
                file_path = os.path.join(root, file_name)
                correggi_file(file_path, glossario)

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
    
    # Prima verifica
    errori_iniziali = verifica_documenti(documenti_dir, glossario)
    print(f"\033[93mNumero di errori trovati prima della correzione: {errori_iniziali}\033[0m")
    
    # Correzione dei documenti
    correggi_documenti(documenti_dir, glossario)
    
    # Seconda verifica
    errori_finali = verifica_documenti(documenti_dir, glossario)
    print(f"\033[93mNumero di errori trovati dopo la correzione: {errori_finali}\033[0m")
    
    # Salva il badge con il numero di errori finali
    salva_badge_errori(errori_finali)
    
    # Messaggio finale
    if errori_finali == 0:
        print("\033[92mTutti gli errori sono stati corretti con successo!\033[0m")
    else:
        print("\033[91mAlcuni errori non sono stati corretti. Controlla i file manualmente.\033[0m")
