#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "04/04/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "3.0.0"
#let destinatario = "M31"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
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
  destinatario,
  p.tullio,
  p.cardin,
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [3.0.0], [16/04/2025], [_M31_], [-], [Approvazione del documento da parte di _M31_], 
  [2.0.0], [15/04/2025], [-], [R. Zangla], [Approvazione interna del documento],
  [1.1.0], [14/04/2025], [N. Moretto \ N. Bolzon], [R. Zangla], [Modifica e correzione ad alcune parti del documento],
  [1.0.0], [08/04/2025], [A. Shu], [N. Bolzon], [Approvazione interna del documento],
  [0.2.0], [07/04/2025], [A. Shu], [N. Bolzon], [Aggiunta di informazioni al documento e correzione di errori sintattici e grammaticali],
  [0.1.0], [04/04/2025], [A. Shu], [N. Bolzon], [Redazione iniziale del documento]

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
  In data *4 aprile 2025*, dalle ore *10:00* alle ore *11:15*, si è svolta, presso la sede di _M31 Srl_ in _Via Niccolò Tommaseo, 77, 35131 Padova (PD)_ e simultaneamente in modalità virtuale tramite la piattaforma *Microsoft Teams*, una prima riunione con l'azienda _M31_ dopo l'aggiudicazione del capitolato#super("G").
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Luca Cossaro _(in videoconferenza)_
  - Moones Mobaraki
  - Cristian Pirlog

== 1.1 Ordine del Giorno
 + Presentazione ufficiale del Team
 + Discussione e Q&A sul capitolato#super("G")
 + Organizzazione della comunicazione e prossimi incontri

#pagebreak()
= 2. Dettagli della riunione

== 2.1 Presentazione ufficiale del Team
La riunione è iniziata con la conoscenza diretta dei nostri riferimenti all'interno dell'azienda _M31_:
- *Luca Cossaro*, CTO#super("G") _(in videoconferenza)_
- *Christian Pirlog*, Web Engineer
- *Moones Mobaraki*, Stage and Academy Coordinator

Il gruppo _Code Alchemists_ ha partecipato all'incontro in modalità mista, come offertoci dall'azienda stessa.
- *In presenza:* Nicolò Bolzon, Sebastiano Marana, Nicholas Moretto, Ramona Zangla
- *In videoconferenza:* Matteo Pretto, Alex Shu

== 2.2 Discussione e Q&A sul capitolato#super("G")
L'incontro, richiesto anche per una conoscenza diretta del Team a seguito dell'assegnazione del capitolato#super("G"), aveva come scopo principale rispondere ad alcune domande emerse durante una prima analisi dei requisiti#super("G") effettuata dagli Analisti#super("G").

Per ottimizzare la comunicazione e ridurre al minimo gli sprechi di tempo, le domande sono state inviate all'azienda il giorno precedente alla riunione, come richiesto durante il primo incontro avvenuto prima dell'assegnazione del capitolato#super("G") stesso.

Di seguito vengono riportate le domande sottoposte all'azienda e le relative risposte ricevute:
+ *Q: Cosa intendete nello specifico per _"copia remota"_ di un magazzino e perchè è necessaria? Cosa succede se un nodo va offline? Le informazioni della copia remota di un magazzino offline possono essere utilizzate dal sistema centrale?* \
  *A:* Per copia remota si intende la visione logica di un unico magazzino distribuito, composto da più magazzini fisicamente distinti ma coordinati centralmente. Il sistema elabora i dati delle singole sedi per restituire un’unica immagine coerente della disponibilità complessiva, nascondendo la dislocazione all’utente finale. Questa impostazione è necessaria per garantire continuità e coerenza nella gestione degli ordini anche in presenza di fault di rete o malfunzionamenti temporanei. È necessario definire le modalità di gestione dei seguenti scenari:
    - ordine accettato e successiva disconnessione del magazzino coinvolto;
    - magazzino offline prima dell’accettazione dell’ordine.
  
  In entrambi i casi, il sistema centrale dovrà essere in grado di gestire i conflitti e prendere decisioni in modo autonomo e coerente.
  Inoltre, se un magazzino resta offline per un tempo prolungato, non è ammissibile che un ordine rimanga indefinitamente in attesa: devono essere previste politiche di timeout o riassegnazione. \

+ *Q: È necessario simulare il sistema in locale con Docker prima di utilizzare Google Cloud Platform?* \
  *A:* Risulta ottimale, se non addirittura essenziale, simulare il sistema in locale. Ci si propone l'utilizzo di *Docker*, viste anche le pregresse conoscenze del team. L'obiettivo risulta essere il funzionamento corretto del sistema in container#super("G"). Sebbene il sistema possa essere predisposto per l'eventuale distribuzione su *Google Cloud Platform* i preferisce non configurarlo per l’uso immediato. L’uso di Minikube (simulatore di Kubernetes) è sconsigliato in quanto più complesso da configurare e non necessario per le esigenze progettuali. \

+ *Q: Come avviene la gestione dell'aggregazione dei dati quando si fa una richiesta dal sistema centrale? È richiesta la creazione di un altro database centrale oppure è semplicemente il risultato di una query su tutte le copie dei database dei magazzini?* \
  *A:* La gestione può essere definita liberamente dal team, in funzione dell’architettura adottata. L'importante è che la soluzione abbia senso e funzioni, e che ogni scelta venga adeguatamente motivata. \

+ *Q: Vengono proposte due tecnologie diverse per l'archiviazione dei dati (_MongoDB_ e _PostgreSQL_) a seconda se si tratta di dati aggregati o meno. Il motivo di questa distinzione?* \
  *A:* Lo stack proposto corrisponde a quello utilizzato in azienda. È possibile discostarsi da tali tecnologie in base all’architettura adottata, a condizione di motivare in modo non banale la scelta. \

+ *Q: Per quanto riguarda la gestione di richieste dal sistema centralizzato: Come si intendono gestire le richieste pervenute al sistema centralizzato insieme agli ordini che possono essere risolti localmente in modo indipendente, evitando conflitti?*\
  *A:* Una gestione centralizzata con logica di controllo sui magazzini periferici rappresenta una soluzione efficace. Il team ha proposto l’uso di una coda di ordini e il blocco selettivo delle richieste che coinvolgono la merce oggetto del conflitto. Questa proposta è stata ritenuta adeguata. È stato inoltre evidenziato il problema derivante dalla gestione simultanea degli ordini da parte del sistema centralizzato e locale, che può causare conflitti. Sebbene la soluzione definitiva emergerà durante lo sviluppo dell’architettura e dei casi d’uso, l’idea iniziale del Team è stata vista positivamente. \

+ *Q: Tra le tecnologie consigliate per il caching c'è Redis. Come funziona il caching?*\
  *A:* Il caching rappresenta un’ottimizzazione del software, finalizzata a migliorare le prestazioni nelle richieste al database. Contrariamente a quanto inizialmente ipotizzato dal team, il caching non è centrale nella gestione del sistema, ma può essere considerato in fase avanzata di progettazione. Si propone di approfondire l’argomento con l’azienda durante l’analisi dettagliata dei requisiti. \

+ *Q: Quale tecnologia tra Kafka e NATS è meglio scegliere per la comunicazione tra microservizi?*\
  *A:* Il Team aveva inizialmente proposto l’utilizzo di *Kafka* per la comunicazione tra microservizi, in virtù della sua capacità di gestire grandi volumi di dati, della persistenza e della scalabilità. Si ritiene preferibile l'utilizzo di *NATS* poichè più leggero e semplice da configurare. Inoltre, l’uso di NATS JetStream, compatibile con Docker, si integra bene con l’ambiente di simulazione locale consigliato. \

+ *Q: Nel PoC#super("G") è richiesta la consegna della _gestione di un solo magazzino collegato al nodo centrale_. Quali aspetti specifici dobbiamo dimostrare e quali requisiti minimi sono richiesti? Con un solo magazzino il problema della gestione distribuita non si presenterebbe.*\
  *A:* Il sistema deve essere predisposto per creare magazzini e gestire ordini. L’azienda ribadisce che il PoC#super("G") ha l’obiettivo di dimostrare la validità e il funzionamento dell’architettura sviluppata, attraverso le funzionalità base. Non si tratta di un prodotto completo, ma di un prototipo che includa le componenti principali del progetto. È sufficiente un’interfaccia HTTP o CLI; non è necessaria un’interfaccia grafica. L’importante è che quanto progettato e documentato dal team sia coerente e funzionante. \

+ *Q: In cosa consiste l'analisi dei sistemi di gestione dell'inventario esistenti con focus su quelli distribuiti e basati su microservizi? Come avviene questa fase? Saremo supervisionati? Come deve essere condotta questa analisi? Dobbiamo soffermarci su qualche sistema specifico già esistente?*\
  *A:* La prima fase del progetto, _"l’analisi allo stato dell’arte"_, richiede un approfondimento sui *sistemi di gestione dell’inventario* esistenti, con particolare focus su quelli *distribuiti e basati su microservizi*. Durante questa fase, il team svolgerà una ricerca interna per identificare eventuali sistemi già esistenti e studiarne l’approccio. Non è risultato utile focalizzarsi su sistemi precisi, ma è importante esplorare come altre realtà abbiano gestito la logistica distribuita e i magazzini in un contesto di microservizi.
  Verrano quindi dedicati 1-2 giorni a questa attività, per acquisire una comprensione solida della *logistica distribuita*, dei *magazzini distribuiti* e dei sistem correlati. L’analisi verra quindi sintetizzata e inclusa nella documentazione, con un breve accenno alla presenza di tali sistemi esistenti. \

+ *Q: Gli spostamenti delle merci avvengono in tempo reale? Devono essere approvati manualmente o vengono gestiti direttamente dal sistema centrale? Viene inviata una richiesta al magazzino locale che poi decide se accettarla o meno in base alle proprie disponiblità e capacità operative? Oppure il sistema centrale invia automaticamente gli ordini di spostamento?*\
  *A:* La gestione degli spostamenti delle merci può essere definita liberamente dal Team. È possibile adottare sia una gestione automatica che manuale, a seconda dei casi d’uso specifici. Ad esempio, su nostra proposta, il sistema centrale potrebbe inviare automaticamente gli ordini di spostamento, mentre in situazioni critiche, come quando la merce scende sotto una certa soglia di disponibilità, l’approvazione potrebbe essere manuale. La decisione dipenderà dalle necessità operative e dai flussi definiti durante lo sviluppo dell’architettura e dei casi d’uso. \

*Informazioni aggiuntive:*
  - La parte di *test book* è molto importante: i test sono fondamentali per verificare che i requisiti siano soddisfatti. È essenziale descrivere chiaramente i test e le modalità di funzionamento per garantirne l’efficacia.
  - Gli ordini possono partire sia dal magazzino centrale che da quelli locali, quindi è importante tenere in considerazione entrambe le possibilità.
  - Gli Use Case deveono risultare *chiari*. \

== 2.3 Organizzazione della comunicazione e prossimi incontri
Il Team _Code Alchemists_ e l'azienda _M31_ hanno concordato le attività da svolgere nel prossimo periodo, stabilendo un incontro indicativo tra due settimane dalla data odierna, idealmente nella settimana compresa tra il 14 e il 19 aprile 2025. Questo incontro avrà l'obiettivo di proseguire con l'analisi iniziata, ora possibile grazie alle risposte fornite alle nostre precedenti richieste. \

Per quanto riguarda l'organizzazione della riunione con _M31_, siamo stati invitati a procedere come indicato: inviare una comunicazione via e-mail agli indirizzi noti per richiedere l'incontro e trasmettere, alcuni giorni prima dell'incontro, documentazione ed eventuali domande da porre, al fine di ottimizzare le tempistiche sia per l'azienda che per il nostro Team di lavoro. \

Per eventuali necessità, l'azienda ha rinnovato la sua disponibilità tramite i consueti canali di contatto.

#pagebreak()
= 3. Esiti della riunione
In seguito al momento di Q&A, durante il quale abbiamo ricevuto risposte puntuali alle nostre domande, insieme a preziosi suggerimenti e consigli da parte dell’azienda, il _Team Code Alchemists_ proseguirà, nel prossimo periodo, con un’approfondita analisi allo stato dell’arte. Ci concentreremo in particolare sui *sistemi di gestione dell’inventario*, con un focus specifico su quelli *distribuiti* e basati su *architetture a microservizi*. Parallelamente, avvieremo l’analisi preliminare dei requisiti del progetto.

Al termine di questa fase, provvederemo a ricontattare l’azienda per concordare il prossimo incontro.

Il _Team Code Alchemists_ desidera infine ringraziare l’azienda _M31_ per l’accoglienza ricevuta presso la loro sede e per la consueta professionalità e disponibilità dimostrate nel supportarci durante lo sviluppo del progetto.

#pagebreak()
= 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [A12], [Effettuare un'attenta _"analisi allo stato dell'arte"_],
    [A13], [Proseguire con l'analisi preliminare dei requisiti del progetto],
    [DOC14], [Stesura del Verbale Esterno del 04-04-2025],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
  
