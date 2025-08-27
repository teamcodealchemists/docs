#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "26/08/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "2.0.0"
#let destinatario = "M31"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.alex,
  p.ramona,
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  
  [2.0.0], [27/08/2025], [_M31_], [-], [Approvazione del documento da parte di _M31_],
  [1.0.0], [26/08/2025], [N. Moretto], [M. Dalla Pozza], [Approvazione interna del documento],
  [0.1.0], [26/08/2025], [N. Bolzon],[M. Dalla Pozza], [Redazione iniziale del documento]

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

#show: firma.with(
  destinatario: destinatario
)


// INSERIRE QUI CONTENUTO
= 1. Informazioni generali
  In data *26 agosto 2025*, dalle ore *15:00* alle ore *15:45*, si è svolta, in modalità virtuale tramite la piattaforma _Microsoft Teams_, una riunione con l'azienda _M31_ per presentare lo stato attuale di avanzamento del progetto didattico.
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Moones Mobaraki
  - Cristian Pirlog
  - Luca Cossaro

== 1.1 Ordine del Giorno
 + Presentazione dello stato di avanzamento del progetto didattico.
 + Discussione relativa all'autenticazione#super[G] con ResGate.
 + Discussione relativa alla fase di testing.

#pagebreak()
= 2. Dettagli della riunione
La riunione si è tenuta in modalità online per necessità del Team _Code Alchemists_ al fine di limitare il tempo degli spostamenti e ottimizzare il tmepo di lavoro necessario per lo svolgimento dei lavori di gruppo.

== 2.1 Presentazione dello stato di avanzamento del progetto didattico
L'attuale responsabile#super[G] del team, *#p.nicholas*, ha illustrato ai rappresentanti di _M31_ lo stato di avanzamento del progetto, evidenziando sia la progettazione dettagliata sia l’implementazione. Sono stati designati i seguenti microservizi#super[G]: inventario#super[G], inventario#super[G] aggregato, ordini#super[G], ordini#super[G] aggregato, stato, stato aggregato, autenticazione#super[G], sistema centralizzato e routing.

È stata quindi presentata la *saga ordine#super[G]*, distinguendo due scenari principali:

 - *Vendite*: riserva della merce disponibile; spedizione immediata se completa, altrimenti avvio di riassortimento#super[G]; annullamento dell’ordine#super[G] in caso di indisponibilità generale.
 - *Trasferimento#super[G] Interno*: riserva della merce; creazione dell’ordine#super[G] in arrivo nel magazzino di destinazione se disponibile; annullamento e notifica al supervisore in caso contrario.

Sono stati infine illustrati i due tipi di *riassortimento*#super[G]:

 - *Ordine#super[G] non soddisfacibile*: verifica tramite ordini#super[G] aggregati e reperimento merce tramite inventario#super[G] aggregato, dal magazzino più vicino a quello più lontano.
 - *Superamento soglia critica*: controllo tramite ordini#super[G] aggregati e reperimento merce tramite inventario#super[G] aggregato, secondo lo stesso criterio di prossimità.

== 2.2 Discussione relativa all'autenticazione con ResGate
Come suggerito dal *#p.cardin*, *#p.sebastiano* ha presentato all’azienda _M31_ la proposta di utilizzo di *ResGate*, un API Gateway che fornisce anche il servizio di autenticazione#super[G].
Prima dell’implementazione, è stato definito uno standard comune per tutti i microservizi#super[G], in modo da garantire una gestione coerente e sicura delle richieste di autenticazione#super[G].

Lo studio della tecnologia si è rivelato piuttosto complesso a causa della scarsa documentazione disponibile. In sintesi, il funzionamento previsto prevede che il client invii la richiesta di autenticazione#super[G] a uno dei microservizi#super[G] del sistema. Tale microservizio#super[G], invece di rispondere direttamente al client _(cosa che potrebbe comportare rischi di sicurezza)_, inoltra la richiesta a ResGate. ResGate, tramite un token, verifica la connessione e le credenziali dell’utente. Ogni richiesta successiva verso un microservizio#super[G] viene accompagnata dal token generato da ResGate, che il microservizio#super[G] utilizza per controllare i permessi e la possibilità di accesso alle risorse richieste.

Questa soluzione è stata ritenuta valida da _M31_, anche perché consente di ridurre i tempi di sviluppo della componente di autenticazione#super[G].

== 2.3 Discussione relativa alla fase di testing
*#p.alex* ha presentato all’azienda i test previsti dal _Team Code Alchemists_.
Per la misurazione della percentuale di copertura del codice viene utilizzato CodeCoverage, che aggiorna automaticamente i dati tramite le GitHub Actions.

All’interno del progetto è stata predisposta una cartella Summary, contenente:
- *Test di integrità* _(interazione tra componenti)_,
- *Test di unità* _(logica di business)_,
- *Test di accettazione* e *Test di sistema* _(script che eseguono una serie di richieste)_.

È stato comunicato all’azienda che, parallelamente alla scrittura del codice, si prosegue anche con lo sviluppo di ulteriori test.

È stato sottolineato, da parte di _M31_ che i *test di accettazione* rivestono un’importanza fondamentale, in quanto dimostrano che chiunque può eseguirli e che i committenti#super[G] possono verificarne l’esito in fase di consegna. Ogni test deve indicare chiaramente le precondizioni _(ciò che serve per eseguirlo)_ e le postcondizioni _(i risultati attesi)_. L'azienda si aspetta che i test siano redatti in maniera accurata e completa, poiché rappresentano una dimostrazione concreta della corretta implementazione delle funzionalità. È stato inoltre evidenziato che, oltre al contenuto, anche la forma di redazione è ritenuta rilevante.

Nel processo di sviluppo software, la consegna al cliente è vincolata al superamento dei test: chi sviluppa afferma che _“tutto funziona”_, ma è il cliente a verificarlo mediante il Test Book _(o Test di Validazione#super[G]/Accettazione)_. Tale documento raccoglie l’elenco dei test da eseguire alla consegna del progetto.

Si è concordato con l’azienda _M31_ che non si accetteranno Test Book con errori critici, ma potrà tollerare una quota massima del 5% di test non critici falliti (ad esempio, 2 su 30), a condizione che vengano corretti prima della consegna definitiva.

Il Test Book deve contenere per ciascun test:
- Identificativo del test
- Prerequisiti
- Procedura di esecuzione _(descritta passo per passo)_
- Risultato atteso
- Esito _(PASS/FAIL)_
- Eventuali note, con indicazione della criticità in caso di FAIL

In forma opzionale, può essere allegata una tabella riassuntiva dei test.

È stato inoltre concordato che:
- Verranno predisposti circa 20/30 test di accettazione, sufficienti a coprire le funzionalità principali e i requisiti#super[G] fondamentali del capitolato#super[G].
- Il draft del Test Book dovrà essere fornito qualche giorno prima della consegna, per consentire la revisione da parte di _M31_ e verificarne chiarezza e completezza.

Per garantire l’efficacia dei test, la loro esecuzione dovrebbe essere affidata a una persona che non abbia partecipato alla loro stesura, così da validarne realmente la comprensibilità.

#pagebreak()
= 3. Esiti della riunione
  L'incontro si è concluso con l'apprezzamento, da parte dei rappresentanti di M31, per il lavoro svolto fino ad oggi e per quanto presentato durante la riunione odierna.
  Si è concordato di proseguire con la realizzazione del MVP#super[G], tenendo conto dei suggerimenti ricevuti. Il team si impegna inoltre a redigere il Test Book sopracitato e a consegnarlo all'azienda _M31_ alcuni giorni prima della consegna del progetto, in modo da concordare congiuntamente la fase di testing.

  Il team desidera ringraziare i rappresentanti di M31 per la loro costante disponibilità e per i preziosi consigli finora forniti.

#pagebreak()
= 4. Tabella delle decisioni e azioni

    #let voci_tabella = (
    [A34], [Relizzare il Test Book da consegnare all'azienda qualche giorno prima della consegna.],
    [DOC33], [Stesura del Verbale Esterno del 26-08-2025],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
