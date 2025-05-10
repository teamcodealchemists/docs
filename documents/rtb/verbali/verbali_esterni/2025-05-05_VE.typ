#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "05/05/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "2.0.0"
#let destinatario = "M31"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.alex,
  p.stefano,
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
  [2.0.0], [12/05/2025], [_M31_], [-], [Approvazione del documento da parte di _M31_], 
  [1.0.0], [09/05/2025], [-], [S. Marana], [Approvazione interna del documento],
  [0.1.0], [06/05/2025], [N. Moretto], [S. Marana], [Redazione iniziale del documento]

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
  In data *5 maggio 2025*, dalle ore *11:00* alle ore *12:00*, si è svolta, in modalità virtuale tramite la piattaforma _Microsoft Teams_, una riunione con l'azienda _M31_ per presentare un'ipotesi architetturale del PoC _(Proof of Concept)_ effettuata dai progettisti del Team _Code Alchemists_.
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Moones Mobaraki
  - Cristian Pirlog

== 1.1 Ordine del Giorno
 + Presentazione dell'ipotesi architetturale del PoC _(Proof of Concept)_ e discussione.
 + Chiarimenti su dubbi e domande emerse durante l'analisi dei requisiti.
 + Organizzazione della comunicazione e prossimi incontri

#pagebreak()
= 2. Dettagli della riunione
La riunione si è tenuta eccezionalmente in modalità online, in considerazione di impegni accademici del Team _Code Alchemists_. \
L'azienda ha manifestato la propria preferenza per lo svolgimento degli incontri in presenza, presso la propria sede.
Il Team ha accolto positivamente tale proposta, ritenendo che la partecipazione fisica possa favorire una comunicazione più efficace e una comprensione reciproca più approfondita.

== 2.1 Presentazione dell'ipotesi architetturale del PoC
Dopo una breve introduzione, il Team _Code Alchemists_, per voce del responsabile dei progettisti *#p.stefano*, ha presentato un’ipotesi di architettura per il _Proof of Concept (PoC)_, illustrando le scelte progettuali e le tecnologie individuate. \
È stata fornita una panoramica generale dell’architettura proposta, a partire dai principali pattern architetturali adottati, proseguendo con una spiegazione dettagliata della struttura del PoC e concludendo con l’illustrazione delle tecnologie selezionate. \

Al termine dell'esposizione, il Team ha aperto la discussione per raccogliere feedback e suggerimenti da parte dell'azienda. \

Quest’ultima ha espresso apprezzamento per la solidità dell’impianto architetturale proposto, sollevando tuttavia alcune perplessità e suggerimenti costruttivi:
- È stato consigliato di riflettere sull’opportunità di mantenere database separati per ciascun microservizio (ad esempio tra _ordini_ e _spedizioni_) oppure valutare l'aggregazione in un unico database. Pur riconoscendo che l’approccio con database distinti rappresenti una best practice in ambito microservizi, l’azienda ha evidenziato possibili criticità nella sincronizzazione dei dati. 
- Relativamente alla scelta di mantenere una copia di tutti i magazzini su cloud, ci è stato chiesto il motivo di questa scelta e inizialmente l'azienda ha espresso alcune perplessità al riguardo, suggerendo che potrebbe risultare più opportuno e meno oneroso adottare una rappresentazione centralizzata dello stato aggregato dei magazzini piuttosto che una copia di tutti i magazzini.\ Il Team ha chiarito che la copia sul cloud e ha l'obiettivo di ridurre la latenza nelle operazioni di lettura. Per eventuali operazioni di scrittura provenienti dal sistema centralizzato, è previsto un sistema di messaging che invia richieste di scrittura direttamente ai vari magazzini locali.\ Dopo questa spiegazione, l'azienda ha accettato questa scelta progettuale, ma ha comunque suggerito di riflettere su questa decisione e di considerare l'idea di avere un sistema centralizzato con un unico database contenente lo stato aggregato dei magazzini.\
- È stato inoltre suggerito di verificare la compatibilità tra il _Saga Pattern_ e _NATS_, con particolare attenzione agli aspetti legati all'affidabilità e alla gestione dei messaggi.\
- L'azienda ha suggerito di approfondire fin da ora le tecnologie disponibili, poiché potrebbero offrire soluzioni utili per affrontare eventuali incertezze progettuali, per esempio _NATS_ per la persistenza dei dati. 

== 2.2 Altre considerazioni e chiarimenti
Al termine della presentazione dell'architettura, l'azienda ci ha chiesto se, nei tempi a disposizione, riusciremo a portare avanti la nostra proposta architetturale.\ Il Team ha confermato l’intenzione di tenere conto dei suggerimenti ricevuti, con l’obiettivo di realizzare un’architettura al tempo stesso solida e performante, e di sviluppare un Proof of Concept entro la fine di maggio, come inizialmente previsto.\ È stata inoltre ribadita l’importanza di definire con chiarezza i casi d’uso, in modo da consentire un lavoro parallelo tra i membri del Team.

Durante la discussione, il responsabile degli analisti *#p.nicolo*, ha posto un quesito riguardo all’autenticazione: sebbene indicata come requisito opzionale, è stata considerata rilevante anche in una forma basilare.\
L’azienda ha risposto che, pur non essendo un elemento non fondamentale per il progetto, l’inclusione di un sistema di autenticazione rappresenterebbe comunque un valore aggiunto significativo.\

In merito allo sviluppo dell'interfaccia utente, il Team ha sottolineato che essa verrà implementata solo qualora il tempo a disposizione lo consenta. \ L'azienda ha espresso l'opinione che, anche se molto semplice, sarebbe molto utile avere una GUI per dimostrare il funzionamento del sistema a un pubblico più ampio. Qualora possibile, è stato suggerito di dedicare circa 10-15 ore alla sua realizzazione, considerandola comunque una componente separata e non prioritaria. \

In ogni caso, per dimostrare il funzionamento del sistema, l'azienda ha chiesto che venga fornita una lista di test utili alla verifica del corretto funzionamento dell'architettura, anche tramite interfaccia a riga di comando. Sarebbe inoltre apprezzata la possibilità di effettuare i test direttamente, seguendo una serie di passaggi guidati, preferibilmente incontrandoci presso la loro sede aziendale. \

== 2.3 Organizzazione della comunicazione e prossimi incontri
Il Team _Code Alchemists_ e l'azienda _M31_ hanno concordato le attività da svolgere nel prossimo periodo, con particolare riferimento alla realizzazione del PoC _(Proof of Concept)_.\
L'azienda si attende di poter visionare un PoC funzionante entro la fine di maggio 2025, richiedendo contestualmente l'accesso al relativo codice sorgente.\

L'azienda ci ha dato la disponibilità a svolgere un incontro tra due settimane, idealmente nella settimana compresa tra il 19 e il 23 maggio, al fine di discutere l’avanzamento dei lavori, affrontare eventuali criticità e, se necessario, confermare o ridefinire le scadenze.\

Per eventuali necessità, l'azienda ha rinnovato la sua disponibilità attraverso i consueti canali di contatto.\ L'azienda invita il team a contattarla per qualsiasi dubbio, soprattutto relativo alle richieste funzionali. Pur non essendo previsto un supporto tecnico obbligatorio, l'azienda ha espresso la disponibilità a fornire assistenza dove possibile.\

#pagebreak()
= 3. Esiti della riunione
Il _Team Code Alchemists_ proseguirà, nel prossimo periodo, con il completamento dell'architettura del Proof of Concept (PoC) e, parallelamente, con il completamento della stesura dei Casi d'Uso.\

Provvederemo inoltre a fornire all'azienda un link al repository GitHub tramite GitHub Pages, in modo che possano visualizzare la documentazione e, in futuro, il codice sorgente del PoC.\

Dopodiché, procederemo con la realizzazione del PoC.
Durante questa fase, provvederemo a ricontattare l'azienda per concordare il prossimo incontro.

Il _Team Code Alchemists_ desidera infine ringraziare l'azienda _M31_ per la consueta professionalità e disponibilità dimostrate nel supportarci durante lo sviluppo del progetto.

#pagebreak()
= 4. Tabella delle decisioni e azioni

    #let voci_tabella = (
    [A14], [Terminare l'architettura del PoC],
    [A15], [Terminare la stesura dei Casi d'Uso],
    [A16], [Iniziare la realizzazione del PoC],
    [D25], [Aggiunto requisito di autenticazione semplice dell'utente],
    [DOC19], [Stesura del Verbale Esterno del 05-05-2025],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.

