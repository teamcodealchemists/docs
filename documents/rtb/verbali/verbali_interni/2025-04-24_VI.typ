#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "24/04/2025"
#let titolo = titolo + data
#let status = "Da Approvare"
#let versione = "1.0.0"
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

    [1.0.0], [28/04/2025], [-], [S. Marana], [Approvazione del documento],
    [0.1.0], [28/04/2025], [N. Moretto], [S. Marana], [Prima stesura del documento],

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
    In data *24 aprile 2025*, dalle ore *15:00* alle ore *16:30*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta, alla fine del secondo sprint, per fare il punto della situazione, per discutere le attività da intraprendere e per definire i ruoli e le responsabilità di ciascun membro del team. \

    == 1.1 Ordine del Giorno
    + Discussione sui lavori svolti durante lo sprint RTB 2
    + Analisi di criticità emerse
    + Definizione del prossimo sprint e delle attività da intraprendere
    + Definizione dei ruoli e delle responsabilità di ciascun membro del team
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicholas* e verificato da *#p.sebastiano*.

  == 2.1 Lavori svolti durante lo sprint RTB 2
  Durante il secondo sprint, il team ha lavorato su diverse attività. Ogni membro del team ha avuto due minuti di tempo per presentare le attività svolte e i risultati ottenuti. Per praticità, nel presente verbale è stato deciso di suddividere le attività svolte in attività svolte dai vari ruoli e non in base ai membri del team. \

  === 2.1.1 Lavori svolti dal responsabile#super("G")
  Il responsabile#super("G") si è occupato di coordinare le attività del team e di monitorare l'andamento dei lavori. Ha inoltre partecipato attivamente alla definizione delle attività da intraprendere e ha fornito supporto ai membri del team nella risoluzione di eventuali problematiche. \
  Si è occupato della comunicazione esterna e interna, e si è occupato di redigere il *Piano di Progetto*#super("G"), documento fondamentale per la pianificazione delle attività del team. \

  === 2.1.2 Lavori svolti dall'amministratore#super("G")
  L'amministratore#super("G") ha il compito di gestire le varie attività del team e di coordinare le attività di sviluppo. Ha partecipato attivamente alla definizione delle attività da intraprendere e ha fornito supporto ai membri del team nella risoluzione di eventuali problematiche. \
  Si è occupato della gestione delle repository#super("G") di progetto e del loro sviluppo dal punto di vista tecnico e dinamico. Ha inoltre redatto il *Piano di Qualifica*#super("G"), documento volto a definire le modalità di qualifica e verifica del prodotto#super("G") software. \

  === 2.1.3 Lavori svolti dagli analisti
  Gli analisti, durante il secondo sprint, hanno portato a termine l'analisi dello stato dell'arte e, sulla base di quanto emerso, hanno prodotto delle scelte architetturali, presentando delle linee guida generali per quanto riguarda la progettazione del sistema, e presentando le problematiche che possono emergere. \
  Questo documento è un documento interno chiamato _Analisi complessiva_, e presente nella cartella condivisa nella piattaforma _Google Drive_ con i membri del team.

  Inoltre è stata continuata la redazione del documento di analisi dei requisiti, con l'aggiunta di nuovi requisiti scomposti e del paragrafo riguardante l'analisi dello stato dell'arte.\
  La scomposizione dei requisiti si è rivelata un'attività necessaria per una maggiore comprensione del sistema e per una migliore definizione dei requisiti stessi, dato che i requisiti iniziali erano stati presentati in modo articolato e complesso. \

  Infine è stata iniziata *l'analisi dei casi d'uso*, che ha portato alla definizione di alcuni casi d'uso e alla loro scomposizione in sotto-casi d'uso. In merito a questo, è stato sollevato un dubbio riguardante la correttezza degli stessi, dato che non sono molto in linea con l'analisi dei requisiti.\
  Questa attività è stata svolta in modo iniziale, e si prevede di analizzarli in modo più approfondito nei prossimi incontri.\

  === 2.1.4 Lavori svolti dai verificatori
  I verificatori hanno il compito di verificare la correttezza e la completezza dei documenti redatti dal team. Durante il secondo sprint, hanno verificato i vari documenti redatti dal team.\

  == 2.2 Criticità emerse
  Gli analisti hanno fin dall'inizio del secondo sprint definito una modalità di lavoro parallela per quanto riguarda architettura e analisi dei casi d'uso.\
  Dopo che alcuni membri del team hanno sollevato il dubbio circa la modalità di lavoro, gli analisti hanno difeso la loro scelta di lavoro, affermando che, in questo modo, forniranno l'architettura più giusta dato che dovrebbero prendere in considerazione molti più aspetti.\
  Tuttavia, vista la mole di lavoro, si è deciso di introdurre un nuovo ruolo nel team: il *progettista*#super("G").\

  == 2.3 Definizione del prossimo sprint
  Dopo aver ritenuto concluso il secondo sprint, il team ha deciso di iniziare a definire il terzo sprint.\
  Il terzo sprint avrà una durata di due settimane: inizierà il *26 aprile* e terminerà il *09 maggio*.\
  Si farà riferimento a questo sprint come _Sprint RTB 3_.\
  Durante il terzo sprint, il team si concentrerà principalmente *sull'analisi dei requisiti e sulla definizione dei casi d'uso*.\
  Inoltre si lavorera sulla *definizione dell'architettura del PoC*, e, se possibile, si inizierà a lavorare sulla *progettazione del PoC*.\

  === 2.3.1 Definizione dei ruoli e delle responsabilità
  Durante la riunione, il team ha discusso e definito i ruoli e le responsabilità di ciascun membro del team.\
  Come previsto dalle Norme di Progetto, il team ha ruotato i ruoli e le responsabilità in questo modo:
  - *Responsabile#super("G")*: #p.nicholas
  - *Amministratore#super("G")*: #p.mattia
  - *Analisti*: #p.nicolo, #p.matteo, #p.alex
  - *Progettisti*: #p.stefano, #p.ramona
  - *Verificatori*: #p.sebastiano

 === 2.3.2 Definizione delle attività da intraprendere
  Dopo la riunione, il responsabile#super("G") ha redatto un documento interno di indicazione delle attività di progetto, che è stato condiviso con i membri del team.\ 
  Il seguente documento è consultabile #link("https://docs.google.com/document/d/17DUWgYr5nXG_-uCSHt-M-gOob2vvhaFMKl7MoBQT39o/edit?tab=t.0")[#underline[qui]].

  
  #pagebreak()
  = 3. Esiti della riunione
  La riunione si conclude con l’assegnazione dei compiti e la definizione delle decisioni e azioni intraprese, ponendo particolare attenzione al completamento dell’analisi dei requisiti#super("G") e dell'avvio dell'architettura#super("G"), che sarà oggetto di confronto con l’azienda nel prossimo incontro, previsto per il 5 maggio. \

  Nel periodo successivo, il team continuerà con le attività previste indicate al punto 2.3.2. \

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri.

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D20], [Decisione di confermare due analisti dello sprint precedente per garantire continuità al lavoro svolto],
    [D21], [Assegnazione dei ruoli e delle responsabilità ai membri del team],
    [D22], [Decisione delle attività da intraprendere per il prossimo sprint],
    [DOC17], [Stesura del Verbale Interno del 24-04-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
