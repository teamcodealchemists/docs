import re
import json
import os

def verifica_ordinamento_glossario(file_path, output_json_path):
    def normalizza_parola(parola):
        # Rimuove sigle tra parentesi e caratteri non alfabetici, e converte in minuscolo
        parola = re.sub(r'\(.*?\)', '', parola)  # Rimuove sigle tra parentesi
        parola = re.sub(r'[^a-zA-Z]', '', parola)  # Rimuove tutto tranne le lettere
        return parola.lower()  # Converte in minuscolo per confronto case-insensitive

    with open(file_path, 'r', encoding='utf-8') as file:
        # Rimuove comandi Typst e mantiene solo il testo
        parole = [
            re.sub(r'\\[a-zA-Z]+\{.*?\}', '', line).strip()  # Rimuove comandi Typst
            for line in file if line.strip() and line.startswith('-')  # Considera solo righe che iniziano con '-'
        ]

    parole = [parola for parola in parole if parola]  # Rimuove eventuali stringhe vuote
    parole_non_ordinate = sorted(parole, key=normalizza_parola)  # Ordina usando la funzione normalizza_parola
    if parole == parole_non_ordinate:
        print("\033[1;32mLe parole nel glossario sono in ordine alfabetico corretto.\033[0m")
        result = {"schemaVersion": 1, "label": "Glossario", "message": "ordinato", "color": "green"}
    else:
        print("\033[1;31mLe parole nel glossario non sono in ordine alfabetico.\033[0m\n")
        print("Ecco l'ordine corretto diviso per lettera:")
        current_letter = None
        for i, parola in enumerate(parole_non_ordinate):
            parola_pulita = normalizza_parola(parola)
            if not parola_pulita:
                continue
            first_letter = parola_pulita[0].upper()
            if first_letter != current_letter:
                current_letter = first_letter
                print(f"\n\033[1;34m{current_letter}\033[0m")  # Colore blu per la lettera
                print("-" * 20)  # Divider per sezione
            # Evidenzia in rosso le parole fuori ordine
            if i < len(parole) and parola != parole[i]:
                print(f"\033[1;31m  {parola}\033[0m")  # Colore rosso per parole fuori ordine
            else:
                print(f"  {parola}")
        result = {"schemaVersion": 1, "label": "Glossario", "message": "non ordinato", "color": "red"}

    os.makedirs(os.path.dirname(output_json_path), exist_ok=True)  # Ensure the directory exists
    with open(output_json_path, 'w', encoding='utf-8') as json_file:
        json.dump(result, json_file, ensure_ascii=False, indent=4)

verifica_ordinamento_glossario('documents/glossario/Gls.typ', '.github/badges/ordinamento_glossario_badge.json')