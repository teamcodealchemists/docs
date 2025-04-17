import os
import json

# Configura il percorso della cartella e il link base
folder_path = "documents_compiled/"  # Cambia con il percorso della cartella desiderata
base_link = "https://teamcodealchemists.github.io/docs"  # Sostituisci con il link base desiderato

# Funzione per creare l'indice dei file divisi per cartelle
def create_index_by_folder(folder_path, base_link):
    index = {}
    for root, _, files in os.walk(folder_path):
        relative_root = os.path.relpath(root, folder_path)
        if relative_root == ".":
            relative_root = ""
        folder_key = relative_root.replace(os.sep, "/")
        index[folder_key] = []
        for file in files:
            file_path = os.path.relpath(os.path.join(root, file), folder_path)
            file_link = f"{base_link}/{file_path.replace(os.sep, '/')}"
            index[folder_key].append({"name": file, "link": file_link})
    return index

# Creazione dell'indice
index = create_index_by_folder(folder_path, base_link)

# Salvataggio in un file JSON
output_file = os.path.join(folder_path, "index.json")
with open(output_file, "w", encoding="utf-8") as f:
    json.dump(index, f, indent=4, ensure_ascii=False)

print(f"File index.json creato con successo in: {output_file}")