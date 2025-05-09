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
  In data *5 maggio 2025*, dalle ore *11:00* alle ore *12:00*, si è svolta, in modalità virtuale tramite la piattaforma _Microsoft Teams_, una seconda riunione con l'azienda _M31_ per presentare un'ipotesi di architettura del PoC effettuata dai progettisti del Team _Code Alchemists_.
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Moones Mobaraki
  - Cristian Pirlog

== 1.1 Ordine del Giorno
 + Presentazione dell'ipotesi architetturale del PoC e discussione.
 + Chiarimenti su dubbi e domande emerse durante la prima analisi dei requisiti.
 + Organizzazione della comunicazione e prossimi incontri

#pagebreak()
= 2. Dettagli della riunione
La riunione si è svolta in via eccezionale in modalità online a causa di impegni accademici del Team _Code Alchemists_.\
L'azienda ha infatti espresso la volontà di effettuare gli incontri in presenza presso la propria sede.
Il Team ha accolto con favore questa proposta, sostenendo che la presenza fisica possa favorire una comunicazione più efficace e una migliore comprensione reciproca. 


== 2.1 Presentazione dell'ipotesi architetturale del PoC
Dopo una breve introduzione, il Team _Code Alchemists_, attraverso il responsabile dei progettisti *Stefano Speranza*, ha presentato un'ipotesi di architettura del PoC, illustrando le scelte progettuali e le tecnologie selezionate.\
È stata fornita una panoramica generale dell'architettura proposta, dai vari pattern architetturali previsti, a una spiegazione dettagliata dell'idea architetturale del PoC, fino ad arrivare a una spiegazione delle tecnologie scelte.\

Dopo un'attenta spiegazione, il Team ha aperto la discussione per raccogliere feedback e suggerimenti da parte dell'azienda.\
L'azienda ha espresso apprezzamento per l'architettura proposta, ma ha sollevato dei dubbi e delle perplessità:
- Ci è stato consigliato di riflettere riguardo al fatto di avere i database separati per i vari microservizi (ad esempio tra _ordini_ e _spedizioni_), oppure se aggregarli in un unico database. Apprezzano la nostra idea iniziale in quanto avere più database è una _best practice_ per i microservizi, ma potremmo incontrare delle difficoltà nella sincronizzazione.
- Per quanto riguarda la copia di tutti i magazzini su cloud, ci è stato chiesto il motivo di questa scelta e inizialmente l'azienda ha espresso alcune perplessità al riguardo, suggerendo che potrebbe essere più opportuno e meno dispendioso avere uno stato aggregato dei magazzini piuttosto che una copia di tutti i magazzini.\ Abbiamo spiegato che l'idea è dovuta al fatto che la copia è in sola lettura ed è utile per ridurre la latenza delle operazioni di lettura. Per eventuali operazioni di scrittura provenienti dal sistema centralizzato, è previsto un sistema di messaging che invia richieste di scrittura direttamente ai vari magazzini locali.\ Dopo questa spiegazione, l'azienda ha accettato questa scelta progettuale, ma ha comunque suggerito di riflettere su questa decisione e di considerare l'idea di avere un sistema centralizzato con un unico database contenente lo stato aggregato dei magazzini.\
- Ci è stato consigliato di verificare la compatibilità del Saga Pattern con NATS, in particolare per quanto riguarda l'affidabilità e la gestione dei messaggi.\
- L'azienda ha suggerito di approfondire fin da ora le tecnologie disponibili, poiché potrebbero offrire soluzioni utili per affrontare eventuali incertezze progettuali, per esempio _NATS_ per la persistenza dei dati. 

== 2.2 Altre considerazioni e chiarimenti
Dopo la presentazione dell'architettura, l'azienda ci ha chiesto se, nei tempi a disposizione, riusciremo a portare avanti la nostra proposta architetturale.\ Noi abbiamo ribadito che considereremo i consigli ricevuti per avere un'architettura che sia performante e al tempo stesso per sviluppare un PoC entro fine maggio (come preventivato inizialmente).\ Il Team sottolinea l'importanza di definire chiaramente anche i casi d'uso per poter lavorare in parallelo.

Il team ha chiesto se l'autenticazione, pur essendo un requisito opzionale, possa essere considerata necessaria, dato che viene ritenuta importante anche se implementata a livello base.\
L'azienda ha risposto che, sebbene non fondamentale ai fini del progetto, è comunque un ottimo plus.\

Dopo aver ribadito da parte del Team che l'Interfaccia Utente verrà sviluppata solo se ci sarà tempo, l'azienda ritiene che, anche se molto semplice, sarebbe molto utile averla per dimostrare il funzionamento del sistema a un pubblico più ampio. Se possibile, ci suggeriscono di dedicare 10-15 ore per realizzarla, pur considerandola una parte separata e non essenziale.\
In ogni caso, per dimostrare il funzionamento del sistema, l'azienda si aspetta che venga fornita una lista di test per verificare il funzionamento della struttura (anche semplicemente da terminale). Sarebbe utile fornire loro la possibilità di testare direttamente con degli step precisi, magari anche in sede.\

== 2.3 Organizzazione della comunicazione e prossimi incontri
Il Team _Code Alchemists_ e l'azienda _M31_ hanno concordato le attività da svolgere nel prossimo periodo, ovvero la realizzazione del PoC.\
L'azienda si aspetta di vedere un PoC funzionante entro la fine di maggio 2025, richiedendo anche di vedere il codice sorgente.\

L'azienda ci ha dato la disponibilità a svolgere un incontro tra due settimane (idealmente nella settimana compresa tra il 19 e il 23 maggio) per discutere i progressi, le eventuali problematiche e per confermare o ridefinire le scadenze.\

Per eventuali necessità, l'azienda ha rinnovato la sua disponibilità tramite i consueti canali di contatto.\ L'azienda invita il team a contattarla per qualsiasi dubbio, soprattutto relativo alle richieste funzionali. Pur non essendo previsto un supporto tecnico obbligatorio, l'azienda ha espresso la disponibilità a fornire assistenza dove possibile.\

#pagebreak()
= 3. Esiti della riunione
Il _Team Code Alchemists_ proseguirà, nel prossimo periodo, con il completamento dell'architettura del PoC e, parallelamente, con il completamento dei Casi d'Uso.\

Provvederemo inoltre a fornire all'azienda un link al repository GitHub tramite GitHub Pages, in modo che possano visualizzare la documentazione e, in futuro, il codice sorgente del PoC.\

Dopodiché, procederemo con la realizzazione del PoC.
Durante questa fase, provvederemo a ricontattare l'azienda per concordare il prossimo incontro.

Il _Team Code Alchemists_ desidera infine ringraziare l'azienda _M31_ per la consueta professionalità e disponibilità dimostrate nel supportarci durante lo sviluppo del progetto.

#pagebreak()
= 4. Tabella delle decisioni e azioni
//il doc è quello giusto a livello di numerazione
//controllare la numerazione delle azioni: io sono andato avanti rispetto alle azioni dello scorso verbale esterno
    #let voci_tabella = (
    [A15], [Terminare l'architettura del PoC],
    [A16], [Terminare i Casi d'Uso],
    [A17], [Iniziare la realizzazione del PoC],
    [DOC19], [Stesura del Verbale Esterno del 05-05-2025],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.

