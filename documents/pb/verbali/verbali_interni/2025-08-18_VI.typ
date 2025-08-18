#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "18/08/2025"
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
  p.stefano
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    
    [1.0.0], [18/08/2025], [-], [M.Dalla Pozza], [Revisione del documento],
    [0.1.0], [18/08/2025], [N.Moretto], [M.Dalla Pozza], [Prima stesura del documento]

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
    In data *18 agosto 2025*, dalle ore *09:30* alle ore *11:30*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta al termine dell'ottavo sprint#super[G] per fare il punto della situazione, discutere le prossime attività da intraprendere e definire ruoli e responsabilità di ciascun membro del team. \

    == 1.1 Ordine del Giorno
    + Creazione e invio del Diario di Bordo al #p.tullio.
    + Discussione sui lavori svolti durante lo sprint#super[G] PB#super[G] 10.
    + Analisi delle criticità emerse.
    + Valutazione dello stato di avanzamento del lavoro.
    + Pianificazione del prossimo sprint#super[G] e delle attività da intraprendere.
    + Assegnazione di ruoli e responsabilità ai membri del team.
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicholas* e verificato da *#p.mattia*. \

  == 2.1 Redazione e invio del Diario di Bordo
  Come prima cosa oggi è stato redatto il Diario di Bordo riguardante l'ultima settimana di lavoro, che è stato inviato al #p.tullio.\

  == 2.2 Lavori svolti durante lo sprint PB 10
  Nel decimo sprint#super[G] il team si è concentrato sulla progettazione dettagliata dei vari microservizi. Di seguito sarà riportato in modo dettagliato il livello di completamento delle attività.

  === 2.2.1 Progettazione dettagliata dei microservizi
  I microservizi che sono stati completati dal punto di vista progettuale sono i seguenti:
  - Inventory;
  - Inventory Aggregate;
  - Orders;
  - State;
  - Cloud State.

  === 2.2.2 Stesura e miglioramento dei documenti
  È stato migliorato il documento di Analisi dei Requisiti#super[G], sulla base delle indicazioni del #p.cardin dopo la revisione della fase RTB#super[G].\
  Inoltre è stato aggiornato il Piano di Progetto#super[G], documento importante per tenere traccia di tutta la rendicontazione delle attività.\
  Infine è stata avviata la stesura del documento di Specifica Tecnica, che definirà in dettaglio l'architettura del sistema.


  == 2.3 Analisi delle criticità e valutazione avanzamento del lavoro
  Durante la riunione non è stato evidenziato alcun rallentamento significativo delle attività.\
  Una difficoltà incontrata in fase progettuale è stata la difficoltà di progettazione della saga dell'ordine, molto complessa e articolata. Infatti implica il monitoraggio di eventi concorrenti e la risoluzione dei conflitti derivanti dalle loro interazioni. \

  Per migliorare ulteriormente l'avanzamento del lavoro, il team ha deciso di assegnare delle task specifiche ad ogni membro, che dovrà risolvere entro metà sprint (venerdì 22 agosto). Questo approccio mira a garantire una maggiore responsabilizzazione e a facilitare la gestione delle attività, aumentando la trasparenza e il monitoraggio del progresso. Le seguenti task si trovano nel documento di indicazioni dello Sprint#super[G] PB#super[G] 11, che è stato condiviso con il team tramite la piattaforma _Google Drive_.

  == 2.4 Definizione del prossimo sprint
  Dopo aver considerato concluso il decimo sprint, il team ha provveduto all’assegnazione dei ruoli e delle responsabilità ai membri, come riportato nella sezione seguente del presente documento.
  L'undicesimo sprint, anch’esso della durata di due settimane, avrà inizio il *18 agosto* e si concluderà il *29 agosto*. A questo sprint#super[G] si farà riferimento come Sprint#super[G] PB#super[G] 11. Il prossimo sprint sarà focalizzato principalmente sulla progettazione e sulla programmazione del MVP.

  === 2.4.1 Assegnazione di ruoli e responsabilità ai membri del team
  Durante la riunione, il team ha discusso e assegnato i ruoli e le responsabilità di ciascun membro, conformemente a quanto stabilito nelle Norme di Progetto. In linea con tali indicazioni, la rotazione dei ruoli è avvenuta come segue:
  - *Responsabile#super[G]*: #p.nicholas.
  - *Programmatori#super[G]*: #p.sebastiano, #p.matteo, #p.ramona.
  - *Progettisti#super[G]*: #p.nicolo, #p.alex, #p.stefano.
  - *Verificatore#super[G]*: #p.mattia.

  === 2.4.2 Definizione delle attività da intraprendere
  Al termine della riunione, il team ha discusso circa le attività da svolgere all'interno dell'undicesimo sprint. Attività che riguardano principalmente l'inizio della fase di PB del progetto.
  
  #pagebreak()
  = 3. Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.4* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.

#pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D43], [Portare a tre il numero dei progettisti e dei programmatori, in modo da terminare la progettazione dettagliata e al tempo stesso di iniziare la fase di programmazione.],
    [A32], [Proseguire e concludere con la progettazione dettagliata dei microservizi rimanenti.],
    [A33], [Iniziare con la programmazione dell'MVP],
    [DOC32], [Stesura del verbale interno in data 18/08/2025]
  )

  #show: decision_table.with(
  voci: voci_tabella
  )
  
