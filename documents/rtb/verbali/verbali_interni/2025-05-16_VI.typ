#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "16/05/2025"
#let titolo = titolo + data
#let status = "Revisione"
#let versione = "0.1.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.nicholas,
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

    [0.1.0], [19/05/2025], [M. Pretto], [Prima stesura del documento],

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
    In data *16 maggio 2025*, dalle ore *14:30* alle ore *15:00*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta, all'interno del quarto sprint, per fare il punto della situazione e capire lo status di avanzamento delle attività intraprese. \

    == 1.1 Ordine del Giorno
    + Discussione stato avanzamento lavori
    + Analisi di problematicità emerse
    + Organizzazione e discussione circa future deadline
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.matteo* e verificato da *#p.sebastiano*. \

  == 2.1 Lavori in svolgimento durante lo sprint RTB 4
  Nell'ambito del quarto sprint il team ha lavorato principalmente su due campi principali: lo studio dell'architteura e sulla stesura dei casi d'uso. \

  === 2.1.1 Lavori in svolgimento dal responsabile#super[G]
  Il responsabile#super[G] si sta occupato di coordinare le attività del team e di monitorare l'andamento dei lavori. Ha inoltre partecipato attivamente alla definizione delle attività da intraprendere e ha fornito supporto ai membri del team nella risoluzione di eventuali problematiche: con i progettisti ha continuato l'attività di definizione dell'architettura per il PoC#super[G]. \
  Si è inoltre occupato della comunicazione esterna e interna. \

  === 2.1.2 Lavori svolti dall'amministratore#super[G]
  L'amministratore#super[G] ha il compito di gestire le varie attività del team e di coordinare le attività di sviluppo. Ha partecipato attivamente alla definizione delle attività da intraprendere e ha fornito supporto ai membri del team nella risoluzione di eventuali problematiche: si è interfacciato con gli analisti per l'analisi dei casi d'uso.  \
  Ha inoltre studiato autonomamente i vari ambienti di sviluppo (ad esempio NATS) cercando di capire il suo funzionamento. \

  === 2.1.3 Lavori svolti dagli analisti
  Gli analisti, durante il quarto sprint hanno continuato *l'analisi dei casi d'uso*. Tale attività si è resa più dispendiosa del previsto. Si è cercato di adottare delle migliorie in due diversi modalità: migliorando la leggibilità della tabella e rendendo i requisiti meno prolissi cercando, inoltre, di evitare ridondanza. \
  Questa attività non è completata in quanto i casi d'uso sono molti e sono complessi. \

  === 2.1.4 Lavori svolti dai progettisti
  I progettisti hanno lavorato principalmente sulla *progettazione architetturale del PoC*#super[G].\
  Il loro principale lavoro è stato quello di effettuare le ultime modifiche all'archittetura ad alto livello e di finire la stesura del *Processo di Progettazione*. \

  Il lavoro non è ancora concluso, ma è a buon punto. Ci si aspetta di poterlo terminare entro la fine di questo sprint. \

  === 2.1.5 Lavori svolti dai verificatori
  Il verificatore ha il compito di verificare la correttezza e la completezza dei documenti redatti dal team. Durante il quarto sprint, sta verificando i vari documenti redatti dal team.
  Ha inoltre continuato a redarre il *Piano di Qualifica*#super[G], documento volto a definire le modalità di qualifica e verifica del prodotto#super[G] software. \

  == 2.2 Criticità emerse
  Gli analisti, credendo che il lavoro potesse essere svolto in meno tempo, rilevano la criticità dell'essere leggermente in ritardo con il lavoro da loro svolto e richiedono più tempo per poterlo completare.\


  == 2.3 Organizzazione future deadline
  Si è discusso circa future deadline da fissare nelle prossime settimane. E' emersa la volontà di fissare nei prossimi giorni un incontro con il Professor Cardin per discutere in merito all'avanzamento dei lavori. \
  Ulteriori deadline verranno fissate dopo l'incontro con l'azienda *M31* che si terrà in data *21 maggio* alle ore *10.00*.\


 === 2.3.1 Definizione delle attività da intraprendere
 Durante la riunione sono state pianificate delle attivià da intraprendere per superare i problemi riscontrati dai diversi sotto-team. Vi è stato inoltre un riallineamento fra il lavoro svolta dai progettisti e fra quello svolto fra gli analisti.\

  
  #pagebreak()
  = 3. Esiti della riunione
  La riunione si conclude con la risoluzione di alcuni problemi riscontrati e con il riallinemento delle attività da completare, ponendo particolare attenzione al completamento dell'analisi dei casi d'uso e della progettazione architetturale.\

  In questo periodo il team continuerà con le attività previste indicate al punto 2.3.2. \

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri.\

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D26], [Decisione delle attvità da intraprendere per risolvere i problemi riscontrati e conseguentemente velocizzare la seconda parte del quarto sprint],
    [DOC21], [Stesura del Verbale Interno del 16-05-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
