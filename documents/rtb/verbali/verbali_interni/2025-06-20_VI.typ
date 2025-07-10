#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "20/06/2025"
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
  p.ramona,
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.0.0], [22/06/2025], [-], [M. Dalla Pozza], [Approvazione del documento],
    [0.1.0], [21/06/2025], [M. Pretto], [M. Dalla Pozza], [Prima stesura del documento]

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
    In data *20 giugno 2025*, dalle ore *14:30* alle ore *15:30*, si è svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è tenuta al termine del sesto sprint#super[G] per fare il punto della situazione, discutere le prossime attività da intraprendere e definire ruoli e responsabilità di ciascun membro del team.

== 1.1 Ordine del Giorno
  + Discussione sui lavori svolti durante lo sprint#super[G] RTB#super[G] 6.
  + Analisi delle criticità emerse.
  + Valutazione dello stato di avanzamento del lavoro.
  + Pianificazione del prossimo sprint#super[G] e delle attività da intraprendere.
  + Assegnazione di ruoli e responsabilità ai membri del team.
    
  #pagebreak()
= 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.matteo* e verificato da *#p.nicolo*. La riunione è stata moderata dal responsabile uscente, *#p.stefano*.\

== 2.1 Lavori svolti durante lo sprint RTB 6
  Nell’ambito del sesto sprint#super[G], il team si è concentrato principalmente sul miglioramento e terminazione del documento di Analisi dei Requisiti, sull’elaborazione della progettazione architetturale dettagliata e sull’avanzamento dello sviluppo del PoC _(Proof of Concept)_.\

=== 2.1.1 Miglioramento e terminazione analisi dei requisiti
  Per quanto riguarda il miglioramento del documento di Analisi dei Requisiti, il team ha svolto un lavoro di revisione e riscrittura di diversi requisiti, con l’obiettivo di renderli più granulari e privi di ambiguità. Tale attività, iniziata già nello sprint precedente è stata portata a termine alla fine di quest'ultimo. E' stato ricevuto inoltre un feedback positivo da parte dell'azienda.

=== 2.1.2 Progettazione architetturale dettagliata e successiva sospensione
  Nello sprint appena concluso è proseguita anche la progettazione architetturale dettagliata, anch'essa intrapresa all'inizio dello scorso sprint. A seguito, però, di un incontro del *#p.tullio* è emersa la poca importanza di tale attività in questa fase del progetto. Si è quindi deciso di interromperla.
  
=== 2.1.3 Sviluppo del PoC
  Un importante lavoro durante questo sprint è stato svolto dei numerosi programmatori. Vi è stato infatti un completamento del microservizio di 'inventario' con il collegamento al suo relativo database. E' stato inoltre impostato uno standard per le richieste dati fra diversi microservizi. Infine, oltre allo studio dell'API Gateway, è stata parallelamente intrapresa l'attività di sviluppo della tecnologia NATS.

== 2.2 Analisi delle criticità e valutazione avanzamento del lavoro
  Oltre alla ormai ricorrente difficoltà riguardante il rallentamento dei lavori dovuto alla sessione d'esami in corso, è emersa la difficoltà pratica nell'apprendimento delle nuove tecnolegie. Conseguentemente si rileva la difficoltà nel creare codice super efficiente.

== 2.3 Definizione del prossimo sprint
  Dopo aver considerato concluso il quinto sprint, il team ha provveduto all’assegnazione dei ruoli e delle responsabilità ai membri, come riportato nella sezione seguente del presente documento.
  Il sesto sprint, anch’esso della durata di due settimane, avrà inizio il *23 giugno* e si concluderà il *4 luglio*. A questo sprint#super[G] si farà riferimento come Sprint#super[G] RTB#super[G] 7.

  Durante lo Sprint#super[G] RTB#super[G] 7, il team si concentrerà principalmente sul completamento del documento di *Analisi dei Requisiti*, in vista della successiva approvazione da parte dell’azienda. Proseguirà lo sviluppo del *PoC* con la sua ultimazione. Attività che richiederà un impegno significativo, come evidenziato dal numero di programmatori coinvolti in questo sprint. Parallelamente, continuerà anche la *redazione della documentazione progettuale*.

=== 2.3.1 Assegnazione di ruoli e responsabilità ai membri del team
  Durante la riunione, il team ha discusso e assegnato i ruoli e le responsabilità di ciascun membro, conformemente a quanto stabilito nelle Norme di Progetto. In linea con tali indicazioni, la rotazione dei ruoli è avvenuta come segue:
  - *Responsabile#super[G]*: #p.alex
  - *Amministratore#super[G]*: #p.nicolo
  - *Analista#super[G]*: -
  - *Progettista#super[G]*: -
  - *Programmatori#super[G]*: #p.mattia, #p.sebastiano, #p.stefano, #p.nicholas, #p.ramona
  - *Verificatore#super[G]*: #p.matteo

=== 2.3.2 Definizione delle attività da intraprendere
  Al termine della riunione, il nuovo responsabile#super[G], #p.alex, ha redatto un documento interno contenente l’elenco delle attività di progetto, successivamente condiviso con tutti i membri del team.
  
  #pagebreak()
= 3. Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.3* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.

  #pagebreak()
= 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D37], [Decisione di aumentare il numero di programmatori per velocizzare lo sviluppo del PoC],
    [A20], [Assegnazione dei ruoli per il prossimo sprint],
    [A21], [Ultimare la stesura del documento Analisi dei Requisiti per approvazione dell'azienda],
    [D38], [Decisione di effettuare un colloquio con il *#p.cardin*],
    [A22], [Proseguimento con la stesura degli altri documenti di progetto],
    [DOC27], [Stesura del Verbale Interno del 20-06-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
