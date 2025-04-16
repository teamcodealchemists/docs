#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "15/04/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.alex,
  p.matteo,
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

    [1.0.0], [16/04/2025], [-], [R. Zangla], [Approvazione del documento],
    [0.1.0], [15/04/2025], [N. Bolzon], [R. Zangla], [Prima stesura del documento],

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
    In data *15 aprile 2025*, dalle ore *15:00* alle ore *16:30*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchmists_.\
    La riunione si è svolta, all'inizio del secondo sprint, a seguito di alcuni consigli ricevuti da parte dell'azienda _M31_ tramite i canali di comunicazione, secondo il seguente ordine del giorno:

    == 1.1 Ordine del Giorno
    + Analisi di criticità emerse sulla redazione dei verbali;
    + Avanzamento lavori sull'analisi dello stato dell'arte;
    + Utilizzo di _git-flow_;
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicolo* e come revisore *#p.ramona*.

  == 2.1 Analisi di criticità emerse sulla redazione dei verbali
  A seguito di alcuni suggerimenti ricevuti in merito alla redazione dei verbali precedenti, successivamente trasmessi all’azienda per l’approvazione esterna, il _Team Code Alchemists_ ha definito una serie di nuove linee guida per la stesura dei verbali, con particolare attenzione a quelli destinati a interlocutori esterni. \

  Nel corso della riunione, il Verbale Esterno del 04-04-2025 è stato revisionato in conformità alle indicazioni ricevute e nuovamente inviato all’azienda per l’approvazione. \

  Tra le nuove disposizioni adottate, si evidenziano quelle riportate nel sotto-paragrafo seguente, con specifico riferimento all’introduzione di politiche di comunicazione scritta volte a garantire chiarezza, coerenza e professionalità, in particolare nei contesti di comunicazione esterna.

  === 2.1.1 Adozione di politiche di comunicazione
  Nei verbali, in particolare quelli destinati all'esterno, è opportuno attenersi alle seguenti linee guida comunicative:
  - Evitare di menzionare i docenti, salvo in casi eccezionali e motivati. \
  - Non riportare quanto _M31_ ci consiglia in modo informale. \
  - Non includere informazioni, decisioni o attività riferite ad altri gruppi. \
  - Limitare l’uso di espressioni come "consiglia", "indica", e simili, per mantenere uno stile oggettivo e professionale. \

  == 2.2 Avanzamento lavori sull'analisi dello stato dell'arte
  È stato presentato il lavoro relativo all’analisi dello stato dell’arte, completato nella giornata di ieri dal gruppo degli analisti, sulla base delle ricerche effettuate e dei risultati emersi durante lo sprint precedente. Il documento finale, intitolato *"Analisi complessiva"*, è attualmente disponibile e condiviso con tutti i membri del _Team_ attraverso la piattaforma _Google Drive_.

  Contestualmente, sulla scorta delle evidenze emerse dall’analisi, il gruppo procederà ora con lo studio di una possibile architettura del sistema e, parallelamente, con l’avvio dell’analisi dei casi d’uso.

  == 2.2 Utilizzo di _git-flow_
  È stata avviata una discussione sull’adozione del modello *Git Flow* per la gestione delle repository di progetto. Nel corso dell'incontro è stato illustrato il funzionamento del flusso, con particolare attenzione alla struttura basata sui rami principali _main_ e _develop_, e all’impiego di branch secondari dedicati allo sviluppo delle singole funzionalità. È stato chiarito come ciascuna tipologia di ramo risponda a uno scopo specifico all’interno del ciclo di vita del software, consentendo una gestione ordinata e controllata del processo di sviluppo. \
  È stata inoltre raccomandata, ove possibile, l’associazione dei branch relativi a nuove funzionalità alle corrispondenti issue tracciate su *Jira*, adottando una convenzione di nomenclatura coerente _(ad esempio: *feature/SPRINT-55-nome-feature*)_. \
  
  Infine, sono state evidenziate le _best practice_ per la creazione, l’unione e la cancellazione dei rami, con l’obiettivo di promuovere una collaborazione efficace e strutturata all’interno del team.

  #pagebreak()
  = 3. Esiti della riunione
  La riunione si conclude con l’assegnazione dei compiti e la definizione delle decisioni e azioni intraprese, ponendo particolare attenzione all’avvio dell’analisi dei requisiti#super("G") del capitolato#super("G"), che sarà oggetto di confronto con l’azienda nel prossimo incontro, previsto indicativamente tra il 28 e il 30 aprile. La data sarà definita tenendo conto delle chiusure aziendali e universitarie in occasione delle festività pasquali e della Festa della Liberazione. \

  Nel periodo successivo, gli analisti proseguiranno con le attività indicate al punto _*2.2*_ del presente verbale. \

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri.

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D17], [Decisione circa la redazione dei verbali esterni],
    [D18], [Decisione circa l'utilizzo della nomenclatura e sull'uso dei branch di _git-flow_],
    [D19], [Contattare azienda _M31_ per incontro],
    [A16], [Adozione di un file di politiche di comunicazione legato alla redazione dei Verbali Esterni],
    [DOC16], [Stesura del Verbale Interno del 15-04-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
