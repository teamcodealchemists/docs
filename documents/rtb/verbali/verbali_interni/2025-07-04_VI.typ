#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "04/06/2025"
#let titolo = titolo + data
#let status = "Non approvato"
#let versione = "0.1.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.nicholas,
  p.matteo,
  p.ramona,
  p.alex
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [0.1.0], [06/07/2025], [A. Shu],[N. Bolzon], [Stesura del verbale interno]

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
  = 1. Informazioni generali
    In data *4 luglio 2025*, dalle ore *14:30* alle ore *15:00*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta, alla fine del settino sprint, per fare il punto della situazione e capire lo status di avanzamento delle attività intraprese. \

    == 1.1 Ordine del Giorno
    + Discussione stato avanzamento lavori
    + Organizzazione e discussione circa future deadline
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.alex* e verificato da *#p.nicolo*. \

  == 2.1 Lavori in svolgimento durante lo sprint RTB#super[G] 4
  Nel settimo sprint il team ha deciso di dividersi i compiti del POC, i compiti suddivisi sono : Setup API Gateway, Setup Nats Jetstream, Creazione microservizio inventario aggregato, Creazione Microservizio di ordine e Setup Database Ordine \

  === 2.1.1 Lavori in svolgimento dal responsabile#super[G]
  Il responsabile#super[G] si sta occupato di coordinare le attività del team e di monitorare l'andamento dei lavori. Ha inoltre partecipato attivamente la creazione del microservizio Ordine.

  === 2.1.2 Lavori svolti dall'amministratore#super[G]
  L'amministratore#super[G] ha il compito di gestire le varie attività del team e di coordinare le attività di sviluppo. \
  Inoltre si è occupato a risolvere i problemi presenti nei casi d'uso e nei requisiti dell’Analisi dei Requisiti#super[G]

  === 2.1.3 Lavori svolti dal programmatore#super[G]
  I programmatori#super[G] hanno completato Creazione Microservizio di ordine, Setup Database Ordine e Creazione microservizio inventario aggregato, mentre per i compiti Setup API Gateway e Setup Nats Jetstream sono ancora in corso, e si provede di completarlo nella prima metà dell'ottavo sprint.

  == 2.2 Criticità emerse
  Alcuni colleghi sono state influenzate dalla sessione di esami estiva, perciò erano impossibilitati nello sviluppo del POC.\


  == 2.3 Organizzazione future deadline
  Si è discusso di fissare la deadline per la conclusione del POC nel prossimo sprint. Nella prima metà dello sprint si prevede di concludere gli ultimi compiti del POC e fissare una data con l'azienda *M31*; nella seconda metà, invece, si procederà con il completamento della stesura di tutti i documenti, infine, con la richiesta di un incontro per la candidatura al RTB #super[G].
  
  #pagebreak()
  = 3. Esiti della riunione
  La riunione si è conclusa con il ripianificamento delle tempistiche, basato sull'avanzamento attuale.

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D34], [Terminare il POC nella prima metà dell'ottavo sprint],
    [D35], [Effettuare un incontro con M31 dopo la conclusione del POC],
    [D36], [Finire la stesura dei documenti],
    [D37], [Richiesta di candidatura del RTB],
    [DOC26], [Stesura del verbale interno in data 04/07/2025]
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
