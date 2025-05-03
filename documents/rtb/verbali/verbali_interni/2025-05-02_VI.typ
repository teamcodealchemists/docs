#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "02/05/2025"
#let titolo = titolo + data
#let status = "Da Approvare"
#let versione = "0.1.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.nicholas,
  p.matteo,
  p.alex,
  p.stefano,
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

    [1.0.0], [--/05/2025], [-], [-], [Approvazione del documento],
    [0.1.0], [03/05/2025], [N. Moretto], [-], [Prima stesura del documento],

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
    In data *02 maggio 2025*, dalle ore *15:00* alle ore *16:00*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta a una settimana dall'inizio del terzo sprint, per fare il punto della situazione sulle attività svolte e per la preparazione alle prossime attività esterne. \

    == 1.1 Ordine del Giorno
    + Discussione sui lavori svolti durante la settimana.
    + Pianificazione delle attività da intraprendere durante la prossima settimana.
    + Materiale da portare all'incontro con l'azienda e Diario di Bordo.
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicholas* e verificato da *#p.sebastiano*.

  == 2.1 Lavori svolti durante la prima settimana di RTB 3
  Durante questa settimana, il team ha lavorato su diverse attività. Ogni sotto-responsabile#super[G] dei vari gruppi di lavoro ha avuto due minuti di tempo per presentare le attività svolte e i risultati ottenuti. Per praticità, nel presente verbale è stato deciso di suddividere le attività svolte in attività svolte dai vari ruoli e non in base ai membri del team. \

  === 2.1.1 Lavori svolti dagli analisti
  Gli analisti hanno proseguito con l'analisi dei casi d'uso. Stanno considerando quanti più casi possibili, in modo da arrivare ad avere un quadro completo. \

  Durante la riunione è emerso un dubbio riguardante la correttezza dei casi d'uso, dato che non sono molto in linea con l'analisi dei requisiti#super[G]. Alcuni requisiti#super[G] sono opzionali, mentre gli analisti, per i casi d'uso che stanno considerando, ritengono che alcuni di questi siano necessari. Hanno portato l'esempio delle tipologie di utente (requisito indicato come opzionale dall'azienda proponente): considerando che arrivano degli ordini#super[G] di magazzini, si può supporre di prevedere un utente di tipo cliente#super[G], oppure di gestire il tutto dall'esterno.\
  Dopo aver posto il dubbio, i progettisti hanno illustrato il loro punto di vista, schiarendo le idee agli analisti, che continueranno a lavorare in modo parallelo.\

  === 2.1.2 Lavori svolti dai progettisti
  I progettisti hanno iniziato a lavorare sull'architettura del PoC. Dopo alcune proposte, hanno scelto di presentare quella più efficiente dal punto di vista del tempo di esecuzione e dalle prestazioni.\

  Hanno previsto un *Client (esterno)*, in cui l'utente può interagire con il sistema.\

  Hanno poi presentato un *API Gateway*, che si occupa di gestire le richieste e le risposte tra il Client e i vari microservizi#super[G]. L'API Gateway implementa un sistema di autenticazione#super[G], che permette di accedere al sistema solo a utenti registrati, e anche un sistema di caching, che permette di memorizzare le risposte delle richieste più frequenti, in modo da velocizzare le operazioni.\

  Poi è prevista una *Gestione Centralizzata (cloud)*, che si occupa di gestire i vari microservizi#super[G] essenziali per la gestione distribuita del sistema.\
  Hanno un'architettura esagonale, e comunicano tra di loro tramite comunicazione asincrona, mediante un message broker quale _NATS_.\

  Poi ci sono le *copie dei magazzini (cloud)*, che dispongono di un servizio di sincronizzazione e di un singolo database. \
  Il servizio di sincronizzazione si occupa di aggregare e mantenere sincronizzati i dati dei microservizi#super[G] locali in una copia _read-only_ su cloud: serve per avere i dati a portata di mano, avendo quindi una bassa latenza. \
  Tuttavia, il sistema centralizzato non può modificare il database di questa copia, ma deve inoltrare le richieste ai magazzini fisici.\

  Infine, ogni *magazzino (locale)* ha i microservizi#super[G] in locale per far funzionare il sistema anche offline.\

  === 2.1.3 Materiale da portare all'incontro con l'azienda
  È stato deciso di portare all'incontro con l'azienda il documento prodotto#super[G] dai progettisti, che contiene l'architettura del PoC.\
  Il documento in oggetto sarà migliorato e reso più specifico riguardo l'architettura e le tecnologie che saranno utilizzate.\

  === 2.1.4 Diario di Bordo
  Sulla base del prodotto#super[G] di questa riunione sarà redatto il Diario di Bordo, che conterrà le informazioni relative alle attività svolte e ai risultati ottenuti durante la settimana.\
  Il Diario di Bordo sarà redatto da *#p.nicholas* e verificato da *#p.sebastiano*, e verrà presentato al *#p.tullio* Lunedì 5 maggio, alle ore 12:30.

  == 2.2 Risoluzione delle criticità
  Riguardo le criticità emerse e menzionate nel paragrafo 2.1.1, la discussione ha portato a una possibile soluzione: è stato pensato di inserire gli ordini#super[G] manualmente, tramite l'amministratore#super[G] che può individuare gli ordini#super[G]. In un'ottica più ampia, si prevederebbe di avere un sistema di gestione degli ordini#super[G] che arrivano dall'esterno in modo automatico.\
  Gli analisti hanno quindi deciso di avere due tipi di utente: un *amministratore#super[G] globale*, che ha accesso completo al sistema, e un *supervisore locale*, che ha accesso completo a uno o più magazzini locali.\
  
  #pagebreak()
  = 3. Esiti della riunione
  La riunione si conclude con l’assegnazione dei compiti e la definizione delle decisioni e azioni intraprese, ponendo particolare attenzione al completamento dell’analisi dei requisiti#super[G]#super("G") e del completamento dell'architettura#super("G"), che sarà oggetto di confronto con l’azienda nel prossimo incontro, previsto per il 5 maggio. \

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri.

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D23], [Decisione di avere due tipi di utente: amministratore#super[G] globale e supervisore locale],
    [D24], [Miglioramento del documento prodotto#super[G] dai progettisti, per presentarlo all'azienda],
    [DOC18], [Stesura del Verbale Interno del 02-05-2025],
    [DOC19], [Stesura del Verbale Esterno del 05-05-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
