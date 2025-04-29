#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "11/04/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.1.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.alex,
  p.stefano,
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.1.0],
    [14/04/2025],
    [N. Bolzon],
    [R. Zangla],
    [Correzione errore nel corpo del documento],

    [1.0.0],
    [12/04/2025],
    [-],
    [R. Zangla],
    [Approvazione del documento],
    
    [0.1.0],
    [11/04/2025],
    [N. Bolzon],
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
    In data *11 aprile 2025*, dalle ore *14:30* alle ore *16:10*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchmists_.\
    La riunione si è svolta, al termine del primo sprint, secondo il seguente ordine del giorno:

    == 1.1 Ordine del Giorno
    + Verifica del primo sprint (dal 28-03-2025 a 11-04-2025);
    + Analisi di eventuali criticità emerse;
    + Assegnazione ruoli fino al giorno 24-04-2025;
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicolo* e come revisore *#p.ramona*.

  == 2.1 Verifica del primo sprint (dal 28-03-2025 a 11-04-2025)
  Il meeting odierno è stato convocato con l’obiettivo di verificare le attività svolte da ciascun membro del _Team_, in relazione al proprio ruolo, nel corso del *primo sprint*, avviato il *28 marzo 2025* (28-03-2025) e conclusosi in data odierna, *11 aprile 2025* (11-04-2025). \

  Il responsabile#super[G]#super("G") uscente, *#p.sebastiano*, ha dato avvio allo _stand-up meeting_, invitando ciascun componente presente a illustrare le attività svolte individualmente e all'interno del proprio sottogruppo di lavoro _(ad esempio, il team analisti#super("G"))_. \

  Le eventuali cricità emerse sono state rinviate al punto successivo dell'ordine del giorno. \
  
  == 2.2 Analisi di eventuali criticità emerse
  Tra le criticità emerse nel corso dell’incontro, si è rilevato che, nel software di gestione del progetto *Jira*, alcune attività _(task)_ non risultavano assegnate ad alcun membro del _Team_. A tal proposito, si raccomanda, per i prossimi sprint, di verificare attentamente che ogni task inserita sia correttamente assegnata a uno o più componenti del gruppo, in possesso del ruolo adeguato all’esecuzione della stessa. \

  Una seconda criticità, anch’essa relativa alla gestione delle task, riguarda la tracciabilità del tempo impiegato per ciascuna attività. Si sottolinea l’importanza, per ogni membro del _Team_, di registrare il tempo dedicato all’esecuzione delle proprie task. Tale accorgimento faciliterà la rendicontazione finale delle ore suddivise per membro e per ruolo, al termine di ciascuno sprint. \

  Per quanto concerne l’approvazione dei documenti, si invita a menzionare l’account di tutti i verificatori#super("G") nei commenti associati alla task, al fine di sollecitare la revisione e approvazione. Sarà cura di uno dei membri con ruolo di verificatore#super[G]#super("G") eseguire la verifica richiesta nel minor tempo possibile. \

  In merito all’assegnazione e alla rotazione dei ruoli per il prossimo sprint, il _Team_ ha deliberato di mantenere invariati alcuni incarichi per garantire continuità rispetto al lavoro già svolto. In particolare, si è deciso di confermare due analisti#super("G") che avevano già ricoperto tale ruolo nello sprint precedente, così da agevolare l’inserimento e il lavoro dei nuovi componenti che assumeranno il medesimo ruolo nel prossimo sprint. \

  == 2.3 Assegnazione ruoli fino al giorno 24-04-2025
  Ai componenti del Team vengono assegnati i seguenti ruoli fino alla data del *24 aprile 2025* (24-04-2025):

  *#p.nicolo *→ Analista#super[G]\
  *#p.mattia *→ Responsabile#super[G]\
  *#p.sebastiano *→ Amministratore#super[G]\
  *#p.nicholas *→ Analista#super[G]\
  *#p.matteo *→ Analista#super[G]\
  *#p.alex *→ Verificatore#super[G]\
  *#p.stefano *→ Analista#super[G]\
  *#p.ramona *→ Verificatore#super[G]\ 

  #pagebreak()
  = 3. Esiti della riunione
  La riunione si conclude con l’assegnazione dei ruoli fino alla prossima riunione del _Team_ e con l’invito a implementare sin da subito quanto emerso nel corso della discussione, in particolare per quanto riguarda un utilizzo più efficace del software *Jira* nella gestione del progetto, delle task e delle relative tempistiche.
  
  Nei prossimi giorni il nuovo responsabile#super[G]#super("G"), *#p.mattia*, assegnerà alcuni compiti specifici e relative decisioni circa le prossime azioni da intraprendere.
  Verranno definite, tramite i canali di comunicazione del _Team_, le prossime riunioni interne. \

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D14], [Decisione di confermare 2 analisti dello sprint precedente per garantire continuità al lavoro svolto],
    [D15], [Decisione circa il menzionare i verificatori per approvazione dei documenti],
    [D16], [Assegnazione dei ruoli e compiti fino al 24-04-2025],
    [A14], [Migliorare nell’assegnazione delle task a tutti i membri del _Team_.],
    [A15], [Migliorare nella gestione e registrazione delle tempistiche per ogni task da parte di tutti i membri del _Team_.],
    [DOC15], [Stesura del Verbale Interno del 11-04-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
