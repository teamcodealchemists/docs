#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale Interno del "
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
    
    [1.0.0], [18/08/2025], [-], [M. Dalla Pozza], [Revisione del documento],
    [0.1.0], [18/08/2025], [N. Moretto], [M. Dalla Pozza], [Prima stesura del documento]

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

#set heading(numbering: "1.1.")

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  block(it)
}

// INSERIRE QUI CONTENUTO
  = Informazioni generali
    In data *18 agosto 2025*, dalle ore *09:30* alle ore *10:30*, si è svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta al termine del decimo sprint#super[G] per fare il punto della situazione, discutere le prossime attività da intraprendere e definire ruoli e responsabilità di ciascun membro del team. \

    == 1.1 Ordine del Giorno
    + Creazione e invio del Diario di Bordo al #p.tullio.
    + Discussione sui lavori svolti durante lo sprint#super[G] PB#super[G] 10.
    + Analisi delle criticità emerse.
    + Valutazione dello stato di avanzamento del lavoro.
    + Pianificazione del prossimo sprint#super[G] e delle attività da intraprendere.
    + Assegnazione di ruoli e responsabilità ai membri del team.
    
  #pagebreak()
  = Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicholas* e verificato da *#p.mattia*. \

  == Redazione e invio del Diario di Bordo
  Inizialmente, come primo momemento dell'incontro odierno, è stato redatto il Diario di Bordo circa quanto svolto nell'ultima settimana di lavoro e successivamente inviato al #p.tullio.\

  == Lavori svolti durante lo sprint PB 9
  Nel decimo sprint#super[G], il team ha focalizzato l’attenzione sulla progettazione dettagliata dei microservizi. Di seguito è presentato il livello di completamento delle attività.

  === Progettazione dettagliata dei microservizi
  I microservizi completati nella loro fase progettuale sono:
  - Inventory;
  - Inventory Aggregate;
  - Orders;
  - State;
  - Cloud State.

  === Stesura e miglioramento dei documenti
  Il documento di Analisi dei Requisiti#super[G] è stato migliorato sulla base delle osservazioni del #p.cardin emerse durante la revisione della fase RTB#super[G].
  È stato inoltre aggiornato il Piano di Progetto#super[G], fondamentale per la rendicontazione e il monitoraggio delle attività.
  Infine, è stata avviata la stesura del documento di Specifica Tecnica, destinato a definire in dettaglio l’architettura del sistema.

  == Analisi delle criticità e valutazione avanzamento del lavoro
 Durante la riunione non sono emersi rallentamenti significativi nello svolgimento delle attività.
  Una criticità riscontrata in fase di progettazione riguarda la complessità della saga dell’ordine, che richiede il monitoraggio di eventi concorrenti e la gestione dei conflitti derivanti dalle loro interazioni.

  Per ottimizzare l’avanzamento del lavoro, il team ha deciso di assegnare task specifiche a ciascun membro, con scadenza fissata a metà sprint (venerdì *22 agosto*). Tale approccio mira a favorire una maggiore responsabilizzazione individuale, a migliorare la gestione delle attività e a rendere più trasparente il monitoraggio dei progressi. Le task sono riportate nel documento di indicazioni dello Sprint#super[G] PB#super[G] 11, condiviso con il team tramite la piattaforma _Google Drive_.

  == Definizione del prossimo sprint
  Con la conclusione del decimo sprint, il team ha proceduto all’assegnazione di ruoli e responsabilità ai membri, come riportato nella sezione successiva del presente documento.
  L’undicesimo sprint, della durata di due settimane, avrà inizio il *18 agosto* e terminerà il *29 agosto*. Esso sarà identificato come Sprint#super[G] PB#super[G] 11 e sarà focalizzato principalmente sulla progettazione e sull’implementazione dell’*MVP*.

  === Assegnazione di ruoli e responsabilità ai membri del team
  Durante la riunione, il team ha discusso e assegnato i ruoli e le responsabilità di ciascun membro, conformemente a quanto stabilito nelle Norme di Progetto. In linea con tali indicazioni, la rotazione dei ruoli è avvenuta come segue:
  - *Responsabile#super[G]*: #p.nicholas.
  - *Programmatori#super[G]*: #p.sebastiano, #p.matteo, #p.ramona.
  - *Progettisti#super[G]*: #p.nicolo, #p.alex, #p.stefano.
  - *Verificatore#super[G]*: #p.mattia.

  === Definizione delle attività da intraprendere
  Al termine della riunione, il team ha discusso circa le attività da svolgere all'interno dell'undicesimo sprint. Attività che riguardano principalmente l'inizio della fase di PB del progetto.
  
  #pagebreak()
  = Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.4* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.

#pagebreak()
  = Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D43], [Portare a tre il numero dei progettisti e dei programmatori, in modo da terminare la progettazione dettagliata e al tempo stesso di iniziare la fase di programmazione.],
    [A32], [Proseguire e concludere con la progettazione dettagliata dei microservizi rimanenti.],
    [A33], [Iniziare con la programmazione dell'MVP],
    [DOC32], [Stesura del verbale interno in data 18/08/2025]
  )

  #show: decision_table.with(
  voci: voci_tabella
  )
