#import "/template/import/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "10/03/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.alex,
  p.stefano,
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.0.0],
    [11/03/2025],
    [N. Bolzon],
    [S. Speranza],
    [Approvazione Interna del documento],
    
    [0.2.0],
    [11/03/2025],
    [R. Zangla],
    [N. Bolzon],
    [Aggiornamento del documento con correzione errori e aggiunta degli appuntamenti],

    [0.1.0],
    [10/03/2025],
    [R. Zangla],
    [N. Moretto],
    [Prima stesura del documento],

)
#let contenuto = (
    // Voci in prima pagina
    voce("Stato", status),
    voce("Versione", versione),
    voce("Presenze", presenze),
    voce("Distribuzione", distribuzione)
)


// CONFIGURAZIONE PAGINE
#show: conf.with(
  title: [#titolo],
  contenuto: (contenuto)
)
#show: registro.with(
  voci: voci_registro
)
#show: indice


// INSERIRE QUI CONTENUTO
= 1. Informazioni generali    //punto dell'indice
    In data *10 marzo 2025*, dalle ore *09:30* alle ore *10:35*, si è svolto, presso il *LabTA* di *Torre Archimede*, in Via Trieste, 63 - 35121 Padova, un incontro del Team Code Alchemists.\
    Come pre-annunciato nel verbale precedente, la riunione si è svolta secondo il seguente ordine del giorno:

    == 1.1 Ordine del Giorno
    + Stesura iniziale del Way of Working;
    + Primi contatti con le aziende proponenti dei capitolati;
    + Stesura domande da porre alle aziende;
    + Definizione prossimi appuntamenti del team; 
  
  #pagebreak()
  = 2. Verbale
  Il verbale iniziale viene redatto da *#p.ramona* e come revisore *#p.nicholas*.

  == 2.1 Stesura iniziale del Way of Working
    Dopo aver analizzato i vari capitolati, abbiamo iniziato a discutere sugli strumenti da utilizzare e sulle modalità di lavoro. A tal fine, è stato redatto un documento intitolato *“Way of Working”*, in cui sono riportate le scelte del team. Il documento resterà modificabile e sarà completato in funzione della scelta definitiva del capitolato.

  == 2.2 Primi contatti con le aziende proponenti dei capitolati
    *#p.nicolo* è stato incaricato di redigere le email da inviare alle aziende e di gestire i contatti iniziali con le stesse, al fine di organizzare gli incontri conoscitivi preliminari, durante i quali discuteremo i capitolati e presenteremo eventuali dubbi e domande.

  == 2.3. Stesura domande da porre alle aziende
    Tra la documentazione del team è stato redatto un documento intitolato *“Valutazione dei Capitolati”*, che contiene le informazioni iniziali relative alla valutazione dei capitolati da parte dei membri del team. Il documento include anche le domande che verranno rivolte alle aziende, contenenti dubbi e richieste di chiarimenti su quanto presentato e letto nei capitolati d'appalto.

  == 2.4 Definizione prossimi appuntamenti del team
  Tra i prossimi appuntamenti in calendario del team, si segnala:\
  - *Giovedì 13/03/2025 - ore 17:00 su Google Meet* = incontro con _SyncLab_;
  - *Venerdì 14/03/2025 - ore 14:30 su Microsoft Teams* = incontro con _M31_;
  - *Lunedì 17/03/2025 - ore 18:00 su Microsoft Teams* = incontro con _VarGroup_;

  #pagebreak()
  = 3 Esiti della Riunione
  Al termine della riunione, il team ha preso le seguenti decisioni in merito al prossimo incontro del team che dovrà trattare i seguenti argomenti:
  1. Discussione sui vari incontri con le aziende;
  2. Scelta definitiva del capitolato;
  3. Stesura Dichiarazione Impegni;
  4. Stesura della Lettera di Candidatura;


