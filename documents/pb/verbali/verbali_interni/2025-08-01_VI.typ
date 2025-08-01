#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "01/08/2025"
#let titolo = titolo + data
#let status = "In Redazione"
#let versione = "0.1.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.sebastiano,
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
    //[1.0.0], [01/08/2025], [-], [S. Speranza], [],
    [0.1.0], [01/08/2025], [],  [S. Speranza], []

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
    In data *13 giugno 2025*, dalle ore *14:30* alle ore *15:30*, si è svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è tenuta a metà del sesto sprint#super[G] per fare il punto della situazione e discutere le prossime attività da intraprendere.

== 1.1 Ordine del Giorno
  + Discussione sui lavori svolti durante la prima settimana dello sprint#super[G] RTB#super[G] 6.
  + Analisi delle criticità emerse.
  + Valutazione dello stato di avanzamento del lavoro.
  + Contatti con l'azienda e il professore.
    
  #pagebreak()
= 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicholas* e verificato da *#p.mattia*. La riunione è stata moderata dal responsabile *#p.stefano*.\

== 2.1 Lavori svolti durante lo sprint RTB 6
  Nell'ambito della prima settimana di questo sprint#super[G], il team si è concentrato sullo sviluppo del PoC e sul miglioramento del documento di Analisi dei Requisiti.\

=== 2.1.1 Lavoro svolto dall'analista e dal progettista
  Ora il documento “Analisi dei Requisiti” è pronto per l'approvazione da parte del proponente.
  L'analista, con l'aiuto del progettista, ha completato i requisiti e i casi d'uso sulla base delle linee guida ricevute dall'ultimo incontro con il Professore Cardin. È stato rimosso il sistema come attore dei casi d'uso, in quanto i casi d'uso riflettono le azione compiute da parte dell'utente. \  
  Durante questo lavoro, il progettista ha sollevato alcune scelte di progettazione fatte precedentemente e, sulla base dei nuovi requisiti e casi d'uso, ha apportato alcune modifiche per semplificare e/o chiarire degli aspetti della progettazione per renderla conforme con i requisiti e i casi d'uso.\
  Nei prossimi giorni il progettista renderà effettive queste modifiche e le fornirà ai programmatori per l'implementazione.

=== 2.1.2 Lavoro svolto dai programmatori
  I programmatori durante questa settimana hanno riscontrato diversi problemi: non conoscendo le tecnologie hanno dovuto documentarsi esaustivamente, come già previsto in precedenza. Nonostante questo, tuttavia, va considerato che sono tecnologie e modalità di lavoro che nessuno all'interno del team ha mai affrontato in precedenza. Dunque, anche dopo una preparazione teorica, la prima implementazione è risultata comunque lenta, auspicando però un'accelerazione nel momento in cui le tecnologie verrano conosciute e padroneggiate meglio.

  Fino ad ora i programmatori hanno cercato di capire come strutturare la repository, ed è stato inoltre fatto il setup di tutta l'infrastruttura.\
  È stata fatta una divisione del lavoro tra i programmatori, che ha portato alle seguenti realizzazioni:
  - Iniziato il documento per i test;
  - Studiato MongoDB, e creati i primi database;
  - Iniziata la logica di business del servizio di inventario;
  - Implementato Docker, il quale funziona completamente.

  I programmatori sono consapevoli di questo rallentamento dovuto allo studio e all'implementazione di queste nuove tecnologie, e alla sessione d'esami appena iniziata.\ Per questo è stato richiesto un contributo anche da parte degli altri membri che non sono programmatori. 
  Per quanto possibile, avere un contributo anche dagli altri membri permette di velocizzare i tempi di implementazione, e quindi anche di consegna del PoC.

== 2.2 Definizione delle attività da intraprendere
  Il responsabile ha accolto la richiesta dei programmatori, e la settimana prossima ci sarà qualche programmatore in più che si occuperà del PoC. 
  Si procederà principalmente con lo sviluppo del PoC, e, se serve, con la scrittura della documentazione.

== 2.3 Contatti con l'azienda e il professore
  È stato deciso di contattare il Professore Cardin per informarlo dell'aggiornamento dell'AdR e per richiedere un incontro per discutere su quanto modificato.

  Infine è stato deciso di contattare anche M31 per chiedere un'approvazione dei soli requisiti e per aggiornarli sullo stato del PoC.
  
  #pagebreak()
= 3. Esiti della riunione
  La riunione si è conclusa con l'assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante la prossima settimana, come indicato al punto *2.2* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.


// DA SISTEMARE
  #pagebreak()
= 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D34], [Decisione di aumentare ulteriormente il numero di programmatori per velocizzare lo sviluppo del PoC.],
    [D35], [Decisione di contattare il Prof. Cardin per informarlo dell'aggiornamento dell'AdR e richiedere un incontro.],
    [D36], [Decisione di contattare M31 per chiedere un'approvazione dei requisiti e aggiornamenti sullo stato del PoC.],
    [DOC26], [Stesura del Verbale Interno del 13-06-2025.],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
