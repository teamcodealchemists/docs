import os
import shutil
import subprocess
import re

def extract_version(file_path):
    """Estrae la versione dalla riga che inizia con '#let versione = '."""
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            for line in file:
                match = re.match(r"#let versione = \"([^\"]+)\"", line)
                if match:
                    return match.group(1)
    except Exception as e:
        print(f"Error reading version from {file_path}: {e}")
    return None  # Restituisce None se la versione non viene trovata

def compile_typ_files():
    # Directory di output relativa alla root del progetto
    compiled_dir = "./compiled"
    os.makedirs(compiled_dir, exist_ok=True)

    # Percorso della directory dei documenti relativa alla root del progetto
    documents_dir = "./documents"

    # Copia la cartella "presentazioni" e tutto il suo contenuto nella directory compilata
    presentazioni_src = os.path.join(documents_dir, "presentazioni")
    presentazioni_dest = os.path.join(compiled_dir, "presentazioni")

    if os.path.exists(presentazioni_src):
        try:
            shutil.copytree(presentazioni_src, presentazioni_dest, dirs_exist_ok=True)
            print(f"Copied 'presentazioni' folder and all its content from {presentazioni_src} to {presentazioni_dest}.")
        except Exception as e:
            print(f"Error copying 'presentazioni' folder: {e}")
    else:
        print(f"'presentazioni' folder not found in {documents_dir}.")

    # Cerca tutti i file .typ nella directory dei documenti
    for root, _, files in os.walk(documents_dir):
        for file in files:
            if file.endswith(".typ") and "Lettera di Presentazione.typ" not in file:
                file_path = os.path.join(root, file)
                output_dir = os.path.join(compiled_dir, os.path.relpath(root, documents_dir))
                os.makedirs(output_dir, exist_ok=True)

                # Estrai la versione dal file
                version = extract_version(file_path)

                # Controlla se esiste un PDF firmato
                base_name = os.path.splitext(file)[0]
                for signed_file in files:
                    if signed_file.endswith("_signed.pdf") and signed_file.startswith(base_name):
                        signed_pdf = os.path.join(root, signed_file)
                        if version:
                            output_pdf = os.path.join(output_dir, f"{base_name}_{version}_signed.pdf")
                        else:
                            output_pdf = os.path.join(output_dir, f"{base_name}_signed.pdf")
                        print(f"Signed PDF found for {file_path}, copying to {output_pdf}.")
                        shutil.copy(signed_pdf, output_pdf)
                        break
                else:
                    # Compila il file .typ
                    if version:
                        output_pdf = os.path.join(output_dir, f"{base_name}_{version}.pdf")
                    else:
                        output_pdf = os.path.join(output_dir, f"{base_name}.pdf")
                    try:
                        subprocess.run(
                            ["typst", "compile", "--root=.", file_path, output_pdf],
                            check=True
                        )
                        print(f"Compiled {file_path} to {output_pdf}")
                    except subprocess.CalledProcessError as e:
                        print(f"Error compiling {file_path}: {e}")

    # Stampa i file compilati
    print("Compiled files:")
    for root, _, files in os.walk(compiled_dir):
        for file in files:
            print(os.path.join(root, file))

if __name__ == "__main__":
    compile_typ_files()
    