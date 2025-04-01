#import "/src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "18/03/2025"
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
    [18/03/2025],
    [R. Zangla],
    [S. Speranza],
    [Approvazione Interna del documento],
    
    [0.2.0],
    [18/03/2025],
    [A. Shu],
    [R. Zangla],
    [Aggiornamento del documento con correzione errori],

    [0.1.0],
    [18/03/2025],
    [A. Shu],
    [R. Zangla],
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
    In data *18 marzo 2025*, dalle ore *9:00* alle ore *11:00*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione conclusiva per la scelta tra i capitolati *_C6_*, *_C4_* e *_C3_*.\
    La riunione si è svolta secondo il seguente ordine del giorno:

    == 1.1 Ordine del Giorno
    + Presentazione di idee e preferenze personali sui capitolati.
    + Discussione delle eventuali problematiche riscontrabili;
    + Votazione per la scelta del capitolato;
    + Ripartizione oraria dei ruoli e definizione costi;
    + Ultimazione e invio dei verbali esterni alle aziende per approvazione esterna;
    + Pianificazione dettagliata della suddivisione giornaliera dei compiti;
    
  #pagebreak()
  = 2. Verbale
  Il verbale iniziale viene redatto da *#p.alex* e come revisore *#p.ramona*.

  == 2.1 Presentazione di idee e preferenze personali sui capitolati
  In seguito agli incontri effettuati con le aziende e dopo aver rivisto autonomamente i capitolati (*C3, C4 e C6*), il team ha valutato le diverse opzioni in base agli interessi comuni, impressioni ricevute e alle competenze attuali, definendo delle preferenze personali.
  
  == 2.2 Discussione delle eventuali problematiche riscontrabili
  Per i vari capitolati presi in considerazione, sono stati analizzati i *pro* e i *contro* di ciascuno, valutando le tecnologie utilizzate e la complessità dei singoli progetti che è stata resa molto più chiara a seguito degli incontri. Inoltre, a seguito di un confronto con gli altri gruppi, abbiamo discusso di come degli eventuali conflitti tra preferenze potrebbero comportare un rallentamento significativo, con il *rischio di perdere 1 o 2 settimane a causa della perdita dell'assegnazione del capitolato*.
  
  == 2.3 Votazione per la scelta del capitolato
  Dopo aver esposto le preferenze, le opinioni di ogni membro e identificato le eventuali problematiche che potrebbero emergere, abbiamo avviato un sondaggio su Discord permettendo la scelta di una singola preferenza tra i vari capitolati, da cui è emerso il *capitolato 6* con proponente *M31* risultante come vincitore.

  == 2.4 Ripartizione oraria dei ruoli e definizione costi
  A seguito di un'analisi approfondita dei singoli ruoli e determinato l'intervallo di tempo in cui è cruciale la loro presenza durante le varie fasi di sviluppo, è stato ultimato il *preventivo dei costi* e gli *impegni orari* con le ore produttive che ciascun componente si impegna di dedicare al progetto ricoprendo un determinato ruolo.

  == 2.5 Ultimazione e invio dei verbali esterni alle aziende per approvazione esterna
  Dopo aver ultimato la stesura e la revisione dei verbali esterni a seguito degli incontri con le singole aziende, abbiamo proceduto a inviare le mail attendendo la loro *approvazione* di quanto scritto al loro interno.
  
  == 2.6 Pianificazione dettagliata della suddivisione giornaliera dei compiti
  Al termine della riunione, il gruppo è stato suddiviso in base allo stato di avanzamento delle attività, assegnando i compiti ai membri che avevano completato la task precedente, in modo da garantire una *progressione fluida e continua del lavoro*. Ogni membro ha ricevuto *nuovi compiti* per mantenere il ritmo e ottimizzare i tempi di esecuzione.

  #pagebreak()
  = 3. Esiti della Riunione
  Il team ha esaminato i capitolati *C3, C4 e C6*, esprimendo le preferenze individuali e discutendo i pro e i contro di ciascuno. Si è evidenziato il *rischio* di perdere tempo a causa della competizione con altri gruppi. Dopo una votazione su _Discord_, è stato scelto il *capitolato 6*. 
  Sono stati definiti i *ruoli*, i *costi* e il *tempo dedicato* da ciascun membro al progetto. Infine, i verbali esterni sono stati inviati per l'*approvazione delle aziende*, e la *suddivisione giornaliera dei compiti* è stata organizzata, come quanto segue.

  = 3.1 Suddivisione giornaliera dei compiti
  A ogni membro sono state assegnate delle task per garantire un flusso continuo di avanzamento:
  - #p.nicolo: Documento *dichiarazione* degli *impegni*;
  - #p.mattia: Documento *candidatura* e *conclusione parte back-end del sito web*;
  - #p.stefano: Ottimizzazione *struttura della documentazione* e *gestione* dei *template*;
  - #p.nicholas : *Verbale esterno* in data *17/03/2025* con l'azienda *_VarGroup_*;
  - #p.alex : *Verbale interno* della riunione in data *18/03/2025*
  - #p.ramona: *Revisione* del *verbale interno* in data *18/03/2025*;
  - #p.sebastiano: *Gestione Jira* e modifiche al *way of working*;
  - #p.matteo: Inizio dell'apprendimento delle nuove tecnologie;
