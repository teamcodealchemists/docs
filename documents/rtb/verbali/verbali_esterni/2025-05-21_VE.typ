#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "21/05/2025"
#let titolo = titolo + data
#let status = "Revisione"
#let versione = "0.1.0"
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
  [0.1.0], [21/05/2025], [M.Pretto],[-], [Redazione iniziale del documento]

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
  In data *21 maggio 2025*, dalle ore *10:00* alle ore *11:10*, si è svolta, in modalità mista con 6 membri del team in sede e 2 membri collegati tramite la piattaforma _Microsoft Teams_, una riunione con l'azienda _M31_ per presentare una nuova e migliorata ipotesi architetturale del PoC _(Proof of Concept)_ effettuata dai progettisti del Team _Code Alchemists_ e per discutere circa i dubbi avuti dagli analisti nella stesura dei Casi d'Uso.
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Moones Mobaraki
  - Cristian Pirlog
  - Luca Cossaro

== 1.1 Ordine del Giorno
 + Presentazione della nuova e migliorata ipotesi architetturale del PoC _(Proof of Concept)_ e discussione
 + Chiarimenti circa dubbi e domande emerse durante l'analisi dei requisiti
 + Organizzazione della comunicazione
 

#pagebreak()
= 2. Dettagli della riunione
La riunione si è tenuta in modalità mista. Sei membri del team hanno partecipato direttamente dalla sala riunioni dell'azienda. Gli altri due, invece, si sono collegati tramite la piattaforma  _Microsoft Teams_. Molto importante e apprezzato è stato il fatto di potervi partecipare in presenza, in modo tale da poter avere un confronto diretto e più immediato con i responsabili del progetto dell'azienda _M31_.

== 2.1 Presentazione della nuova e migliorata ipotesi architetturale del PoC
Dopo una breve introduzione, il Team _Code Alchemists_, per voce del responsabile dei progettisti *#p.stefano*, ha presentato la nuova ipotesi di architettura per il _Proof of Concept (PoC)_, illustrando le scelte progettuali e le tecnologie individuate, ponendo maggiore attenzione sugli aspetti nuovi e migliorati rispetto alla proposta effettuata nella riunione precedente. \
È stata fornita una panoramica generale dell’architettura proposta, a partire dai principali pattern architetturali adottati, proseguendo con una spiegazione dettagliata della struttura del PoC e concludendo con l’illustrazione delle tecnologie selezionate. \

Durante l'esposizione il team ha discusso con l'azienda circa le scelte effettuate, ponendo domande riguardo i dubbi e le incertezze incontrate durante lo studio dell'archittetura stessa nei due sprint precedenti.

Quest’ultima, come nella riunione precedente, ha espresso entusiamo per la solidità dell’impianto architetturale proposto, rispondendo attivamente alle domande poste. Di seguito i punti salienti della discussione:
- Si è posto il problema della latenza nella sincronizzazione dei messaggi tra i magazzini e la copia del cloud aggregata. La risposta ricevuta è stata quella che tale latenza è poco rilevante. In quanto, infatti, non si deve gestire un sistema ragionevolmente grande, un ritardo di qualche millisecondo non crea problemi rilevanti.
- Un altro dubbio posto è stato quello relativo all' eventuale soppressione dei trasporti fra magazzini fisicamente lontani. Il team, infatti si era chiesto se tale problematica andasse gestita in automatico o in modalità manuale. L'azienda ha prontamente risponto che l'ideale sarebbe stato quello di utilizzare una modalità mista. Qualora vi siano trasferimenti significativamente costosi è stato consigliato di usare una gestione manuale. Negli altri casi, invece, è sufficiente procedere in modo automatico.
- Il team ha posto posto il dubbio circa la gestione di un magazzino online. Si è deciso, dopo un confronto, di optare per un' attesa ragionevolmente breve ed in seguito considerare tale magazzino come se fosse offline.
- Si è poi posto il problema della simulazione delle spedizioni fra un magazzino ed un altro. Il dubbio, infatti, riguardava l'utilizzo di eventi oppure di delay. La risposta ricevuta è stata quella di decidere in autonomia. L'unica cosa importante è quella che, una volta consegnata la demo, ci siano i test vari.
- Un altro problema posto riguardava il linguaggio da utilizzare per programmare il sistema. Nonostante inizialmente sia stato consigliato Go, è stato riferito che non dovendo gestire un sistema grande, anche l'utilizzo di typescript sarebbe stato sufficiente adeguato.
- Riguardo il garantimento dell'ordine corretto dei messaggi il team ha sollevato i suoi dubbi. La risposta ricevuta è stata quella di ricorrere ai sequence ID per identificare il messaggio oppure di ricorrere all'idempotenza.

Sono stati poi, inoltre, posti altri piccoli problemi e dubbi di importanza minore di cui non se ne riportano i dettagli completi, ma dei quali si è ricevuta una risposta esaustiva.

== 2.2 Chiarimenti circa dubbi e domande emerse durante l'analisi dei requisiti.
Al termine della presentazione dell'architettura, l'azienda, anticipandoci, ha chiesto se avessimo dei dubbi circa i casi d'uso, nonostante il tempo rimasto a loro disposizione fosse scarso. \
Prende quindi la parola *#p.nicolo* presentando velocemente e sommariamente il lavoro svolto, soffermandosi in particolare su quelli più complessi come ad esempio l'autenticazione.\
Si procede poi spiegando all'azienda come il documento sia pronto ed in attesa di essere visionato nei prossimi giorni dal *#p.cardin*.
Viene quindi effettuata solo una domanda riguardante la modalità di invio delle notifiche. La risposta ricevuta sosteneva come in un caso reale sarebbe stato ottimale riceverle sulla dashboard, ma nel nostro caso srebbe stato sufficiente ricervle ed inviarle via mail.
== 2.3 Organizzazione della comunicazione
Al termine della presentazione e della discussione, seppur breve, dei casi d'uso, l'azienda ha precisato come per ogni qualsiasi dubbio e chiarimento siano a disposizione tramite la loro mail. Sono inoltre ben disposti, quando sarà necessario, ed effettuare un'altra riunione con le stessa modalità di quella effettuata in data odierna.

#pagebreak()
= 3. Esiti della riunione
Il _Team Code Alchemists_ proseguirà, nel prossimo periodo, con l'ultimazione degli ultimi particolari dell'architettura del Proof of Concept (PoC). Parallelamente si inizierà a programmare il sistema. \

Durante questa fase, provvederemo a ricontattare l'azienda per concordare il prossimo incontro.

Il _Team Code Alchemists_ desidera infine ringraziare l'azienda _M31_ per la consueta professionalità e disponibilità dimostrate nel supportarci durante lo sviluppo del progetto.

#pagebreak()
= 4. Tabella delle decisioni e azioni

    #let voci_tabella = (
    [A17], [Terminare l'architettura del PoC],
    [A18], [Iniziare con la programmazione del sistema],
    [A16], [Far visionare il documento dei casi d'uso al *#p.cardin*],
    [D25], [Aggiunto requisito di autenticazione semplice dell'utente],
    [DOC22], [Stesura del Verbale Esterno del 05-05-2025],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
