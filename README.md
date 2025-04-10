![err_parole_glossario_badge](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fteamcodealchemists%2Fdocs%2Frefs%2Fheads%2Ffeature%2Faction-controlli-testo%2F.github%2Fbadges%2Ferr_parole_glossario_badge.json)
![gulpease_badge](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fteamcodealchemists%2Fdocs%2Frefs%2Fheads%2Ffeature%2Faction-controlli-testo%2F.github%2Fbadges%2Fgulpease_badge.json)
![ordinamento_glossario_badge](https://img.shields.io/endpoint?url=https%3A%2F%2Fraw.githubusercontent.com%2Fteamcodealchemists%2Fdocs%2Frefs%2Fheads%2Ffeature%2Faction-controlli-testo%2F.github%2Fbadges%2Fordinamento_glossario_badge.json)

# 🧪 Repository Typst per la Documentazione del Progetto - Code Alchemists (Gruppo 21)

Benvenuto nel repository del gruppo **Code Alchemists (Gruppo 21)**! Questo repository è gestito esclusivamente dal team e contiene tutto il necessario per creare e mantenere la documentazione del progetto. Sentiti libero di esplorare la struttura del repository e contribuire al miglioramento della documentazione, rispettando le linee guida interne.

- [Informazioni](#informazioni)
- [Contenuto](#contenuto)
- [Nomenclatura dei File](#nomenclatura-dei-file)
- [Verifica](#verifica)
- [Requisiti](#requisiti)
- [Deploy](#deploy)

## Informazioni

Questo repository contiene i file necessari per la documentazione del progetto. La documentazione è scritta utilizzando il linguaggio **Typst**.

## Contenuto
- **`src/`**: Contiene i file sorgente Typst.
- **`documents/`**: Contiene i file typst divisi per consegna.
- **`assets/`**: Contiene immagini, grafici e altri file di supporto.
- **`templates/`**: Contiene i file modello per la creazione di nuovi documenti.

## Nomenclatura dei File

Per mantenere una struttura organizzata e coerente, segui queste linee guida per la nomenclatura dei file:

- Usa il formato `snake_case` (es. `nome_file_typst.typ`) per separare le parole.
- Includi una data nel formato `YYYY-MM-DD` (es. `2023-10-21.typ`).
- Per i verbali: 
    - Verbali Interni `DATA_VI_VERSIONE`.
    - Verbali Esterni `DATA_VE_VERSIONE` ed aggiungere `_signed` se si tratta di un documento firmato.
- Per quanto riguarda la documentazione `NOME_VERSIONE`, il nome può contenere spazi.

Seguendo queste regole, sarà più semplice navigare e mantenere il repository.

## Verifica

In supporto al processo di verifica è stata implementata un'action che esegue diversi script di verifica del testo,
puoi verificare lo stato dell'ultima modifica dai badge di stato o per più informazioni controllando i log dell'azione.

- **Parole del Glossario non segnate**: Segna il numero di parole trovate nelle documentazione e presenti nel glossario che non hanno G come apice.
- **Gulpease**: Indica da 0 a 100 [l'indice di Gulpease](https://it.wikipedia.org/wiki/Indice_Gulpease) della documentazione.
- **Glossario**: Controlla se il glossario è ordinato in modo alfabetico.

## Requisiti
Per lavorare con i file Typst, assicurati di avere installato:
- [Visual Studio Code](https://code.visualstudio.com/)
- L'estensione [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) per un'esperienza di editing migliorata\

## Deploy
Per effettuare il deploy a github pages basta semplicemente fare una release dalla branch [develop](https://github.com/teamcodealchemists/docs/tree/develop) e la action in automatico compilerà i file per caricarli su pages. In caso di deploy fallito consultare log o contattare @sebamarana.
