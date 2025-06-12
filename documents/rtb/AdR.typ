#import "../../src/basic.typ": *

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "Analisi dei requisiti"
#let status = "In redazione"
#let destinatario = "M31"

#let versione = "0.7.1"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.7.1],
  [10/06/2025],
  [N. Bolzon \ S. Speranza],
  [-],
  [Modifiche ai casi d'uso.],

  [0.7.0],
  [09/06/2025],
  [N. Bolzon \ N. Moretto \ S. Marana \ S. Speranza],
  [-],
  [Riscrittura requisiti.],

  [0.6.1],
  [29/05/2025],
  [N. Bolzon],
  [R. Zangla],
  [Riordinamento di alcuni requisiti in differenti tabelle.],

  [0.6.0],
  [29/05/2025],
  [N. Bolzon],
  [R. Zangla],
  [Modifica classificazione dei requisiti e aggiornamento tabelle.],

  [0.5.2],
  [28/05/2025],
  [N. Bolzon],
  [R. Zangla],
  [Rimozione spaziatura tra titolo e testo del paragrafo.],

  [0.5.1],
  [28/05/2025],
  [N. Bolzon \ N. Moretto \ S. Marana \ S. Speranza],
  [R. Zangla],
  [Modifica attori e immagini dei casi d'uso.],

  [0.5.0],
  [28/05/2025],
  [N. Bolzon \ N. Moretto],
  [R. Zangla],
  [Inserimento tabella di tracciamento dei casi d'uso.],

  [0.4.2],
  [28/05/2025],
  [N. Bolzon \ N. Moretto \ S. Marana \ S. Speranza],
  [R. Zangla],
  [Aggiornamento di alcuni casi d'uso dopo revisione fino al UC21.],

  [0.4.1],
  [27/05/2025],
  [N. Bolzon \ N. Moretto \ S. Marana \ S. Speranza],
  [R. Zangla],
  [Aggiornamento di alcuni casi d'uso dopo revisione fino al UC8.],

  [0.4.0],
  [27/05/2025],
  [N. Bolzon],
  [R. Zangla],
  [Aggiunta informazioni di introduzione ai casi d'uso.],

  [0.3.0],
  [23/05/2025],
  [A. Shu],
  [N. Moretto],
  [Aggiunta dei casi d'uso fino al UC 23.],

  [0.2.0],
  [22/05/2025],
  [A. Shu],
  [N. Moretto],
  [Aggiunta dei casi d'uso fino al UC 10.5.],

  [0.1.1],
  [13/05/2025],
  [N. Bolzon],
  [N. Moretto],
  [Modifica dei requisiti#super[G] sulla base delle osservazioni dei progettisti#super[G].],

  [0.1.0],
  [17/04/2025],
  [N. Moretto],
  [S. Marana],
  [Aggiunta descrizione glossario#super[G], descrizione requisiti#super[G] e aggiunta di tutti i requisiti#super[G].],

  [0.0.2],
  [12/04/2025],
  [M. Dalla Pozza],
  [N. Bolzon],
  [Aggiunto primo contenuto.],

  [0.0.1],
  [28/03/2025],
  [S. Speranza],
  [N. Moretto],
  [Creazione template e struttura del documento.]
)

#let contenuto = (
    // Voci in prima pagina
    voce("Stato", status),
    voce("Versione", versione),
    voce("Distribuzione", distribuzione)
)

//Definire contatore tabella_counter per le tabelle
#let tabella_counter = 0

// CONFIGURAZIONE PAGINE
#show: conf.with(
  title: [#titolo],
  contenuto: (contenuto)
)
#show: registro.with(
  voci: voci_registro
)
#show: indice

#set heading(numbering: "1.1.")

/* INDICE DELLE IMMAGINI*/
#outline(
title: [Lista delle Immagini],
target: figure.where(kind: image),
)

#pagebreak()
/* SEZIONE 1 - Introduzione */
= Introduzione
== Scopo del documento
Il presente documento viene redatto per _l'analisi dei requisiti#super[G]_.

Il presente documento di Analisi dei Requisiti#super[G] ha lo scopo di fornire una panoramica quanto più possibile dettagliata del prodotto#super[G] software da sviluppare. Esso rappresenta un riferimento e una linea guida fondamentale per la progettazione, l'implementazione e il collaudo del sistema. Garantisce che il prodotto#super[G] finale soddisfi pienamente le esigenze e le aspettative del committente#super[G].

All'interno del documento sono descritte le richieste del committente#super[G], le modalità previste per la loro implementazione dal punto di vista architetturale e tecnologico, nonché i riferimenti normativi e informativi utili. In particolare, vengono forniti una descrizione approfondita dei Casi d'Uso e una lista completa dei requisiti#super[G] funzionali e non funzionali del sistema.

Questo documento mira a offrire una visione strutturata e completa del sistema software, delineando i bisogni degli utenti in base alle diverse categorie individuate durante l'analisi del capitolato#super[G] e gli incontri con il committente#super[G]. Sono inoltre chiaramente identificati gli attori coinvolti nel sistema e descritte le componenti principali del programma.

Per agevolare la comprensione, verranno utilizzati i Diagrammi dei Casi d'Uso per visualizzare le interazioni tra attori e sistema. I requisiti#super[G] identificati sono classificati come segue:

- *Obbligatori:* irrinunciabili e imprescindibili per il corretto funzionamento del sistema;

- *Desiderabili:* non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile;

- *Opzionali:* relativamente utili oppure contrattabili per un'eventuale implementazione futura.


- Il documento è stato redatto dagli Analisti#super[G] del team di progetto ed è rivolto a tutti gli interessati ed in particolare: 

- Il Committente#super[G], che potrà verificare che i requisiti#super[G] siano stati correttamente interpretati e documentati secondo le proprie specifiche;

- Il Team di Progettisti#super[G] e Programmatori#super[G], che utilizzerà il documento come guida per la realizzazione del sistema;

- Il Team di Verificatori#super[G], che lo adotterà come base per la definizione dei casi di test e la verifica#super[G] del corretto funzionamento del prodotto#super[G].

Potrà inoltre essere consultato da altri soggetti coinvolti nel processo di sviluppo, come Amministratori#super[G] e Responsabili#super[G] di Progetto, al fine di acquisire una comprensione esauriente delle specifiche del sistema.

== Descrizione del prodotto#super[G]
Il progetto ha l'obiettivo di sviluppare un sistema intelligente per la gestione distribuita dell'inventario#super[G] in una rete di magazzini geograficamente separati. In scenari logistici complessi, come quelli che prevedono la cooperazione tra più sedi operative, è fondamentale garantire disponibilità continua delle scorte#super[G], ridurre i tempi di inattività e ottimizzare il flusso di materiali.

Il sistema dovrà permettere di rilevare in tempo reale situazioni critiche, come carenze di prodotto#super[G] in una sede e surplus in un'altra, intervenendo automaticamente o suggerendo azioni correttive di trasferimento#super[G] o riassortimento#super[G]. Sarà inoltre in grado di gestire eventi imprevisti, come l'indisponibilità temporanea di un magazzino, garantendo la continuità operativa attraverso un bilanciamento intelligente delle risorse nei magazzini vicini.

Una delle componenti chiave sarà la *visibilità centralizzata e in tempo reale* di tutte le scorte#super[G] distribuite. Il sistema offrirà funzionalità avanzate per il monitoraggio#super[G], la sincronizzazione e l'aggiornamento dell'inventario#super[G], supportando decisioni rapide e affidabili.

Sarà adottata *un'architettura#super[G] scalabile a microservizi#super[G]*, che garantisca alta disponibilità, interoperabilità tra i nodi#super[G] della rete, e gestione efficiente del carico, anche in presenza di numerose richieste simultanee. Ogni nodo#super[G] della rete – cioè ciascun magazzino – potrà operare in modo autonomo, mantenendo però sincronizzazione con un sistema centrale tramite servizi#super[G] cloud.

Il progetto prevede anche *l'integrazione di modelli predittivi* per il riassortimento#super[G], sfruttando dati storici, pattern di consumo e stagionalità per anticipare la domanda e ridurre il rischio di esaurimento scorte#super[G]. M31 supporterà il progetto fornendo un dataset pubblico e una figura tecnica di riferimento per l'analisi dei dati e lo sviluppo dei modelli.

L'obiettivo finale è realizzare una *piattaforma robusta e flessibile* che migliori la resilienza e l'efficienza dell'intera rete logistica, assicurando precisione, tempestività e scalabilità#super[G] nelle operazioni di gestione dell'inventario#super[G].

== Analisi dello stato dell'arte
Prima di procedere con l'analisi dei requisiti#super[G], è stata effettuata un'analisi dello stato dell'arte, al fine di comprendere le tecnologie e le soluzioni già esistenti nel campo della gestione distribuita, dei microservizi#super[G] e della gestione dei dati.\
Sono stati analizzati diversi articoli, documenti e libri che trattano questi argomenti, al fine di identificare le migliori pratiche e le soluzioni più adatte per il progetto in questione.
Sono stati presi in considerazione anche vari progetti esistesti che utilizzano tecnologie simili, al fine di comprendere le sfide e le opportunità che si presentano in questo campo.\

Dopo un'esaustiva ricerca, sono stati identificati alcuni punti chiave che saranno fondamentali per la progettazione e lo sviluppo di un'ipotesi di architettura#super[G] del sistema:

- *Microservizi#super[G]:* come richiesto dal capitolato#super[G], il sistema dovrà essere progettato utilizzando un'architettura#super[G] a microservizi#super[G], che consente di suddividere il sistema in componenti più piccoli e indipendenti, facilitando la scalabilità#super[G] e la manutenibilità del sistema.\
  Ogni microservizio#super[G] dovrebbe avere un proprio database, e può scegliere il proprio stack tecnologico, in modo da garantire la massima flessibilità e indipendenza.\
- *Architettura#super[G] Event-Driven:* l'architettura#super[G] del sistema dovrebbe essere basata su eventi, in modo da garantire una comunicazione efficiente tra i microservizi#super[G] e una gestione ottimale delle risorse.\
    In questo modo, ogni microservizio#super[G] può reagire a eventi specifici e comunicare con gli altri microservizi#super[G] in modo asincrono, migliorando le prestazioni e la reattività del sistema.\
- *Tipi di comunicazioni:* È necessario determinare se utilizzare una comunicazione sincrona (REST, gRPC) o asincrona (Kafka o NATS) tra i microservizi#super[G].\
- *Gestione dei dati:* diversi progetti analizzati adottano sia database SQL che NoSQL, in base alle esigenze specifiche.\
  I database SQL risultano più indicati per dati strutturati e relazionali, mentre i database NoSQL si prestano meglio a dati non strutturati e distribuiti.\
    Per il progetto in questione, potrebbe essere vantaggioso combinare entrambi i tipi di database, selezionandoli in base alle necessità di ciascun microservizio#super[G].\
- *Coerenza di dati:* è importante garantire la coerenza dei dati tra i diversi microservizi#super[G], soprattutto in un sistema distribuito.\
  Ci sono diverse strategie per garantire la coerenza dei dati, come il pattern Saga, l'Outbox pattern, transazioni distribuite, o il modello coerenza finale
- *Containerizzazione:* l'uso di container#super[G] (Docker) è diventato uno standard de facto per la distribuzione e l'esecuzione di microservizi#super[G].\
  I container#super[G] consentono di isolare le dipendenze e le configurazioni di ciascun microservizio#super[G], semplificando il processo di distribuzione e gestione del sistema.\
  Kubernetes è uno strumento popolare per la gestione dei container#super[G] e l'orchestrazione#super[G] dei microservizi#super[G], che consente di automatizzare il deployment, la scalabilità#super[G] e la gestione dei container#super[G] in un cluster.\

- *Resilienza del sistema:* è fondamentale garantire la resilienza del sistema, in modo da affrontare eventuali guasti o problemi di rete.\
  Ci sono diverse strategie per garantire la resilienza del sistema, come il pattern Circuit Breaker, il retry pattern, e l'uso di meccanismi di failover e bilanciamento del carico.\
- *Logging:* è importante implementare un sistema di logging centralizzato per monitorare le attività e le prestazioni del sistema.\
  Ci sono diversi strumenti e librerie disponibili per implementare il logging centralizzato, come ELK stack (Elasticsearch, Logstash, Kibana), Grafana Loki, o Prometheus.\
- Valutazione della necessità e della complessità di *API#super[G] Gateway* e *Service Discovery*.\
  L'API#super[G] Gateway funge da punto di accesso centrale per le richieste degli utenti e può gestire l'autenticazione#super[G], la registrazione, il bilanciamento del carico e altre funzionalità.\
  La Service Discovery consente ai microservizi#super[G] di trovare e comunicare tra loro in modo dinamico, senza la necessità di configurazioni statiche.

== Glossario#super[G]
In questo documento potrebbero essere presenti parole#super[G] e terminologie complesse, che potrebbero non essere chiare a tutti, anche in relazione al contesto in cui vengono usate. Per questo motivo, È stato creato un glossario#super[G], che contiene le definizioni di alcune parole#super[G] e termini utilizzati nel documento.

Le parole#super[G] che possiedono un riferimento al glossario#super[G] vengono evidenziate come segue: *parola#super[G]*.

== Riferimenti
/* Alcuni link utili per la ricerca di informazioni e documentazione sui microservizi#super[G] e sull'architettura distribuita(altri sono presenti nei vari documenti di analisi dello stato dell'arte) 
https://www.sayonetech.com/blog/inventory-management-system-using-microservices/
Libro: Microservices for the Enterprise - Designing, Developing, and Deploying (Kasun Indrasiri, Prabath Siriwardena)
https://www.researchgate.net/publication/387822994_Implementing_Microservices_for_Real-Time_Inventory_Tracking_in_Global_Supply_Chains
https://microservices.io/patterns/index.html
https://www.researchgate.net/publication/387822806_The_Role_of_Microservices_in_Enhancing_Scalability_and_Flexibility_of_Warehouse_Management_systems
https://docs.aws.amazon.com/it_it/prescriptive-guidance/latest/modernization-data-persistence/database-per-service.html
https://www.multiplayer.app/distributed-systems-architecture/
*/

=== Riferimenti Normativi
/*Da cambiare al cambio di versione*/
- *Norme di Progetto:* \ #link("https://teamcodealchemists.github.io/docs/rtb/NdP_0.5.0.pdf")[https://teamcodealchemists.github.io/docs/rtb/NdP_0.5.0.pdf] \ *Ultimo Accesso:* 27 Maggio 2025

- *Capitolato d'appalto C6 _Sistema di Gestione di un Magazzino Distribuito_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf]\ *Ultimo Accesso:* 27 Maggio 2025

=== Riferimenti Informativi
- *Diagrammi dei Casi d'Uso:* \ #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf] \ *Ultimo Accesso:* 27 Maggio 2025
- *Analisi dei Requisiti:* \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf] \ *Ultimo Accesso:* 27 Maggio 2025
- *Glossario:* \ #link("https://teamcodealchemists.github.io/glossario.html")[https://teamcodealchemists.github.io/glossario.html] \ *Ultimo Accesso:* 27 Maggio 2025
- *Standard IEEE:* \ #link("https://ieeexplore.ieee.org/document/720574")[https://ieeexplore.ieee.org/document/720574] \ *Ultimo Accesso:* 27 Maggio 2025

#pagebreak()
= Casi d'uso
== Introduzione
In questa sezione del documento vengono presentati i casi d’uso individuati durante l’attività di analisi, condotta a partire dal capitolato d’appalto e dagli incontri con il proponente.

Ogni caso d’uso è costituito da un diagramma UML e da una descrizione testuale dettagliata, utile a chiarire le funzionalità attese dal sistema. La descrizione riporta, inoltre, le informazioni previste nella tabella sottostante, fatta eccezione per i campi che, in base alla natura del caso d’uso, risultano non applicabili _(ad esempio, se non sono previste situazioni di errore, non saranno presenti scenari alternativi)_.

#set table(
  fill: (x, y) => if y == 0 {gray} else if x == 0 {luma(235)},
  align: (x, _) => if x == 0 {center} else {left},
)

#table(
  columns: (1.3fr, 4fr),
  inset: 10pt,
  table.header(
    [*Campo*], [*Descrizione*]
  ),
    [*Titolo*], [Breve descrizione del caso d'uso.],
    [*Attori*], [Sono coloro che interagiscono attivamente con il Sistema e svolgono l’azione indicata dal caso d’uso.],
    [*Attori\ Secondari*], [Sono coloro che interagiscono passivamente con il Sistema.],
    [*Precondizioni*],[Lista di condizioni che sono *necessarie* affinché l’attore possa compiere l’azione indicata dal caso d’uso.],
    [*Postcondizioni*],[Lista di condizioni che si verificano successivamente alla modifica dello stato del sistema, a seguito dell’azione eseguita con successo dall’attore secondo quanto previsto dal caso d’uso.],
    [*Scenario\ Principale*],[È la sequenza di iterazioni ideale tra l’attore e il sistema, in cui tutto procede come previsto e l’obiettivo del caso d’uso viene raggiunto con successo.],
    [*Scenario\ Alternativo*],[Sono variazioni dello scenario principale che si verificano quando una delle operazioni previste non va a buon fine.],
    [*Inclusioni*],[Indicano che un caso d’uso utilizza un altro caso d’uso. Servono a spezzare comportamenti comuni tra più casi d’uso, inserendoli in uno separato che viene “incluso” quando serve.],
    [*Estensioni*],[Indicano che un caso d’uso può estendere il comportamento di un altro in situazioni particolari. Il caso d’uso base funziona da solo, ma può essere arricchito opzionalmente da quello estensore, se si verifica una certa condizione.],
    [*Trigger*],[È l’evento iniziale che fa partire il caso d’uso. Può essere un’azione dell’utente, un evento di sistema o un cambiamento di stato che attiva il comportamento descritto nel caso d’uso.],
)

=== Codifica dei casi d'uso
I casi d'uso sono codificati utilizzando la seguente notazione:

#align(center)[
*UC [ID-Principale].[ID-Sottocaso]*
]

== Attori
In questa sezione del documento vengono esposti gli attori utilizzati nel sistema:
#table(
  columns: (1.3fr, 4fr),
  inset: 10pt,
  table.header(
    [*Attore*], [*Descrizione*]
  ),
    [*Utente*], [Utente non autenticato che vuole accedere al Sistema.],
    [*Supervisore*], [Generalizzazione degli attori Supervisori Locali e Supervisore Globale.],
    [*Supervisore\ Globale*], [Gestisce l’intero sistema di magazzini con visualizzazione globale.],
    [*Supervisore\ Locale*], [Gestisce solo uno o più magazzini a lui affidati dal Supervisore Globale.],
    /*
    [*Sistema\ Centralizzato*],[Rappresenta le funzioni automatiche del server centrale, come controlli, aggiornamenti, notifiche e calcoli. Agisce senza intervento umano, in risposta a eventi o comandi degli utenti _(tra cui Supervisore Locale e Supervisore Globale)_.],
    */
)

Identificativo univoco del caso d’uso, composto da un ID principale che identifica il caso principale e, se necessario, da un ID del sottocaso.

#pagebreak()
== Lista dei Casi d'uso

=== - UC 1: Primo accesso al sistema
#label("uc-1")
/*#figure(
  image("assets/____", width: 90%),
  caption: [UC1 - Primo accesso al sistema]
)*/
- *Attore Principale*: Utente
- *Precondizione*:
  - Non esiste un Utente registrato presso il Sistema.
- *Postcondizione*:
  - L’Utente possiede un account presso il Sistema, contraddistinto da Email e Password.
  - L'Utente assume il ruolo di Supervisore Globale del Sistema.
  - L'Utente è autenticato presso il Sistema.
- *Scenario principale*:
  + L'Utente avvia il Sistema.
  + L'Utente visualizza una schermata per la registrazione.
  + L'Utente inserisce l'Email.
  + L’Utente inserisce la Password.
  + L’Utente inserisce nuovamente la Password per confermarla.
/*
- *Inclusioni*:
- *Estensioni*:
*/
- *Trigger*: 
  - L'Utente vuole registrarsi come primo e unico Supervisore Globale del Sistema.

=== - UC 2: Autenticazione
#label("uc-2")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Utente
- *Precondizione*:
  - L’Utente non è autenticato nel Sistema.
- *Postcondizione*:
  - L’Utente ha eseguito l’accesso al Sistema.
  - L'Utente assume il ruolo di Supervisore Globale o Supervisore Locale a seconda del ruolo associato all'account.
- *Scenario principale*:
  + L'Utente avvia il Sistema.
  + L'Utente inserisce l'Email.
  + L’Utente inserisce la Password.

//- *Inclusioni*:
- *Estensioni*:
  - Se le credenziali sono errate → #link(label("uc-3"), underline("[UC 3]"))
- *Trigger*:
  - L’Utente vuole autenticarsi presso il Sistema.


=== - UC 3: Autenticazione fallita
#label("uc-3")
/*#figure(
  image("assets/Casi d'uso-UC2.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione fallita]
)*/
- *Attore Principale*: Utente
- *Precondizione*:
  - L'Utente non è autenticato nel Sistema.
- *Postcondizione*:
  - L'Utente è ancora non autenticato nel Sistema.
  - Viene fornita all'Utente la possibilità di autenticarsi nuovamente.
- *Scenario principale*
  + L'Utente riceve un messaggio di errore.
//- *Inclusioni*:
//- *Estensioni*:


=== - UC 4: Logout
#label("uc-4")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore //Ricordarsi di fare la generalizzazione graficamente
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
- *Postcondizione*:
  - Il Supervisore ha effettuato il logout dal Sistema.
- *Scenario principale*:
  + Il Supervisore viene disconnesso dal Sistema.
  + Il Supervisore non più autenticato visualizza la schermata di autenticazione.
  /*
- *Inclusioni*:
- *Estensioni*:
  */
- *Trigger*:
  - Il Supervisore preme sul pulsante di Logout.


=== - UC 5: Registrazione di un nuovo Supervisore Locale
#label("uc-5")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di gestione utenti.
- *Postcondizione*:
  - Un nuovo Supervisore Locale è stato registrato presso il sistema.
  - Il Supervisore Globale si trova nella pagina di gestione utenti.
- *Scenario principale*:
  + Il Supervisore Globale inserisce email del nuovo Supervisore Locale.
  + Il Supervisore Globale inserisce una password temporanea per il nuovo Supervisore Locale.
  + Il Supervisore Globale inserisce nome e cognome per il nuovo Supervisore Locale.
  + Il Supervisore Globale assegna i magazzini di pertinenza del Supervisore Locale.
  + Il Supervisore Globale conferma i dati inseriti.
  + Il Supervisore Globale torna alla pagina di gestione utenti.
  /*
- *Inclusioni*:
- *Estensioni*:
  */
- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Supervisore Locale.


=== - UC 6: Aggiunta di un nuovo magazzino
#label("uc-6")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di gestione magazzini.
- *Postcondizione*:
  - Un nuovo magazzino è stato aggiunto al sistema.
  - Il Supervisore Globale si trova nella pagina di gestione magazzini.
- *Scenario principale*:
  + Il Supervisore Globale inserisce l'indirizzo del nuovo magazzino.
  + Il Supervisore Globale può selezionare il Supervisore Locale da associare al magazzino.
  + Il Supervisore Globale conferma i dati inseriti.
  + Il Supervisore Globale torna alla pagina di gestione magazzini.

  /*
- *Inclusioni*:
- *Estensioni*:
  */
- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Magazzino.


=== - UC 7: Rimozione di un magazzino
#label("uc-7")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di gestione magazzini.
- *Postcondizione*:
  - Un magazzino è stato selezionato per la rimozione dal sistema.
  - Il Supervisore Globale si trova nella pagina di gestione magazzini.
- *Scenario principale*:
  + Il Supervisore Globale seleziona il magazzino da rimuovere.
  + Il Supervisore Globale conferma la selezione.

  /*
- *Inclusioni*:
- *Estensioni*:
  */
- *Trigger*:
  - Il Supervisore Globale preme il pulsante Rimuovi Magazzino


=== - UC 8: Modifica di un magazzino
#label("uc-8")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di gestione magazzini.
- *Postcondizione*:
  - I dati di un magazzino sono stati aggiornati.
  - Il Supervisore Globale si trova nella pagina di gestione magazzini.
- *Scenario principale*:
  + Il Supervisore Globale seleziona il magazzino da modificare.
  + Il Supervisore Globale modifica l'indirizzo del magazzino e/o il Supervisore Locale associato.
  + Il Supervisore Globale conferma i dati inseriti.
  + Il Supervisore Globale torna alla pagina di gestione magazzini.

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Modifica Magazzino.


=== - UC 9: Aggiunta nuova tipologia di merce
#label("uc-9")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inventario.
- *Postcondizione*:
  - Una nuova tipologia di merce è stata registrata a sistema.
  - Il Supervisore si trova nella pagina inventario.
- *Scenario principale*:
  + Il Supervisore inserisce il codice EAN (barcode) del prodotto da registrare.
  + Il Supervisore inserisce il nome del prodotto da registrare.
  + Il Supervisore inserisce il prezzo unitario del prodotto da registrare.
  + Il Supervisore conferma i dati inseriti.
  + Il Supervisore torna alla pagina di inventario.

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Nuova Tipologia Merce.

=== - UC 10: Rimuovi tipologia di merce
#label("uc-10")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inventario.
- *Postcondizione*:
  - Una tipologia di merce è stata rimossa dal sistema.
  - Il Supervisore si trova nella pagina inventario.
- *Scenario principale*:
  + Il Supervisore seleziona la tipologia di merce da rimuovere.
  + Il Supervisore verifica che la tipologia di merce selezionata abbia globalmente quantità nulla.
  + Il Supervisore conferma l'eliminazione.
- *Scenario alternativo*:
  + La quantità della tipologia di merce selezionata non è globalmente nulla.
  + Il Supervisore visualizza un messaggio di errore.

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Nuova Tipologia Merce.

=== - UC 11: Modifica dati di quantità di un prodotto in un singolo magazzino
#label("uc-11")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore 
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inventario di un magazzino.
  - Il Supervisore ha selezionato il prodotto di cui modificare le quantità.
- *Postcondizione*:
  - I dati di quantità di un prodotto in un singolo magazzino sono stati modificati.
  - Il Supervisore si trova nella pagina inventario di un magazzino.
- *Scenario principale*:
  + Il Supervisore modifica le quantità di prodotto e/o le soglie massime e/o minime.
  + Il Supervisore conferma i dati inseriti.
  + Il Supervisore torna alla pagina di inventario del magazzino.

- *Trigger*:
  - Il Supervisore preme il pulsante Modifica Prodotto.


=== - UC 12: Inserimento prodotto in un ordine
#label("uc-12")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore 
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inserimento ordine.
- *Postcondizione*:
  - I dati di un prodotto sono inseriti nell'ordine.
  - Il Supervisore si trova nella pagina inserimento ordine.
- *Scenario principale*:
  + Il Supervisore inserisce il codice EAN (barcode) del prodotto.
  + Il Supervisore inserisce la quantità del prodotto.
  + Il Supervisore inserisce il prezzo unitario del prodotto.
- *Trigger*:
  - Il Supervisore preme il pulsante Inserisci Prodotto.


=== - UC 13: Inserimento ordine di trasferimento interno
#label("uc-13")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore 
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inserimento ordine.
- *Postcondizione*:
  - L'ordine è stato inserito.
  - Il Supervisore si trova nella pagina ordini.
- *Scenario principale*:
  + Il Supervisore seleziona il magazzino di partenza.
  + Il Supervisore seleziona il magazzino di destinazione.
  + Il Supervisore inserisce uno o più prodotti nell'ordine → #link(label("uc-12"), underline("[UC 12]")).
  + Il Supervisore conferma i dati dell'ordine.

- *Inclusioni*:
  - Inserimento prodotto in un ordine → #link(label("uc-12"), underline("[UC 12]"))
  
- *Trigger*:
  - Il Supervisore seleziona *Trasferimento Interno* come tipologia ordine.

=== - UC 14: Inserimento ordine di approvigionamento
#label("uc-14")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore 
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inserimento ordine.
- *Postcondizione*:
  - L'ordine è stato inserito.
  - Il Supervisore si trova nella pagina ordini.
- *Scenario principale*:
  + Il Supervisore inserisce l'indirizzo del fornitore.
  + Il Supervisore seleziona il magazzino di destinazione.
  + Il Supervisore inserisce uno o più prodotti nell'ordine → #link(label("uc-12"), underline("[UC 12]")).
  + Il Supervisore conferma i dati dell'ordine.

- *Inclusioni*:
  - Inserimento prodotto in un ordine → #link(label("uc-12"), underline("[UC 12]"))
  
- *Trigger*:
  - Il Supervisore seleziona *Approvigionamento* come tipologia ordine.

=== - UC 15: Inserimento ordine di vendita
#label("uc-15")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore 
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inserimento ordine.
- *Postcondizione*:
  - L'ordine è stato inserito.
  - Il Supervisore si trova nella pagina ordini.
- *Scenario principale*:
  + Il Supervisore seleziona il magazzino di partenza.
  + Il Supervisore inserisce l'indirizzo del destinatario.
  + Il Supervisore inserisce uno o più prodotti nell'ordine → #link(label("uc-12"), underline("[UC 12]")).
  + Il Supervisore conferma i dati dell'ordine.

- *Inclusioni*:
  - Inserimento prodotto in un ordine → #link(label("uc-12"), underline("[UC 12]"))
  
- *Trigger*:
  - Il Supervisore seleziona *Vendita* come tipologia ordine.

=== - UC 16: Annullamento ordine
#label("uc-16")
/*#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione]
)*/
- *Attore Principale*: Supervisore 
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina ordini.
  - Il Supervisore ha selezionato un ordine in stato "in attesa" o "in eleborazione" da annullare.

- *Postcondizione*:
  - L'ordine è stato annullato.
  - Il Supervisore si trova nella pagina ordini.
- *Scenario principale*:
  + Il Supervisore annulla l'ordine.
  + Il Supervisore conferma l'annullamento dell'ordine.
  
- *Trigger*:
  - Il Supervisore preme il pulsante Annulla Ordine.


/*
  [*RF06*], [*Gestione manuale degli ordini.*], [],
  [*RF06/01*], [I Supervisori possono inserire ordini di trasferimento interno tra magazzini.], [],
  [*RF06/02*], [I Supervisori possono inserire ordini di approvigionamento dall'esterno.], [],
  [*RF06/03*], [I Supervisori possono inserire ordini di vendita verso l'esterno.], [],
  [*RF06/04*], [I Supervisori possono annullare ordini "in attesa" e "in eleborazione".], [],
*/



#pagebreak()
= Requisiti#super[G]
Verranno ora elencati i requisiti#super[G] del sistema, che sono stati suddivisi in quattro categorie principali: Requisiti#super[G] Funzionali, Requisiti#super[G] di Qualità, Requisiti#super[G] di Vincolo, Requisiti#super[G] Prestazionali.

== Classificazione dei requisiti#super[G]
- *Requisiti#super[G] Funzionali:* descrivono le funzionalità specifiche che il sistema deve offrire. Definiscono i comportamenti attesi in risposta a determinati input o situazioni, specificando cosa il sistema deve fare per soddisfare i bisogni degli utenti e degli stakeholder.

- *Requisiti#super[G] di Qualità:* detti anche non funzionali, definiscono le caratteristiche generali del sistema che ne influenzano l’efficacia, l’efficienza e l’affidabilità. Rientrano in questa categoria aspetti come la sicurezza, l’usabilità, la manutenibilità, la scalabilità e l’affidabilità complessiva del sistema.

- *Requisiti#super[G] di Vincolo:* specificano le limitazioni imposte da fattori esterni o immutabili, che il sistema o il processo di sviluppo devono rispettare. Tali vincoli possono derivare da normative, tecnologie obbligatorie, standard industriali, vincoli temporali o economici.

- *Requisiti#super[G] di Prestazionali:* definiscono le aspettative in termini di prestazioni del sistema, come tempi di risposta, capacità di carico, throughput e uso delle risorse. Questi requisiti sono fondamentali per garantire un’esperienza utente adeguata anche sotto carico elevato.

== Fonti dei requisiti#super[G]
Le fonti dei requisiti#super[G] rappresentano i documenti e le informazioni da cui sono stati estratti i requisiti#super[G] stessi. Tra le principali fonti si annoverano il capitolato#super[G] d'appalto, le riunioni con il committente#super[G], l’analisi dello stato dell’arte e l’analisi dei casi d’uso.

Ogni requisito riportato sarà accompagnato dall’indicazione esplicita della propria fonte di provenienza, al fine di garantirne la tracciabilità e la verificabilità.

== Struttura della Codifica dei requisiti#super[G]
I requisiti#super[G] sono stati codificati al fine di facilitarne la lettura, la gestione e la tracciabilità.
Ogni codice è composto da un prefisso che indica la tipologia del requisito#super[G], seguito da un numero progressivo univoco.

I requisiti#super[G] funzionali sono preceduti dal prefisso "RF", i Requisiti#super[G] di Qualità dal prefisso "RQ", i Requistiti#super[G] di Vincolo dal prefisso "RV" e i Requisiti#super[G] Prestazionali dal prefisso "RP", dove:
- *R* sta per "#strong[R]equisito";
- *F* sta per "#strong[F]unzionale";
- *Q* sta per "#strong[Q]ualità";
- *V* sta per "#strong[V]incolo";
- *P* sta per "#strong[P]restazionale";

Per facilitare la lettura, la tracciabilità e la classificazione dei requisiti, è stato adottato un sistema di codifica sturtturato. La codifica prevede un prefisso che identifica la tipologia e l'importanza del requisito, seguito da un numero progressivo. In caso di scomposizione, si aggiunge una notazione per indicare i requisiti derivati.

=== Tipologia e Importanza
I requisiti#super[G] sono stati distinti anche in base alla loro importanza o natura, secondo le seguenti convenzioni:
- *Standard*: requisiti strettamente necessari al corretto funzionamento del sistema.
  - _Esempio:_ RF01 → Requisito Funzionale 01.
- *Desiderabili (D)*: requisiti non obbligatori, ma in grado di apportare un valore aggiunto al sistema.
  - _Esempio:_ RFD04 → Requisito Funzionale Desiderabile 02.
- *Opzionali (O)*: requisiti implementabili solo in presenza di tempo o risorse sufficienti.
  - _Esempio:_ RFO03 → Requisito Funzionale Opzionale 02.

=== Scomposizione dei Requisiti Generali
Poichè molti requistiti derivati dal capitolato risultano generici, è stato necessario *scomporli* in requisiti più specifici, che chiariscano chi deve fare cosa e in quale modalità.
Per indicare questa relazione di derivazione, si utilizza la notazione *"/nr"*, dove _nr_ rappresenta un numero progressivo riferito al requisito secondario.

_Esempio:_
  - RF04 → Requisito principale.
  - RF04/01, RF04/02 → Requisiti secondari specifici derivati dal requisito RF04.

=== Sintesi della struttura del codice
\
#align(center)[
  *[Prefisso][Indicatore opzionale][Numero progressivo][/nr]*
]\
- *Prefisso:* RF (Funzionale), RQ (Qualità), RV (Vincolo), RP (Prestazionale).
- *Indicatore opzionale:* D (Desiderabile), O (Opzionale).
- *Numero progressivo:* numero univoco del requisito all'interno della categoria.
- *\/nr:* numero del requisito secondario, se presente.

#pagebreak()
== Requisiti#super[G] Funzionali
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(x,y)=> if y==0 {rgb("#2599ff")} else if x == 0 {luma(235)},
)

#table(
  columns: (1fr, 3.5fr, 1.2fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),

  //UTENTE
  [*RF01*], [*Registrazione del Supervisore Globale.*], [decisione\ interna],
  [*RF01/01*], [Il Supervisore Globale deve registrarsi al primo avvio del sistema.], [decisione\ interna],

  [*RF02*], [*Autenticazione dell'utente.*], [capitolato#super[G]],
  [*RF02/01*], [L'utente deve poter accedere al sistema mediante credenziali.], [capitolato#super[G]],
  [*RF02/02*], [L'utente deve poter effettuare il logout dal sistema.], [capitolato#super[G]],  

  [*RF03*], [*Registrazione di nuovi Supervisori Locali.*], [decisione\ interna],
  [*RF03/01*], [Il Supervisore Globale può registrare a sistema nuovi Supervisori Locali.], [decisione\ interna],
  [*RF03/02*], [Il Supervisore Globale deve assegnare il/i magazzino/i a cui il Supervisore Locale ha accesso in fase di registrazione.], [decisione\ interna],

  [*RF04*], [*Gestione manuale dei magazzini.*], [],
  [*RF04/01*], [Il Supervisore Globale deve poter aggiungere un nuovo magazzino a sistema.], [],
  [*RF04/02*], [Il Supervisore Globale deve poter rimuovere un magazzino dal sistema.], [],
  [*RF04/03*], [Il Supervisore Globale deve poter modificare informazioni di un magazzino.], [],
  [*RF04/04*], [Ciascun magazzino deve essere identificato univocamente.], [],

  [*RF05*], [*Gestione manuale delle merci.*], [],
  [*RF05/01*], [I Supervisori possono inserire un nuovo tipo di merce nell'inventario.], [],
  [*RF05/02*], [I Supervisori possono rimuovere un tipo di merce dall'inventario.], [],
  [*RF05/03*], [I Supervisori possono modificare la quantità di merce nell'inventario dei magazzini.], [],
  [*RF05/04*], [Il Supervisore Globale può modificare il prezzo unitario di un prodotto.], [],

  [*RF06*], [*Gestione manuale degli ordini.*], [],
  [*RF06/01*], [I Supervisori possono inserire ordini di trasferimento interno tra magazzini.], [],
  [*RF06/02*], [I Supervisori possono inserire ordini di approvigionamento dall'esterno.], [],
  [*RF06/03*], [I Supervisori possono inserire ordini di vendita verso l'esterno.], [],
  [*RF06/04*], [I Supervisori possono annullare ordini "in attesa" e "in elaborazione".], [],

  [*RF07*], [*Auditing dei dati dei magazzini.*], [], 
  [*RF07/01*], [Il Supervisore Globale può visualizzare l'inventario globale.], [],
  [*RF07/02*], [Il Supervisore Globale può visualizzare l'inventario di ciascun magazzino.], [],
  [*RF07/03*], [Il Supervisore Globale può visualizzare un report degli ordini globali.], [],
  [*RF07/04*], [Il Supervisore Globale può visualizzare un report degli ordini di ciascun magazzino.], [],

  [*RF08*], [I Supervisori Locali possono visualizzare l'inventario del/dei magazzino/i a loro assegnato/i.], [],
  [*RF09*], [I Supervisori Locali possono visualizzare un report degli ordini del/dei magazzino/i a loro assegnato/i.], [],

  [*RF10*], [I Supervisori possono visualizzare lo stato di tutti i magazzini.], [],
  /*[*RF*], [Il Supervisore Globale può modificare lo stato di ciascun magazzino.], [],
  [*RF*], [I Supervisori Locali possono modificare lo stato del/dei magazzino/i a loro assegnato/i.], [],*/

  [*RF11*], [*Gestione delle richieste.*], [], 
  [*RF11/01*], [I Supervisori possono visualizzare le notifiche informative prodotte dal sistema.], [],
  [*RF11/02*], [Il Supervisore Globale può accettare le richieste decisionali prodotte dal sistema.], [],
  [*RF11/03*], [Il Supervisore Globale può rifiutare le richieste decisionali prodotte dal sistema.], [],

  [*RF12*], [*Gestione delle soglie critiche.*], [], 
  [*RF12/01*], [I Supervisori devono definire i valori di soglia minima all'inserimento di un nuovo prodotto.], [],
  [*RF12/02*], [I Supervisori possono definire i valori di soglia massima all'inserimento di un nuovo prodotto.], [],
  [*RF12/03*], [I Supervisori Globali possono modificare i valori di soglia minima e massima di ciascun prodotto per ciascun magazzino.], [],
  [*RF12/04*], [I Supervisori Locali possono modificare i valori di soglia minima e massima di ciascun prodotto nel/nei magazzino/i a loro assegnato/i.], [],

  //FUNZIONALI SISTEMA
  [*RF13*], [*Rilevamento di carenza di scorte#super[G] di un magazzino.*], [capitolato#super[G]],
  [*RF13/01*], [Ciascun magazzino deve identificare quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
  [*RF13/02*], [Ciascun magazzino deve identificare quando le scorte#super[G] salgono sopra una certa soglia.], [capitolato#super[G]],

  [*RF14*], [*Gestione degli ordini.*], [capitolato#super[G]],
  [*RF14/01*], [Ciascun magazzino deve verificare la disponibilità delle scorte#super[G] per poter soddisfare un ordine ricevuto.], [capitolato#super[G]],
  [*RF14/02*], [Ciascun magazzino deve identificare l'impossibilità di soddisfare un ordine.], [capitolato#super[G]],
  [*RF14/03*], [Un magazzino con scorte insufficienti per gestire un ordine, deve richidere un riassortimento al sistema.], [progettazione],
  [*RF14/04*], [Ciascun magazzino deve tracciare lo stato degli ordini.], [capitolato#super[G]],
  [*RF14/05*], [I magazzini possono inviare merce verso un altro magazzino tramite un ordine.],[capitolato#super[G]],
  [*RF14/06*], [I magazzini possono ricevere approvigionamenti dall'esterno tramite ordine.],[capitolato#super[G]],
  [*RF14/07*], [I magazzini possono spedire merci verso l'esterno tramite ordine.],[capitolato#super[G]],
  [*RF14/08*], [Il magazzino di destinazione deve notificare l'arrivo della merce al magazzino di origine.], [capitolato#super[G]],
  [*RF14/09*], [Un ordine deve trovarsi in uno dei seguenti stati: "in attesa", "in elaborazione", "in transito", "annullato", "consegnato".], [],

  [*RF15*], [*Riassortimento delle scorte#super[G] tra magazzini.*], [capitolato#super[G]],
  [*RF15/01*], [Il sistema deve programmare trasferimenti interni al raggiungimento di una soglia critica di un prodotto in un magazzino al fine di bilanciare le scorte.], [capitolato#super[G]],

  [*RF16*], [*Individuazione dello stato dei magazzini.*], [capitolato#super[G]],
  [*RF16/01*], [Ciascun magazzino può trovarsi in uno dei seguenti stati: "online", "offline".],[],
  [*RF16/02*], [Il sistema deve identificare eventuali cambi di stato dei magazzini.],[],
  [*RF16/03*], [Il sistema deve identificare eventuali disconnessioni di uno o più magazzini segnandoli come "offline".], [capitolato#super[G]],

  [*RF17*], [*Gestione dei disservizi.*], [capitolato#super[G]],
  [*RF17/01*], [Un magazzino offline deve annullare gli ordini che non può soddisfare dopo un periodo di tempo predefinito.],[],

  [*RF18*], [*Gestione magazzino che cambia stato da offline a online.*], [capitolato#super[G]],
  [*RF18/01*], [Il sistema deve riconoscere quando un magazzino torna online.], [capitolato#super[G]],

  [*RF19*], [*Annullamento di ordini in transito.*], [],
  [*RF19/01*], [Un ordine in stato "in transito" deve cambiare lo stato in "annullato" dopo una soglia temporale predefinita.],[],


  //Requisiti#super[G] Funzionali desiderabili

  [*RFD01*], [Il Supervisore Globale può definire il costo massimo per i trasferimenti eseguibili mediante riassortimento automatico.],[],
  [*RFD02*], [Il Supervisore Globale può definire la distanza massima tra magazzini per il riassortimento automatico.],[],

  [*RFD03*], [*Suggerimento su azioni di riassortimento#super[G] e trasferimento#super[G] tra magazzini.*], [capitolato#super[G]],
  [*RFD03/01*], [Il sistema invia una richiesta decisionale al Supervisore Globale qualora un riassortimento superi i costi o le distanze massime.], [],

  [*RFD04*], [*Interfaccia grafica.*], [capitolato#super[G]],
  [*RFD04/01*], [Deve essere possibile effettuare la registrazione del Supervisore Globale mediante Interfaccia Grafica.], [],
  [*RFD04/02*], [Deve essere possibile effettuare l'autenticazione dell'utente mediante Interfaccia Grafica.], [],
  [*RFD04/03*], [Deve essere possibile effettuare la registrazione di nuovi Supervisori Locali mediante Interfaccia Grafica.], [],
  [*RFD04/04*], [Deve essere possibile effettuare la gestione manuale delle merci mediante Interfaccia Grafica.], [],
  [*RFD04/05*], [Deve essere possibile effettuare la gestione manuale degli ordini mediante Interfaccia Grafica.], [],
  [*RFD04/06*], [Deve essere possibile effettuare l'auditing dei dati dei magazzini mediante Interfaccia Grafica.], [], 
  [*RFD04/07*], [Deve essere possibile effettuare la gestione delle richieste mediante Interfaccia Grafica.], [], 
  [*RFD04/08*], [Deve essere possibile effettuare la gestione delle soglie critiche mediante Interfaccia Grafica.], [],

  [*RFD05*], [*Produzione di notifiche.*], [],
  [*RFD05/01*], [Il Sistema deve notificare i Supervisori al superamento dei livelli minimi e massimi di scorte.], [],
  [*RFD05/02*], [Il Sistema deve notificare i Supervisori dell'esecuzione del riassortimento automatico.], [],
  [*RFD05/03*], [Ciascun magazzino deve notificare i Supervisori dei cambi di stato degli ordini.], [],
  [*RFD05/04*], [Ciascun magazzino deve notificare i Supervisori dell'impossibilità di soddisfare un ordine.], [],
  [*RFD05/05*], [Ciascun magazzino deve notificare i Supervisori quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
  [*RFD05/06*], [Ciascun magazzino deve notificare i Supervisori quando le scorte#super[G] salgono sopra una certa soglia.], [capitolato#super[G]],
  [*RFD05/07*], [Il sistema deve notificare il Supervisore Globale di eventuali cambi di stato dei magazzini.],[],
  [*RFD05/08*], [L'invio di notifiche deve poter avvenire tramite email.], [capitolato#super[G].],
  [*RFD05/09*], [L'invio di notifiche deve poter avvenire tramite SMS.], [capitolato#super[G].],

  [*RFD06*], [*Produzione di richieste decisionali.*], [],  
  [*RFD06/01*], [Il Sistema deve inviare al Supervisore Globale le richieste decisionali prodotte dal riassortimento predittivo.], [],

  [*RFD07*], [*Riassortimento predittivo.*], [],
  [*RFD07/01*], [Il sistema deve avere uno storico dei livelli di merce.], [progettazione],
  [*RFD07/02*], [Il sistema deve poter analizzare i dati storici degli ordini.], [capitolato#super[G]],
  [*RFD07/03*], [Il sistema deve poter analizzare i dati storici di inventario dei magazzini.], [capitolato#super[G]],
  [*RFD07/04*], [Il sistema deve implementare un modello di previsione della domanda dei prodotti.], [capitolato#super[G]],
  [*RFD07/05*], [Il sistema deve poter pianifiare i riassortimenti sulla base del modello di previsione.], [capitolato#super[G]],
  [*RFD07/06*], [Il sistema deve inviare una richiesta decisionale al Supervisore Globale di approvigionamento sulla base del modello di previsione.], [capitolato#super[G]],
  [*RFD07/07*], [Il sistema deve inviare una richiesta decisionale al Supervisore Globale di riassortimento sulla base del modello di previsione.], [capitolato#super[G]],  

  //Requisiti#super[G] Funzionali opzionali
  [*RFO01*], [I supervisori devono poter eseguire un ripristino manuale dei dati da un backup.], [capitolato#super[G]],

  [*RFO02*], [*Gestione dei magazzini non operativi.*],[],
  [*RFO02/01*], [Ciascun magazzino può trovarsi nello stato "non operativo".],[],
  [*RFO02/02*], [Il sistema può annullare ordini di un magazzino "non operativo".], [],
  [*RFO02/03*], [Il sistema può può assegnare ordini di un magazzino "non operativo" ad altri magazzini.], [],

)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] funzionali_]

== Requisiti#super[G] di Vincolo
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(x,y)=> if y==0 {rgb("#2599ff")} else if x == 0 {luma(235)},
)

#table(
  columns: (1fr, 3.5fr, 1.2fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]

  ),

//Requisiti di Vincolo obbligatori
  [*RV01*], [L'architettura del sistema deve usare microservizi.], [capitolato#super[G]],

  [*RV02*], [Versionamento del codice tramite Git.], [capitolato#super[G]],

//Requisiti di Vincolo desiderabili

//Requisiti di Vincolo opzionali

)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] di vincolo_]

== Requisiti#super[G] di Qualità
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(x,y)=> if y==0 {rgb("#2599ff")} else if x == 0 {luma(235)},
)

#table(
  columns: (1fr, 3.5fr, 1.2fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),
//Requisiti di Qualità Obbligatori

  [*RQ01*], [*Autonomia dei magazzini.*], [capitolato#super[G]],
  [*RQ01/01*], [I magazzini devono poter operare autonomamente.], [capitolato#super[G]],
  [*RQ01/02*], [I magazzini devono poter elaborare localmente le richieste.], [capitolato#super[G]],
  [*RQ01/03*], [Ciascun magazzino deve gestire gli ordini concorrenti per uno stesso prodotto secondo una politica predefinita.], [],

  [*RQ02*], [*Robustezza dei magazzini.*], [capitolato#super[G]],
  [*RQ02/01*], [I dati di inventario e degli ordini devono essere coerenti, consistenti e persistenti in tutto il sistema.], [capitolato#super[G]],
  [*RQ02/02*], [I dati di inventario devono essere resilienti a modifiche concorrenti.], [],

  [*RQ03*], [*Sicurezza del sistema.*], [capitolato#super[G]],
  [*RQ03/01*], [Deve essere implementata la cifratura#super[G] end-to-end negli scambi dei dati tra magazzini e con il sistema.], [capitolato#super[G]],
  [*RQ03/02*], [Il sistema deve implementare un log dei tentativi di accesso.], [capitolato#super[G]],
  [*RQ03/03*], [Il sistema deve identificare tentativi di accesso non autorizzati.], [capitolato#super[G]],
  [*RQ03/04*], [Il sistema deve notificare il Supervisore Globale di tentativi di accesso non autorizzati.], [capitolato#super[G]],

  [*RQ04*], [*Unit test e code coverage.*], [capitolato#super[G]],
  [*RQ04/01*], [La correttezza delle funzioni sviluppate deve essere garantita dai test unitari.], [capitolato#super[G]],
  [*RQ04/02*], [La copertura del codice deve essere superiore al ____ .], [capitolato#super[G]], //INSERIRE CODE-COVERAGE DI M31   
  [*RQ04/03*], [Il test devono poter essere eseguiti in maniera automatizzata.], [capitolato#super[G]],
  [*RQ04/04*], [Devono essere eseguiti test di non regressione.], [capitolato#super[G]],

  [*RQ05*], [*Test book dettagliato.*], [capitolato#super[G]],
  [*RQ05/01*], [Tutti i test devono essere documentati in un test book.], [capitolato#super[G]],
  [*RQ05/02*], [Il test book deve includere una descrizione dei casi di test.], [capitolato#super[G]],  
  [*RQ05/03*], [Il test book deve includere le condizioni iniziali dei test.], [capitolato#super[G]],
  [*RQ05/04*], [Il test book deve includere i passaggi eseguiti dai test.], [capitolato#super[G]],    
  [*RQ05/05*], [Il test book deve includere i risultati attesi e ottenuti dai test.], [capitolato#super[G]],
  [*RQ05/06*], [Il test book deve includere criteri di validazione dei test.], [capitolato#super[G]],

  [*RQ06*], [Il Sistema deve essere scalabile orizzontalmente.], [capitolato#super[G]],

  [*RQ07*], [La gestione dei magazzini deve essere distribuita.], [capitolato#super[G]],


//Requisiti di Qualità desiderabili

  [*RQD01*], [Il sistema deve automatizzare il processo di riassortimento#super[G] se rispetta il costo e la distanza massima.], [capitolato#super[G]],

  [*RQD02*], [II magazzino detiene la fonte affidabile dei dati di inventario e degli ordini.], [capitolato#super[G]],

//Requisiti di Qualità opzionali

  [*RQO01*], [*Sicurezza del sistema.*], [capitolato#super[G]],
  [*RQO01/01*], [Il sistema deve prevedere la possibilità di autenticazione#super[G] a due fattori (2FA#super[G]) o più (MFA#super[G]) per gli utenti.], [capitolato#super[G]],
  [*RQO01/02*], [Il sistema deve verificare l'integrità dei dati tramite firme digitali o hashing.], [capitolato#super[G]],
  [*RQO01/03*], [Le richieste verso i microservizi devono essere autenticate.], [capitolato#super[G]],
  [*RQO01/04*], [Gli scambi di dati tra microservizi devono essere cifrati.], [capitolato#super[G]],

  [*RQO02*], [*Backup e ripristino dei dati.*], [capitolato#super[G]],
  [*RQO02/01*], [I dati dei magazzini devono essere sottoposti a backup.], [capitolato#super[G]],
  [*RQO02/02*], [I dati aggregati su cloud devono essere sottoposti a backup.], [capitolato#super[G]],
  [*RQO02/03*], [I magazzini devono mantenere una copia locale dei propri dati.], [capitolato#super[G]],
  [*RQO02/04*], [Il sistema deve mantenere l'integrità e la consistenza dei dati tra i magazzini.], [capitolato#super[G]],

)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] di qualità_]

/*
== Requisiti#super[G] Prestazionali ???
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(x,y)=> if y==0 {rgb("#2599ff")} else if x == 0 {luma(235)},
)

#table(
  columns: (1fr, 3.5fr, 1.2fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]

  ),

Requisiti Prestazionali obbligatori
  //[*RP01*], [*Mantenimento di prestazioni elevate anche con carichi elevati di dati e richieste simultanee.*], [capitolato#super[G]],


)

#align(center)[_Tabella #tabella_counter: Requisiti#super[G] prestazionali_]
*/

#pagebreak()

== Tracciamento dei casi d'uso

#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)
/* NON AGGIORNATI
#table(
  columns: (1fr, 1fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Requisito*], [*Casi d'Uso*],

  ),
  // Requisiti funzionali

  [*RF01*], [#link(label("uc-4"), underline("[UC 4]"))],
  [*RF01/01*], [#link(label("uc-4.1"), underline("[UC 4.1]"))],
  [*RF01/02*], [#link(label("uc-4.2"), underline("[UC 4.2]"))],

  [*RF02*], [#link(label("uc-5"), underline("[UC 5]"))],
  [*RF02/01*], [#link(label("uc-5.1"), underline("[UC 5.1]"))],
  [*RF02/02*], [#link(label("uc-5.2"), underline("[UC 5.2]"))],
  [*RF02/03*], [#link(label("uc-5.3"), underline("[UC 5.3]"))],
  [*RF02/04*], [#link(label("uc-5.4"), underline("[UC 5.4]"))],
  [*RF02/05*], [#link(label("uc-5.5"), underline("[UC 5.5]"))],

  [*RF03*], [#link(label("uc-6"), underline("[UC 6]"))],
  [*RF03/01*], [#link(label("uc-6.1"), underline("[UC 6.1]"))],
  [*RF03/02*], [#link(label("uc-6.2"), underline("[UC 6.2]"))],
  [*RF03/03*], [#link(label("uc-6.3"), underline("[UC 6.3]"))],

  [*RF04*], [#link(label("uc-7"), underline("[UC 7]"))],
  [*RF04/01*], [#link(label("uc-7.1"), underline("[UC 7.1]"))],
  [*RF04/02*], [#link(label("uc-7.2"), underline("[UC 7.2]"))],
  [*RF04/03*], [#link(label("uc-7.3"), underline("[UC 7.3]"))],
  [*RF04/04*], [#link(label("uc-7.4"), underline("[UC 7.4]"))],

  [*RF05*], [#link(label("uc-7.3"), underline("[UC 7.3]"))],
  [*RF05/01*], [#link(label("uc-7.3"), underline("[UC 7.3]"))],

  [*RF06*], [#link(label("uc-8"), underline("[UC 8]"))],
  [*RF06/01*], [#link(label("uc-8"), underline("[UC 8]"))],

  [*RF07*], [#link(label("uc-9"), underline("[UC 9]"))],
  [*RF07/01*], [#link(label("uc-9.1"), underline("[UC 9.1]"))],
  [*RF07/02*], [#link(label("uc-9.2"), underline("[UC 9.2]"))],
  [*RF07/03*], [#link(label("uc-9.3"), underline("[UC 9.3]"))],

  [*RF08*], [#link(label("uc-10"), underline("[UC 10]"))],
  [*RF08/01*], [#link(label("uc-10.1"), underline("[UC 10.1]"))],
  [*RF08/02*], [#link(label("uc-10.2"), underline("[UC 10.2]"))],
  [*RF08/03*], [#link(label("uc-10.3"), underline("[UC 10.3]"))],
  [*RF08/04*], [#link(label("uc-10.4"), underline("[UC 10.4]"))],
  [*RF08/05*], [#link(label("uc-10.5"), underline("[UC 10.5]"))],

  [*RF09*], [#link(label("uc-11"), underline("[UC 11]"))],
  [*RF09/01*], [#link(label("uc-11.1"), underline("[UC 11.1]"))],
  [*RF09/02*], [#link(label("uc-11.2"), underline("[UC 11.2]"))],
  [*RF09/03*], [#link(label("uc-11.3"), underline("[UC 11.3]"))],

  [*RF10*], [#link(label("uc-12"), underline("[UC 12]"))],
  [*RF10/01*], [#link(label("uc-12.1"), underline("[UC 12.1]"))],
  [*RF10/02*], [#link(label("uc-12.2"), underline("[UC 12.2]"))],

  [*RF11*], [#link(label("uc-4"), underline("[UC 4]")), #link(label("uc-7"), underline("[UC 7]"))],
  [*RF11/01*], [#link(label("uc-5.5"), underline("[UC 5.5]"))],
  [*RF11/02*], [#link(label("uc-7.4"), underline("[UC 7.4]"))],

  [*RF12*], [#link(label("uc-13"), underline("[UC 13]"))],
  [*RF12/01*], [#link(label("uc-13"), underline("[UC 13]"))],
  [*RF12/02*], [#link(label("uc-13.1"), underline("[UC 13.1]"))],
  [*RF12/02*], [#link(label("uc-13.3"), underline("[UC 13.3]"))],
  
  [*RF13*], [#link(label("uc-14"), underline("[UC 14]"))],
  [*RF13/01*], [#link(label("uc-14.1"), underline("[UC 14.1]"))],
  [*RF13/02*], [#link(label("uc-14.2"), underline("[UC 14.2]"))],
  [*RF13/03*], [#link(label("uc-14.3"), underline("[UC 14.3]"))],

  [*RF14*], [#link(label("uc-17"), underline("[UC 17]"))],
  [*RF14/01*], [#link(label("uc-17.1"), underline("[UC 17.1]"))],
  [*RF14/02*], [#link(label("uc-17.2"), underline("[UC 17.2]"))],

  [*RF15*], [#link(label("uc-1"), underline("[UC 1]")), #link(label("uc-1.1"), underline("[UC 1.1]")), #link(label("uc-1.2"), underline("[UC 1.2]")), #link(label("uc-2"), underline("[UC 2]"))],
  [*RF15/01*], [#link(label("uc-1"), underline("[UC 1]")), #link(label("uc-1.1"), underline("[UC 1.1]")), #link(label("uc-1.2"), underline("[UC 1.2]")), #link(label("uc-2"), underline("[UC 2]"))],
  [*RF15/02*], [#link(label("uc-1"), underline("[UC 1]")), #link(label("uc-1.1"), underline("[UC 1.1]")), #link(label("uc-1.2"), underline("[UC 1.2]")), #link(label("uc-2"), underline("[UC 2]"))],
  [*RF15/03*], [#link(label("uc-3"), underline("[UC 3]"))],

  [*RFD01*], [#link(label("uc-21"), underline("[UC 21]"))],
  [*RFD01/01*], [#link(label("uc-21"), underline("[UC 21]"))],
  [*RFD01/02*], [#link(label("uc-21.1"), underline("[UC 21.1]"))],
  [*RFD01/03*], [#link(label("uc-21.3"), underline("[UC 21.3]"))],

  [*RFD03*], [#link(label("uc-19"), underline("[UC 19]"))],
  [*RFD03/01*], [#link(label("uc-19.1"), underline("[UC 19.1]"))],
  [*RFD03/02*], [#link(label("uc-19.2"), underline("[UC 19.2]"))],
  [*RFD03/03*], [#link(label("uc-19.3"), underline("[UC 19.3]"))],

  [*RFD04*], [#link(label("uc-20"), underline("[UC 20]"))],
  [*RFD04/01*], [#link(label("uc-20.1"), underline("[UC 20.1]"))],
  [*RFD04/02*], [#link(label("uc-20.2"), underline("[UC 20.2]"))],
  [*RFD04/03*], [#link(label("uc-20.3"), underline("[UC 20.3]"))],
  [*RFD04/04*], [#link(label("uc-20.4"), underline("[UC 20.4]"))],

  //Requisiti di qualità
  [*RQ01*], [#link(label("uc-15"), underline("[UC 15]"))],
  [*RQ01/01*], [#link(label("uc-15.1"), underline("[UC 15.1]"))],
  [*RQ01/02*], [#link(label("uc-15.2"), underline("[UC 15.2]"))],
  [*RQ01/03*], [#link(label("uc-15.3"), underline("[UC 15.3]"))],

  [*RQ03*], [#link(label("uc-18"), underline("[UC 18]"))],
  [*RQ03/01*], [#link(label("uc-18.1"), underline("[UC 18.1]"))],
  [*RQ03/02*], [#link(label("uc-18.2"), underline("[UC 18.2]"))],
  [*RQ03/03*], [#link(label("uc-18.3"), underline("[UC 18.3]"))],
  [*RQ03/04*], [#link(label("uc-18.4"), underline("[UC 18.4]"))],
)
*/
#align(center)[_Tabella #tabella_counter: Tracciamento dei Casi d'Uso_]

\
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=> if y==0 {rgb("#2599ff")} else if y == 5 {luma(235)},
)

#table(
  columns: (1fr, 0.5fr, 0.5fr, 0.5fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*],

  ),
  // DA AGGIORNARE
  [*Funzionali*],[57],[27],[5],
  [*Qualità*],[47],[-],[23],
  [*Prestazionali*],[4],[-],[-],
  [*Vincolo*],[-],[-],[-],
  [*Totale*],[*108*],[*27*],[*28*],
)
#align(center)[_Tabella #tabella_counter: Riepilogo dei Requisiti_]