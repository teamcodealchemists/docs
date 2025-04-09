#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "04/04/2025"
#let titolo = titolo + data
#let status = "In redazione"
#let versione = "0.1.0"
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
  [0.1.0], [04/04/2025], [-], [N. Bolzon], [Redazione iniziale del documento]

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
  In data *4 aprile 2025*, dalle ore *10:00* alle ore *11:15*, si è svolta, presso la sede di _M31 Srl_ in _Via Niccolò Tommaseo, 77, 35131 Padova (PD)_ e simultaneamente in modalità virtuale tramite la piattaforma *Microsoft Teams*, una prima riunione con l'azienda _M31_ dopo l'aggiudicazione dell'appalto.
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Luca Cossaro _(in videoconferenza)_
  - Moones Mobaraki
  - Cristian Pirlog

== 1.1 Ordine del Giorno
 + Presentazione ufficiale del Team
 + Discussione e Q&A sul capitolato
 + Organizzazione della comunicazione e prossimi incontri

#pagebreak()
= 2. Dettagli della riunione

== 2.1 Presentazione ufficiale del Team
La riunione è iniziata con la conoscenza diretta dei nostri riferimenti all'interno dell'azienda _M31_:
- *Luca Cossaro*, CTO _(in videoconferenza)_
- *Christian Pirlog*, Web Engineer
- *Moones Mobaraki*, Stage and Academy Coordinator

Il gruppo _Code Alchemists_ ha partecipato all'incontro in modalità mista, come offertoci dall'azienda stessa.
- *In presenza:* Nicolò Bolzon, Sebastiano Marana, Nicholas Moretto, Ramona Zangla
- *In videoconferenza:* Matteo Pretto, Alex Shu

== 2.2 Discussione e Q&A sul capitolato
L'incontro, richiesto anche per una conoscenza diretta del Team a seguito dell'assegnazione del capitolato, aveva come scopo principale rispondere ad alcune domande emerse durante una prima analisi dei requisiti effettuata dagli Analisti#super("G").

Per ottimizzare la comunicazione e ridurre al minimo gli sprechi di tempo, le domande sono state inviate all'azienda il giorno precedente alla riunione, come richiesto durante il primo incontro avvenuto prima dell'assegnazione del capitolato stesso.

Di seguito vengono riportate le domande sottoposte all'azienda e le relative risposte ricevute.
+ *Q: Cosa intendete nello specifico per _"copia remota"_ di un magazzino e perchè è necessaria? Cosa succede se un nodo va offline? Le informazioni della copia remota di un magazzino offline possono essere utilizzate dal sistema centrale?* \
  *A:* \

+ *Q: È necessario simulare il sistema in locale con Docker prima di utilizzare Google Cloud Platform?* \
  *A:* \

+ *Q: Come avviene la gestione dell'aggregazione dei dati quando si fa una richiesta dal sistema centrale? È richiesta la creazione di un altro database centrale oppure è semplicemente il risultato di una query su tutte le copie dei database dei magazzini?* \
  *A:* \

+ *Q: Vengono proposte due tecnologie diverse per l'archiviazione dei dati (_MongoDB_ e _PostgreSQL_) a seconda se si tratta di dati aggregati o meno. Il motivo di questa distinzione?* \
  *A:* \

+ *Q: Per quanto riguarda la gestione di richieste dal sistema centralizzato: Come si intendono gestire le richieste pervenute al sistema centralizzato insieme agli ordini che possono essere risolti localmente in modo indipendente, evitando conflitti?*\
  *A:* \

+ *Q: Tra le tecnologie consigliate per il caching c'è Redis. Come funziona il caching?*\
  *A:* \

+ *Q: Quale tecnologia tra Kafka e NATS è meglio scegliere per la comunicazione tra microservizi?*\
  *A:* \

+ *Q: Nel PoC è richiesta la consegna della _gestione di un solo magazzino collegato al nodo centrale_. Quali aspetti specifici dobbiamo dimostrare e quali requisiti minimi sono richiesti? Con un solo magazzino il problema della gestione distribuita non si presenterebbe.*\
  *A:* \

+ *Q: In cosa consiste l'analisi dei sistemi di gestione dell'inventario esistenti con focus su quelli distribuiti e basati su microservizi? Come avviene questa fase? Saremo supervisionati? Come deve essere condotta questa analisi? Dobbiamo soffermarci su qualche sistema specifico già esistente?*\
  *A:* \

+ *Q: Il gruppo precedente ha rispettato l'architettura da voi proposta o ha fatto qualche modifica?*\
  *A:* \

+ *Q: Gli spostamenti delle merci avvengono in tempo reale? Devono essere approvati manualmente o vengono gestiti direttamente dal sistema centrale? Viene inviata una richiesta al magazzino locale che poi decide se accettarla o meno in base alle proprie disponiblità e capacità operative? Oppure il sistema centrale invia automaticamente gli ordini di spostamento?*\
  *A:* \

== 2.3 Organizzazione della comunicazione e prossimi incontri
Il Team _Code Alchemists_ e l'azienda _M31_ hanno concordato le attività da svolgere nel prossimo periodo, stabilendo un incontro indicativo tra due settimane dalla data odierna, idealmente nella settimana compresa tra il 14 e il 19 aprile 2025. Questo incontro avrà l'obiettivo di proseguire con l'analisi iniziata, ora possibile grazie alle risposte fornite alle nostre precedenti richieste. \

Per quanto riguarda l'organizzazione della riunione con _M31_, siamo stati invitati a procedere come indicato: inviare una comunicazione via e-mail agli indirizzi noti per richiedere l'incontro e trasmettere, alcuni giorni prima dell'incontro, le domande da porre, al fine di ottimizzare le tempistiche sia per l'azienda che per il nostro Team di lavoro. \

Per eventuali necessità, l'azienda è sempre disponibile, tramite i consueti canali di contatto, per qualsiasi evenienza.

#pagebreak()
= 3. Esiti della riunione

#pagebreak()
= 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [-],
    [-],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
  
