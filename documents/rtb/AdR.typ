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

#let versione = "0.6.1"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
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
  title: [#titolo#super[G]],
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
    [*Scenario\ Secondario*],[Sono variazioni dello scenario principale che si verificano quando una delle operazioni previste non va a buon fine.],
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
    [*Utente*], [Utente che vuole accedere per usufruire del Sistema.],
    [*Supervisore\ Globale*], [Gestisce l’intero sistema di magazzini con visualizzazione globale.],
    [*Supervisore\ Locale*], [Gestisce uno o più magazzini a lui affidati dal Supervisore Globale.],
    [*Sistema\ Centralizzato*],[Rappresenta le funzioni automatiche del server centrale, come controlli, aggiornamenti, notifiche e calcoli. Agisce senza intervento umano, in risposta a eventi o comandi degli utenti _(tra cui Supervisore Locale e Supervisore Globale)_.],
)


Identificativo univoco del caso d’uso, composto da un ID principale che identifica il caso principale e, se necessario, da un ID del sottocaso.

#pagebreak()
== Lista dei Casi d'uso
=== - UC 1: Autenticazione#super[G]
#label("uc-1")
#figure(
  image("assets/Casi d'uso-UC1.drawio.png", width: 90%),
  caption: [UC1 - Autenticazione]
)
- *Attore Principale*: Utente
- *Precondizione*:
  - Il Sistema è attivo, in modalità online o offline. 
  - L’Utente non è autenticato nel Sistema.
- *Postcondizione*:
  - L’Utente ha eseguito l’accesso al Sistema.    Autenticandosi si ottiene i permessi di Supervisione Globale o Supervisore Locale sulla base del ruolo associato alle credenziali.
- *Scenario principale*:
  + L'Utente inserisce lo Username → #link(label("uc-1.1"), underline("[UC 1.1]"))
  + L’Utente inserisce la Password → #link(label("uc-1.2"), underline("[UC 1.2]"))
- *Scenario alternativo*:
  - L’Utente inserisce lo Username o la Password errati → #link(label("uc-2"), underline("[UC 2]"))
- *Inclusioni*:
  - #link(label("uc-1.1"), underline("[UC 1.1]"))
  - #link(label("uc-1.2"), underline("[UC 1.2]"))
  - #link(label("uc-18.3"), underline("[UC 18.3]"))
- *Estensioni*:
  - #link(label("uc-2"), underline("[UC 2]"))
  - #link(label("uc-18.2"), underline("[UC 18.2]"))

- *Trigger*: 
  - L’Utente vuole autenticarsi per accedere al Sistema. 

==== - UC 1.1: Inserimento Username
#label("uc-1.1")

- *Attore Principale*: Utente
- *Precondizione*:
  - Il Sistema è attivo, in modalità online o offline.
  - L’Utente non è autenticato nel Sistema.
  - L’Utente vuole autenticarsi per accedere al sistema.
  - Il Sistema non riconosce lo Username inserito dall’Utente.
- *Postcondizione*:
  - Il Sistema riceve lo Username con il quale l’Utente vuole autenticarsi per accedere al Sistema.

- *Scenario principale*:
  + L’Utente inserisce il proprio Username.
  + L’Utente inserisce la Password.
- *Trigger*: 
  - L’Utente vuole autenticarsi per accedere al Sistema.
==== - UC 1.2: Inserimento Password
#label("uc-1.2")
- *Attore Principale*: Utente
- *Precondizione*:
  - Il Sistema è attivo, in modalità online o offline.
  - L’Utente non è autenticato nel Sistema.
  - L’Utente vuole autenticarsi per accedere al sistema.
  - Il Sistema non riconosce lo Username inserito dall’Utente.
- *Postcondizione*:
  - Il Sistema riceve la Password con la quale l’Utente vuole autenticarsi per accedere al Sistema.
- *Scenario principale*:
  + L’Utente inserisce la propria Password.
- *Trigger*: 
  - L’Utente vuole autenticarsi per accedere al Sistema.

#pagebreak() 
=== - UC 2: Autenticazione#super[G] non riuscita
#label("uc-2")
#figure(
  image("assets/Casi d'uso-UC2.drawio.png", width: 90%),
  caption: [UC2 - Autenticazione non riuscita]
)
- *Attore Principale*: Utente
- *Precondizione*:
  - Il Sistema è attivo, in modalità online o offline.
  - L’Attore Principale non è autenticato nel Sistema.
  - L’Attore Principale ha inserito, in fase di autenticazione#super[G], uno Username o una Password errata.
- *Postcondizione*:
  - Il Sistema annulla l’autenticazione#super[G].
  - Il Sistema mostra a schermo circa l’errore di autenticazione#super[G].
- *Scenario principale*:
  + L’Utente inserisce lo Username. 
  + L’Utente inserisce la Password.
- *Scenario alternativo*:
  - Il Sistema ha ricevuto Username e Password, ma le credenziali sono risultate errate.
- *Inclusioni*:
  - #link(label("uc-18.3"), underline("[UC 18.3]"))
- *Estensioni*:
  - #link(label("uc-18.4"), underline("[UC 18.4]"))

#pagebreak()
=== - UC 3: Logout
#label("uc-3")
#figure(
  image("assets/Casi d'uso-UC3.drawio.png", width: 90%),
  caption: [UC3 - Logout]
)

- *Attore Principale*: Utente
- *Precondizioni*: 
  - Il Sistema è attivo.
  - L’Attore Principale è autenticato nel Sistema.
- *Postcondizioni*: 
  - L’Utente viene disconnesso.
  - Le funzionalità riservate non sono più accessibili fino a nuova autenticazione#super[G] (login).
-  *Scenario principale*:
  + L’Utente clicca su “Logout” o seleziona l’opzione di disconnessione.
  + Il Sistema termina la sessione dell’Utente.
  + Il Sistema mostra la schermata iniziale o di login.
- *Inclusioni*:
  - #link(label("uc-18.3"), underline("[UC 18.3]"))
- *Estensioni*: 
  - #link(label("uc-1"), underline("[UC 1]")) (per rientrare)
- *Trigger*: 
  - Utente vuole uscire dal sistema.

#pagebreak()
=== - UC 4: Rilevamento carenza scorte#super[G]
#label("uc-4")
#figure(
  image("assets/Casi d'uso-UC4.drawio.png", width: 90%),
  caption: [UC4 - Rilevamento carenza scorte]
)
- *Attore Principale*: Supervisore Locale, Supervisore Globale, Sistema Centralizzato.
- *Precondizioni*: 
  - Il Sistema è attivo, in modalità online o offline.
  - Le Soglie minime per i prodotti#super[G] sono definite nel Sistema.
- *Postcondizioni*: 
  - I Supervisori sono notificati della carenza di scorte#super[G]. L’evento è tracciato.
- *Scenario principale*:
  + Il Sistema Centralizzato monitora le scorte#super[G] periodicamente.
  + Il Sistema Centralizzato verifica se qualche scorta#super[G] è inferiore alla soglia minima.
  + Il Sistema Centralizzato, se rileva una carenza, genera un evento.
  + Il Sistema Centralizzato genera una notifica email inviata ai Supervisori contenente:
    - Nome del prodotto#super[G].
    - Quantità residua.
    - Magazzino interessato.
    - Data e ora del rilevamento.
  + La notifica viene mostrata in tempo reale anche nella dashboard del supervisore
  + I supervisori accedono al sistema per visualizzare le carenze.
- *Scenario alternativo*:
  - La soglia minima non è definita → il Sistema Centralizzato salta il controllo per quel prodotto#super[G] e genera un avviso di configurazione mancante.
- *Inclusioni*:
  - #link(label("uc-4.1"), underline("[UC 4.1]"))
  - #link(label("uc-4.2"), underline("[UC 4.2]"))
- *Estensioni*:
  - #link(label("uc-4.3"), underline("[UC 4.3]"))

==== - UC 4.1: Monitoraggio#super[G] continuo delle scorte#super[G]
#label("uc-4.1")
- *Attore Principale*: Sistema Centralizzato.
- *Precondizioni*: 
  - Il Sistema è attivo, in modalità online o offline.
  - Il Database delle giacenze è disponibile.
- *Postcondizioni*: 
  - Il rilevamento aggiornato delle risorse è stato effettuato.
- *Scenario principale*:
  + Il Sistema Centralizzato interroga il database su cloud o riceve input aggiornati.
  + Il Sistema Centralizzato passa i dati aggiornati al modulo di identificazione carenza. → #link(label("uc-4.2"), underline("[UC 4.2]"))
- *Scenario alternativo*:
  - Il database è temporaneamente non accessibile → il Sistema Centralizzato tenta nuovamente dopo un intervallo definito. → #link(label("uc-4.1"), underline("[UC 4.1]"))
- *Estensioni*:
  - #link(label("uc-4.1.1"), underline("[UC 4.1.1]"))
- *Trigger*:
  - Evento schedulato a modifica delle giacenze.

===== - UC 4.1.1: Errore nel caricamento dei dati scorte#super[G]
#label("uc-4.1.1")
- *Attore Principale*: Sistema Centralizzato.
- *Scenario principale*:
  + Il sistema centralizzato riceve un errore
  + Se fallisce, notifica il fallimento.
  + Il sistema centralizzato attende che il database ritorni operativo a generare eventi
- *Inclusioni*: 
  - #link(label("uc-4.1"), underline("[UC 4.1]"))
- *Trigger*: 
  - Fallimento nel recupero dei dati.

==== - UC 4.2: Identificazione carenza scorte#super[G]
#label("uc-4.2")
- *Attore Principale*: Sistema Centralizzato.
- *Precondizioni*: 
  - Il Sistema è attivo, in modalità online o offline.
  - Sono disponibili dati aggiornati sulle giacenze e soglie minime.
- *Postcondizioni*: 
  - Per ogni prodotto#super[G] sotto soglia, viene inviata una notifica email ai supervisori.
- *Scenario principale*:
  + Il Sistema Centralizzato confronta la quantità disponibile con la soglia minima.
  + Se la quantità è sotto soglia, registra un evento di carenza.
  + Notifica i Supervisori.
- *Scenario alternativo*:
  - Il database è temporaneamente non accessibile → il Sistema Centralizzato rimane in attesa che il Database ritorni disponibile.
- *Trigger*: 
  - Invocazione da #link(label("uc-4.1"), underline("[UC 4.1]"))

==== - UC 4.3: Accesso ai dettagli della carenza non riuscito
#label("uc-4.3")
- *Attore Principale*: Supervisore Locale, Supervisore Globale.
- *Scenario principale*:
  - Il Supervisore tenta di visualizzare l’evento.
  - Il Sistema Centralizzato non riesce a caricare i dati.
  - Il Sistema Centralizzato notifica il fallimento.
- *Inclusioni*: 
  - #link(label("uc-4.1"), underline("[UC 4.1]"))
- *Trigger*: 
  - Tentativo di accesso ai dettagli.

#pagebreak()
=== - UC 5: Trasferimento#super[G] di scorte#super[G]
#label("uc-5")
#figure(
  image("assets/Casi d'uso-UC5.drawio.png", width: 90%),
  caption: [UC5 - Trasferimento di scorte]
)
- *Attore Principale*: Supervisore Locale, Supervisore Globale, Sistema Centralizzato.
- *Precondizioni*:
  - Il Sistema è attivo, in modalità online o offline.
  - L’Utente è autenticato con i permessi necessari (Supervisore Locale o Globale).
  - Il magazzino di origine è registrato e attivo nel sistema. Nel caso di un trasferimento interno, anche il magazzino di destinazione è registrato.
- *Postcondizioni*:
  - L’inventario#super[G] globale viene aggiornato in entrambi i magazzini.
  - La richiesta viene registrata e tracciata nel Sistema.
- *Scenario Principale*:
  + Il Supervisore o il sistema centralizzato richiedono un trasferimento#super[G] tra magazzini → #link(label("uc-5.1"), underline("[UC 5.1]"))
  + Il sistema centralizzato verifica la disponibilità delle scorte#super[G] nel magazzino di origine → #link(label("uc-5.2"), underline("[UC 5.2]"))
  + Nel caso di un trasferimento interno, se la verifica è positiva, il sistema centralizzato aggiorna l’inventario#super[G] di origine e destinazione → #link(label("uc-5.3"), underline("[UC 5.3]")). Altrimenti, nel caso di un trasferimento verso l'esterno, se la verifica è positiva, il sistema centralizzato aggiorna solo l'inventario di origine.
  + Il sistema centralizzato genera un ID di tracciamento del trasferimento#super[G] → #link(label("uc-5.4"), underline("[UC 5.4]"))
  + Lo stato del trasferimento#super[G] viene aggiornato in tempo reale fino al completamento → #link(label("uc-5.5"), underline("[UC 5.5]"))
- *Scenario Alternativo*:
  - Le scorte#super[G] richieste non sono disponibili → #link(label("uc-8"), underline("[UC 8]"))
  - Il tracciamento in tempo reale fallisce → il sistema centralizzato registra aggiornamenti asincroni.
- *Inclusioni*:
  - #link(label("uc-5.1"), underline("[UC 5.1]"))
  - #link(label("uc-5.2"), underline("[UC 5.2]"))
  - #link(label("uc-5.3"), underline("[UC 5.3]"))
  - #link(label("uc-5.4"), underline("[UC 5.4]"))
  - #link(label("uc-5.5"), underline("[UC 5.5]"))
- *Estensioni*:
  - #link(label("uc-5.6"), underline("[UC 5.6]"))
  - #link(label("uc-5.7"), underline("[UC 5.7]"))
  - #link(label("uc-5.8"), underline("[UC 5.8]"))
  - #link(label("uc-8"), underline("[UC 8]"))
- *Trigger*:
  - Il Supervisore avvia una richiesta di trasferimento#super[G].

==== - UC 5.1: Invio richiesta di trasferimento#super[G]
#label("uc-5.1")
- *Attore Principale*: Supervisore Locale, Supervisore Globale, Sistema Centralizzato.
- *Precondizioni*:
  - Supervisore è autenticato.
  - I magazzini selezionati esistono nel sistema.
- *Postcondizioni*:
  - Una richiesta formale di trasferimento#super[G] è inviata al sistema centralizzato.
- *Scenario Principale*:
  + Il supervisore seleziona magazzino di origine e destinazione.
  + Inserisce i prodotti#super[G] e le quantità da trasferire.
  + Invia la richiesta.
  + Il sistema centralizzato la registra e passa alla fase di validazione#super[G].

==== - UC 5.2: Validazione#super[G] disponibilità scorte#super[G]
#label("uc-5.2")
- *Attore Principale*: Sistema Centralizzato.
- *Precondizioni*:
  - È stata inviata una richiesta di trasferimento#super[G].
- *Postcondizioni*:
  - Le quantità richieste sono validate o rifiutate.
- *Scenario Principale*:
  + Il sistema centralizzato recupera i dati dell’inventario#super[G] del magazzino di origine.
  + Confronta la quantità richiesta con quella disponibile.
  + Se la disponibilità è sufficiente, prosegue con il trasferimento#super[G].
- *Scenari Alternativi*:
  - Scorte#super[G] non sufficienti → il Sistema centralizzato annulla la richiesta e notifica l’errore.
  - Il Supervisore può modificare la quantità o annullare l’operazione.

==== - UC 5.3: Aggiornamento inventario#super[G] di entrambi i magazzini
#label("uc-5.3")
- *Attore Principale*: Sistema Centralizzato.
- *Precondizioni*:
  - La disponibilità delle scorte#super[G] è stata validata.
- *Postcondizioni*:
  - L’inventario#super[G] del magazzino di origine viene decrementato.
  - L’inventario#super[G] del magazzino di destinazione viene incrementato.
- *Scenario Principale*:
  + Il sistema centralizzato decrementa le quantità dal magazzino di origine nel momento di accettazione dell'ordine.
  + L'ordine viene a tutti gli effetti spedito verso il magazzino di destinazione.
  + Al completamento del trasferimento, incrementa le quantità nel magazzino di destinazione.
  + Registra l’operazione.

==== - UC 5.4: Tracciamento del trasferimento#super[G] dei prodotti#super[G]
#label("uc-5.4")
- *Attore Principale*: Sistema Centralizzato.
- *Precondizioni*:
  - Il trasferimento è stato avviato.
- *Postcondizioni*:
  - Il trasferimento è assegnato ad un ID tracciabile.
- *Scenario Principale*:
  + Il sistema centralizzato assegna un ID univoco al trasferimento.
  + Registra varie informazioni sul trasferimento (orari, quantità, origine, destinazione, ...)
  + Rende i dati consultabili ai supervisori.
- *Estensioni*:
  - #link(label("uc-5.8"), underline("[UC 5.8]"))

==== - UC 5.5: Aggiornamento stato del trasferimento#super[G]
#label("uc-5.5")
- *Attore Principale*: Supervisore Locale.
- *Precondizioni*:
  - Il trasferimento#super[G] è in corso.
- *Postcondizioni*:
  - Lo stato viene aggiornato fino a “Completato” o “Fallito”.
- *Scenario Principale*:
  + Il supervisore locale può aggiornare lo stato mano a mano che il processo avanza (es. preparazione, transito, consegnato…).
  + Eventuali anomalie vengono registrate e notificate.
  + Al completamento, lo stato può essere impostato su “Completato” dal supervisore locale.
- *Estensioni*:
  - #link(label("uc-5.7"), underline("[UC 5.7]"))

==== - UC 5.6: Annullamento richiesta di trasferimento#super[G]
#label("uc-5.6")
- *Attore Principale*: Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - Esiste una richiesta di trasferimento#super[G] non ancora completata (in corso).
- *Postcondizioni*:
  - Il trasferimento#super[G] viene annullato e lo stato aggiornato a “Annullato”.
  - Non viene eseguita alcuna modifica agli inventari#super[G] (se non già applicata).
- *Scenario Principale*:
  + Il supervisore seleziona un trasferimento#super[G] in stato "In attesa".
  + Il supervisore "Annulla".
  + Il sistema centrale conferma l’intenzione.
  + Il sistema centrale aggiorna lo stato a “Annullato”.
  + Eventuali risorse prenotate (es. veicoli, operatori) vengono liberate.
/* Non si può annullare un trasferimento che è in stato "in transito"*/

==== - UC 5.7: Notifica automatica esito trasferimento#super[G]
#label("uc-5.7")
- *Attore Principale*: Sistema Centralizzato, Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - Il trasferimento#super[G] ha cambiato stato (es. da “In transito” a “Consegnato”).
- *Postcondizioni*:
  - L’utente supervisore riceve una notifica con lo stato aggiornato.
- *Scenario Principale*:
  + Il sistema centralizzato monitora il cambiamento dello stato
  + Quando il trasferimento#super[G] passa a “Consegnato” o “Fallito”, il sistema centralizzato invia una notifica.
  + Il supervisore riceve una notifica.
- *Trigger*:
  - Il sistema centralizzato rileva una modifica di stato rilevante.

==== - UC 5.8: Registrazione storico trasferimenti#super[G]
#label("uc-5.8")
- *Attore Principale*: Sistema Centralizzato.
- *Precondizioni*:
  - Il trasferimento#super[G] è stato registrato e ha un ID.
- *Postcondizioni*:
  - I dati vengono salvati in archivio storico che può essere consultato.
- *Scenario Principale*:
  + Al termine del trasferimento#super[G], il sistema centralizzato raccoglie tutti i dati associati.
  + Salva il record in un archivio storico.
  + Il record è consultabile da reportistica o cruscotti.
- *Trigger*:
  - Completamento del trasferimento#super[G].

#pagebreak()
=== - UC 6: Gestione scorte#super[G] minime necessarie
#label("uc-6")
#figure(
  image("assets/Casi d'uso-UC6.drawio.png", width: 90%),
  caption: [UC6 - Gestione scorte minime necessarie]
)
- *Attori Principali*: Sistema Centralizzato, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il Sistema è attivo e in esecuzione periodica o su richiesta.
  - L’utente ha accesso al sistema come supervisore.
  - L’inventario#super[G] dei prodotti#super[G] è già stato inizializzato.
- *Postcondizioni*:
  - Le scorte#super[G] minime sono definite, calcolate e viene attivato un monitoraggio#super[G] costante.
- *Scenario principale*:
  + Il supervisore accede al sistema.
  + Definisce manualmente i livelli minimi per ciascun prodotto#super[G] → #link(label("uc-6.1"), underline("[UC 6.1]"))
  + Il sistema centralizzato calcola dinamicamente i livelli minimi suggeriti → #link(label("uc-6.2"), underline("[UC 6.2]"))
  + Il sistema centralizzato monitora in tempo reale le scorte#super[G] rispetto al minimo → #link(label("uc-6.3"), underline("[UC 6.3]"))
  + Se necessario, vengono suggerite o attivate azioni correttive → #link(label("uc-6.4"), underline("[UC 6.4]")), #link(label("uc-6.5"), underline("[UC 6.5]"))
- *Scenario alternativo*:
  - Il Sistema centralizzato notifica l’anomalia al Supervisore Globale.
- *Inclusioni*:
  - #link(label("uc-6.1"), underline("[UC 6.1]"))
  - #link(label("uc-6.2"), underline("[UC 6.2]"))
  - #link(label("uc-6.3"), underline("[UC 6.3]"))
  - #link(label("uc-7"), underline("[UC 7]"))
- *Estensioni*:
  - #link(label("uc-6.4"), underline("[UC 6.4]"))
  - #link(label("uc-6.5"), underline("[UC 6.5]"))
- *Trigger*:
  - Ciclo schedulato automatico.
  - Richiesta esplicita da parte del Supervisore.
  - Modifica delle soglie.
  - Cambiamenti nell’inventario#super[G] (arrivi, trasferimenti#super[G], ordini#super[G], …).

==== - UC 6.1: Definizione manuale del livello minimo di scorte#super[G]
#label("uc-6.1")
- *Attori Principali*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il prodotto#super[G] è registrato nel sistema.
  - L’utente ha i permessi per la modifica.
- *Postcondizioni*:
  - Il livello minimo viene salvato nel sistema.
- *Scenario principale*:
  + Il supervisore seleziona un prodotto#super[G].
  + Inserisce la soglia minima desiderata.
  + Il sistema centralizzato salva il valore nel database.
- *Scenari alternativi*:
  - Il supervisore inserisce una soglia non valida.
  - Il sistema centralizzato mostra un errore a schermo.

==== - UC 6.2: Calcolo automatico del livello minimo di scorte#super[G]
#label("uc-6.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Sono disponibili dati storici di consumo per il prodotto#super[G].
- *Postcondizioni*:
  - Viene calcolata una soglia minima suggerita (basata su media o modelli previsionali).
- *Scenario principale*:
  + Il sistema centralizzato analizza i dati di vendita e consumo.
  + Applica una formula (es. media giornaliera…).
  + Salva il livello suggerito.
  + Notifica al supervisore dell'applicazione di una nuova soglia minima.
- *Scenari alternativi*:
  - Mancanza di dati.
  - Viene proposta una soglia di default.

==== - UC 6.3: Monitoraggio#super[G] scorte#super[G] minime
#label("uc-6.3")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - I livelli minimi sono definiti o calcolati.
  - L’inventario#super[G] è aggiornato.
- *Postcondizioni*:
  - Il sistema centralizzato rileva eventuali scorte#super[G] sotto la soglia e può generare estensioni.
- *Scenario principale*:
  + Il sistema centralizzato confronta costantemente scorte#super[G] attuali e soglie minime.
  + Quando rileva un prodotto#super[G] sotto soglia → #link(label("uc-6.4"), underline("[UC 6.4]")), #link(label("uc-6.5"), underline("[UC 6.5]"))
- *Estensioni*:
  - #link(label("uc-6.4"), underline("[UC 6.4]"))
  - #link(label("uc-6.5"), underline("[UC 6.5]"))

==== - UC 6.4: Suggerimento azioni di riassortimento#super[G]
#label("uc-6.4")
- *Attori Principali*: Sistema Centralizzato, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema ha rilevato scorte#super[G] inferiori alla soglia minima.
- *Postcondizioni*:
  - Il sistema propone un riassortimento#super[G] (da fornitore o trasferimento#super[G] interno).
- *Scenario principale*:
  + Il sistema identifica un prodotto#super[G] sotto soglia.
  + Propone:
    - Richiesta di rifornimento da fornitore esterno.
    - Trasferimento#super[G] da altro magazzino.
  + Il supervisore approva o modifica il suggerimento.

==== - UC 6.5: Notifica superamento soglia critica
#label("uc-6.5")
- *Attori Principali*: Sistema Centralizzato, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Le scorte#super[G] di un prodotto#super[G] sono scese sotto un livello critico predefinito (ancora più basso della soglia minima).
- *Postcondizioni*:
  - L’utente riceve una notifica urgente.
- *Scenario principale*:
  //livello critico = livelli soglia minima/massima)
  + Il sistema rileva che il livello critico è stato superato.
  + Invia una notifica urgente al supervisore.

#pagebreak()
=== - UC 7: Bilanciamento scorte#super[G] tra magazzini
#label("uc-7")
#figure(
  image("assets/Casi d'uso-UC7.drawio.png", width: 90%),
  caption: [UC7 - Bilanciamento scorte tra magazzini]
)

- *Attori Principali*: Sistema Centralizzato, Supervisore Globale.
- *Precondizioni*:
  - Il Sistema centralizzato dispone di dati aggiornati sui livelli di sicurezza delle scorte#super[G].
  - Sono definiti i criteri di bilanciamento.
- *Postcondizioni*:
  - Il sistema centralizzato ha valutato la distribuzione delle scorte#super[G].
  - Sono state proposte o avviati i trasferimenti#super[G] o altre azioni correttive.
- *Scenario principale*:
  + Il Sistema centralizzato analizza la distribuzione delle scorte#super[G] → #link(label("uc-7.1"), underline("[UC 7.1]"))
  + Identifica eventuali squilibri → #link(label("uc-7.2"), underline("[UC 7.2]"))
  + Valuta se effettuare il riassortimento in modo automatica → #link(label("uc-7.3"), underline("[UC 7.3]"))
  + Effettua il riassortimento → #link(label("uc-7.4"), underline("[UC 7.4]"))
  + Verifica che i livelli minimi di sicurezza siano rispettati → #link(label("uc-4"), underline("[UC 4]"))
- *Scenari alternativi*:
  - Le proposte di trasferimento#super[G] violano i livelli minimi → scartate.
  - Il Supervisore richiede intervento manuale → sistema centralizzato non automatizza.
- *Inclusioni*:
  - #link(label("uc-7.1"), underline("[UC 7.1]"))
  - #link(label("uc-7.2"), underline("[UC 7.2]"))
  - #link(label("uc-7.3"), underline("[UC 7.3]"))
  - #link(label("uc-7.4"), underline("[UC 7.4]"))
  - #link(label("uc-4"), underline("[UC 4]"))
  - #link(label("uc-5"), underline("[UC 5]"))
- *Trigger*:
  - Attivazione programmata.
  - Supervisore Globale fa richiesta esplicita.

==== - UC 7.1: Analisi distribuzione delle scorte#super[G]
#label("uc-7.1")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - I dati di inventario#super[G] sono disponibili e aggiornati.
- *Postcondizioni*:
  - Il sistema centralizzato ha ottenuto una lista della distribuzione per prodotto#super[G].
- *Scenario principale*:
  + Il Sistema centralizzato raccoglie dati da tutti i magazzini.
  + Analizza le quantità e il fabbisogno previsto.
  + Elabora un report con la situazione attuale.
- *Trigger*:
  - Inizio processo di bilanciamento

==== - UC 7.2: Identificazione squilibri tra magazzini
#label("uc-7.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - è disponibile il risultato dell’analisi → #link(label("uc-7.1"), underline("[UC 7.1]"))
- *Postcondizioni*:
  - Viene individuata una lista di squilibri significativi.
- *Scenario principale*:
  + Il Sistema centralizzato confronta i livelli di stock tra magazzini.
  + Applica regole predefinite per identificare squilibri.
  + Memorizza gli esiti per successive valutazioni.

==== - UC 7.3: Valutazione effettuazione del riassortimento in modo automatico
#label("uc-7.3")
- *Attori Principali*: Sistema Centralizzato, Supervisore Globale.
- *Precondizioni*:
  - Il sistema centralizzato ha identificato squilibri di prodotto in almeno un magazzino.
- *Postcondizioni*:
  - Il riassortimento#super[G] può essere avviato automaticamente.
- *Scenario principale*:
  + Il Sistema centralizzato verifica i criteri per l’automazione (es. peso, costo, ...).
  + Se i criteri sono rispettati, genera l’ordine di riassortimento#super[G].
  + Aggiorna lo stato operativo.

==== - UC 7.4: Effettuazione del riassortimento
#label("uc-7.4")
- *Attori Principali*: Sistema Centralizzato, Supervisore Locale.
- *Precondizioni*:
  - I criteri sono rispettati, quindi si può effettuare il riassortimento.
- *Postcondizioni*:
  - Il sistema centralizzato ha inserito nel sistema degli ordini di trasferimento#super[G] interno.
- *Scenario principale*:
  + I criteri sono rispettati, quindi si può effettuare il riassortimento.
  + Invia la notifica ai Supervisori.
  + Vengono inseriti nel sistema centralizzato gli ordini di trasferimento.

#pagebreak()
=== - UC 8: Gestione ordini con scorte insufficienti
#label("uc-8")
#figure(
  image("assets/Casi d'uso-UC8.drawio.png", width: 60%),
  caption: [UC8 - Gestione ordini con scorte insufficienti]
)

- *Attori Principali*: Magazzino Locale.
- *Precondizioni*:
  - Ordine in elaborazione in un magazzino, ma la quantità di scorte per soddisfare l'ordine sono insufficienti.
- *Postcondizioni*:
  - Le scorte per soddisfare l'ordine sono inviate al magazzino.
- *Scenario principale*:
  + Il magazzino comunica al sistema centrale la quantità di scorte richiesta.
  + Il sistema centralizzato elabora la richiesta, ovvero decide da quali magazzini inviare la merce.
  + Vengono richiesti trasferimento di merce da magazzini selezionati dal sistema a magazzino richiedente per carenza merce. → #link(label("uc-5"), underline("[UC 5]"))
- *Inclusioni*:
  - #link(label("uc-5"), underline("[UC 5]"))
- *Trigger*:
  - Il numero di scorte per risolvere un ordine è insufficiente.

#pagebreak()
=== - UC 9: Individuazione di magazzini offline
#label("uc-9")
#figure(
  image("assets/Casi d'uso-UC9.drawio.png", width: 90%),
  caption: [UC9 - Individuazione di magazzini offline]
)
- *Attori Principali*: Sistema Centralizzato, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema è operativo e tutti i magazzini sono registrati.
  - Le connessioni sono attive o monitorabili.
- *Postcondizioni*:
  - Lo stato di connettività#super[G] di ciascun magazzino è aggiornato.
  - Eventuali disconnessioni sono rilevate e notificate.
- *Scenario principale*:
  + Il sistema centralizzato esegue periodicamente controlli di connettività#super[G]. → #link(label("uc-9.1"), underline("[UC 9.1]"))
  + In caso di disconnessione, il sistema centralizzato genera una segnalazione. → #link(label("uc-9.2"), underline("[UC 9.2]"))
  + Lo stato di un magazzino viene aggiornato come offline, online, non operativo, operativo. → #link(label("uc-9.3"), underline("[UC 9.3]"))
  + Se un magazzino va offline, si attiva un timer oltre il quale gli ordini di elaborazione del magazzino vengono annullati ed elaborati dal sistema centralizzato.
  + Se un magazzino torna online, prima dello scadere del timer, lo stato viene aggiornato e le operazioni riprendono normalmente.
- *Inclusioni*:
  - #link(label("uc-9.1"), underline("[UC 9.1]"))
  - #link(label("uc-9.3"), underline("[UC 9.3]"))
- *Estensioni*:
  - #link(label("uc-9.2"), underline("[UC 9.2]"))
- *Trigger*:
  - Pianificazione temporizzata del controllo.
  - Cambiamento improvviso dello stato di rete.
  - Rientro online di un magazzino.

==== - UC 9.1: Controllo periodico della connettività#super[G]
#label("uc-9.1")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - I magazzini sono registrati nel sistema.
  - La rete è parzialmente o totalmente attiva.
- *Postcondizioni*:
  - Lo stato di connessione viene aggiornato.
- *Scenario principale*:
  + Il sistema centralizzato effettua un ping o heartbeat a ogni magazzino.
  + Attende la risposta per un periodo massimo definito.
  + Se la risposta non arriva → attiva #link(label("uc-9.2"), underline("[UC 9.2]"))
  + Se la risposta è positiva → stato “online”.
- *Estensioni*:
  - #link(label("uc-9.2"), underline("[UC 9.2]"))
  - #link(label("uc-11"), underline("[UC 11]"))

==== - UC 9.2: Generazione notifica di disconnessione
#label("uc-9.2")
- *Attori Principali*: Sistema centralizzato, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Un magazzino non ha risposto alla verifica#super[G] di connettività#super[G].
- *Postcondizioni*:
  - Il sistema centralizzato invia una notifica dell’anomalia al Supervisore.
  - Lo stato del magazzino è aggiornato a “offline”.
- *Scenario principale*:
  + Il sistema centralizzato rileva che il magazzino non risponde.
  + Crea una notifica di disconnessione.
  + Invia la notifica email ai supervisori globali e al supervisore locale responsabile del magazzino
  + Aggiorna lo stato del magazzino in “offline”.

==== - UC 9.3: Aggiornamento stato del magazzino
#label("uc-9.3")
- *Attori Principali*: Sistema centralizzato.
- *Attori Secondari*: Supervisore Globale, Supervisore Locale.

- *Precondizioni*:
  - Il sistema centralizzato ha eseguito un controllo o ha ricevuto un evento dallo stato operativo del nodo#super[G].
- *Postcondizioni*:
  - Lo stato del magazzino viene aggiornato e reso visibile ai supervisori.
- *Scenario principale*:
  + Il sistema centralizzato rileva o riceve una variazione di stato (manuale o automatica).
  + Classifica il magazzino come:
    - Online: connesso e funzionante.
    - Offline: disservizio di rete = non connesso.
    - Operativo: abilitato a svolgere tutte le funzioni.
    - Non operativo: disservizio fisico (es. da manutenzione o guasti).
  + Mostra lo stato aggiornato nell’interfaccia supervisori.

#pagebreak()
=== - UC 10: Gestione dei disservizi
#label("uc-10")
#figure(
  image("assets/Casi d'uso-UC10.drawio.png", width: 90%),
  caption: [UC10 - Gestione dei disservizi]
)

- *Attori Principali*: Sistema Centralizzato, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema è attivo.
  - I magazzini sono registrati.
  - È abilitato il monitoraggio#super[G] continuo.
- *Postcondizioni*:
  - Il disservizio viene classificato (offline o non operativo).
  - Lo stato del magazzino viene aggiornato.
  - Se necessario, viene attivato un trasferimento#super[G] di scorte#super[G] a magazzini vicini.
- *Scenario principale*:
  + Il sistema centralizzato monitora costantemente i magazzini → #link(label("uc-10.1"), underline("[UC 10.1]"))
  + Un magazzino risulta non raggiungibile o guasto
  + Il sistema centralizzato classifica il disservizio:
    - Se di rete → #link(label("uc-10.3"), underline("[UC 10.3]"))
    - Se fisico → #link(label("uc-10.2"), underline("[UC 10.2]"))
  + Se un magazzino offline diventa non operativo → #link(label("uc-10.4"), underline("[UC 10.4]"))
  + Se il magazzino è non operativo, il sistema centralizzato attiva il trasferimento#super[G] di scorte#super[G] → #link(label("uc-10.5"), underline("[UC 10.5]"))
  + Supervisori sono informati via notifica email.
- *Inclusioni*:
  - #link(label("uc-10.1"), underline("[UC 10.1]"))
- *Estensioni*:
  - #link(label("uc-10.2"), underline("[UC 10.2]"))
  - #link(label("uc-10.3"), underline("[UC 10.3]"))
  - #link(label("uc-10.4"), underline("[UC 10.4]"))
  - #link(label("uc-10.5"), underline("[UC 10.5]"))
  - #link(label("uc-15"), underline("[UC 15]"))
- *Trigger*:
  - Eventi di guasto, disconnessione, o cambio di stato.

==== - UC 10.1: Monitoraggio#super[G] stato operativo
#label("uc-10.1")
- *Attori Principali*: Sistema Centralizzato, Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - Il sistema è attivo.
  - I magazzini inviano segnali periodici.
- *Postcondizioni*:
  - Stato aggiornato come operativo/non operativo/offline.
- *Scenario principale*:
  + Il sistema centralizzato verifica#super[G] connettività#super[G] e integrità#super[G] dei nodi#super[G].
  + Se fallisce uno dei due controlli → attiva estensione #link(label("uc-10.2"), underline("[UC 10.2]")) o #link(label("uc-10.3"), underline("[UC 10.3]"))
- *Scenario alternativo*:
  - I Supervisori Locali o Globali modificano manualmente lo stato del magazzino per disservizio.
- *Estensioni*:
  - #link(label("uc-10.2"), underline("[UC 10.2]"))
  - #link(label("uc-10.3"), underline("[UC 10.3]"))

==== - UC 10.2: Rilevamento disservizio fisico
#label("uc-10.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Ricevuti segnali di guasto hardware o software critico.
- *Postcondizioni*:
  - Stato magazzino impostato a non operativo.
  - Supervisori informati.
- *Scenario principale*:
  + Il sistema centralizzato riceve un errore hardware o di servizio locale.
  + Aggiorna lo stato del magazzino in non operativo.
  + Notifica il disservizio.

==== - UC 10.3: Rilevamento disservizio di rete
#label("uc-10.3")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Magazzino non risponde ai ping o segnali di rete.
- *Postcondizioni*:
  - Stato aggiornato a offline.
- *Scenario principale*:
  + Il sistema centralizzato rileva assenza di connessione.
  + Il sistema centralizzato notifica i supervisori.
  + Imposta lo stato a offline.
  + Avvia monitoraggio#super[G] continuato (con timer).

==== - UC 10.4: Transizione da offline a non operativo
#label("uc-10.4")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Un magazzino è già offline.
  - Si rileva successivamente un errore hardware.
- *Postcondizioni*:
  - Stato aggiornato a non operativo.
- *Scenario principale*:
  + Magazzino è offline → #link(label("uc-10.3"), underline("[UC 10.3]"))
  + Viene rilevato un guasto hardware in parallelo.
  + Il sistema centralizzato aggiorna lo stato a non operativo.
  + Attiva trasferimento#super[G] scorte#super[G] → #link(label("uc-10.5"), underline("[UC 10.5]"))
- *Inclusioni*:
  - #link(label("uc-10.3"), underline("[UC 10.3]"))
- *Estensioni*:
  - #link(label("uc-10.5"), underline("[UC 10.5]"))

==== - UC 10.5: Sopperimento ordini
#label("uc-10.5")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Un magazzino è non operativo.
  - Altri magazzini hanno disponibilità di scorte#super[G].
- *Postcondizioni*:
  - Le scorte#super[G] sono riposizionate presso i magazzini vicini.
- *Scenario principale*:
  + Il sistema centralizzato valuta le scorte#super[G] nei magazzini circostanti.
  + Determina quantità e priorità dei prodotti#super[G] da trasferire.
  + Attiva un flusso di trasferimento#super[G] automatizzato → #link(label("uc-5"), underline("[UC 5]"))
- *Estensioni*:
  - #link(label("uc-5"), underline("[UC 5]"))

#pagebreak()
=== - UC 11: Gestione magazzino online
#label("uc-11")
#figure(
  image("assets/Casi d'uso-UC11.drawio.png", width: 90%),
  caption: [UC11 - Gestione magazzino che torna online]
)

- *Attori Principali*: Sistema Centralizzato, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il magazzino è stato precedentemente segnalato come offline.
  - Il sistema centralizzato è attivo e in ascolto di segnali di ritorno online.
- *Postcondizioni*:
  - Il magazzino è marcato come online e operativo.
  - I dati locali sono sincronizzati con il sistema centralizzato centrale.
  - Eventuali conflitti di dati sono gestiti.
- *Scenario principale*:
  + Il sistema centralizzato rileva che il magazzino è tornato online → #link(label("uc-11.1"), underline("[UC 11.1]"))
  + Avvia la sincronizzazione dei dati → #link(label("uc-11.2"), underline("[UC 11.2]"))
  + Verifica#super[G] eventuali conflitti tra dati locali e cloud → #link(label("uc-11.3"), underline("[UC 11.3]"))
  + Aggiorna lo stato del magazzino a "operativo".
  + Notifica ai supervisori.
- *Inclusioni*:
  - #link(label("uc-11.1"), underline("[UC 11.1]"))
  - #link(label("uc-11.2"), underline("[UC 11.2]"))
- *Estensioni*:
  - #link(label("uc-11.3"), underline("[UC 11.3]"))
  - #link(label("uc-9.2"), underline("[UC 9.2]"))
- *Trigger*:
  - Il sistema riceve un segnale dal magazzino.

==== - UC 11.1: Rilevamento ritorno online
#label("uc-11.1")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Il magazzino era offline.
  - Il sistema centralizzato monitora attivamente la rete.
- *Postcondizioni*:
  - Il sistema centralizzato identifica il ritorno online del magazzino.
  - Stato aggiornato a "online".
- *Scenario principale*:
  + Il sistema centralizzato riceve un segnale.
  + Valida che la comunicazione è stabile.
  + Aggiorna lo stato del magazzino.

==== - UC 11.2: Sincronizzazione dati inventario#super[G]
#label("uc-11.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Il magazzino è online.
  - Sono disponibili dati locali modificati.
- *Postcondizioni*:
  - I dati di inventario#super[G] sono sincronizzati tra magazzino e cloud.
  - Conflitti (se presenti) sono rilevati → gestiti in #link(label("uc-11.3"), underline("[UC 11.3]"))
- *Scenario principale*:
  + Il sistema centralizzato accede ai dati locali di inventario#super[G].
  + Confronta con il cloud.
  + Sincronizza i dati coerenti.
  + Se ci sono conflitti → invoca #link(label("uc-11.3"), underline("[UC 11.3]"))
- *Estensioni*:
  - #link(label("uc-11.3"), underline("[UC 11.3]"))

==== - UC 11.3: Risoluzione conflitti di dati
#label("uc-11.3")
- *Attori Principali*: Sistema Centralizzato, eventualmente Supervisore Locale.
- *Precondizioni*:
  - Sono stati rilevati conflitti nei dati durante la sincronizzazione.
- *Postcondizioni*:
  - I dati sono risolti secondo politiche predefinite o approvazione supervisore.
  - Il magazzino ha inventario#super[G] aggiornato e coerente.
- *Scenario principale*:
  + Il sistema centralizzato analizza la natura dei conflitti (es. scorte#super[G]diverse, timestamp).
  + Applica una strategia:
    - priorità temporale.
    - priorità cloud.
    - intervento supervisore.
  + Aggiorna l’inventario#super[G] finale.
- *Scenario alternativo*:
  - Il sistema centralizzato non riesce a risolvere automaticamente, quindi avviene una convalida manuale dati da parte del supervisore.

=== - UC 12: Monitoraggio#super[G] centralizzato delle scorte#super[G]
#label("uc-12")
#figure(
  image("assets/Casi d'uso-UC12.drawio.png", width: 90%),
  caption: [UC12 - Monitoraggio centralizzato delle scorte]
)

- *Attori Principali*: Sistema Centralizzato, Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - Il sistema è online.
  - I microservizi#super[G] di inventario#super[G] dei magazzini sono sincronizzati con il cloud.
- *Postcondizioni*:
  - Il supervisore visualizza in tempo reale le scorte#super[G] di tutti i magazzini.
- *Scenario principale*:
  + Il Supervisore accede al sistema.
  + Il Sistema centralizzato interroga il microservizio#super[G] cloud per i dati aggregati delle scorte#super[G].
  + Il Sistema centralizzato mostra la dashboard#super[G] con i livelli di inventario#super[G] per ciascun magazzino.
  + Il Supervisore analizza la situazione e può intervenire con azioni gestionali (es. riassortimento#super[G], trasferimento#super[G]).
- *Scenario alternativo*:
  - Il sistema centralizzato segnala l’indisponibilità temporanea dei dati per un magazzino offline → #link(label("uc-9"), underline("[UC 9]"))
- *Inclusioni*:
  - #link(label("uc-12.1"), underline("[UC 12.1]"))
  - #link(label("uc-12.2"), underline("[UC 12.2]"))
  - #link(label("uc-4"), underline("[UC 4]"))
- *Estensioni*:
  - #link(label("uc-9.1"), underline("[UC 9.1]"))
  - #link(label("uc-9.3"), underline("[UC 9.3]"))
  - #link(label("uc-11"), underline("[UC 11]"))
- *Trigger*:
  - Il supervisore accede alla dashboard#super[G] di monitoraggio#super[G] centralizzato.

==== - UC 12.1: Visualizzazione dashboard#super[G] scorte#super[G] distribuite
#label("uc-12.1")
- *Attori Principali*: Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - L’utente è autenticato con ruolo autorizzato.
- *Postcondizioni*:
  - La dashboard#super[G] è aggiornata e visibile.
- *Scenario principale*:
  + L’utente accede alla sezione “Monitoraggio#super[G] Scorte#super[G]”.
  + Il sistema presenta una dashboard#super[G] con livelli per ogni magazzino.
  + L’utente può filtrare, ordinare e consultare i dati.

==== - UC 12.2: Interrogazione microservizio#super[G] cloud inventario#super[G]
#label("uc-12.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - I microservizi#super[G] locali sono sincronizzati con il microservizio#super[G] cloud.
- *Postcondizioni*:
  - I dati aggiornati delle scorte#super[G] sono ottenuti.
- *Scenario principale*:
  + Il sistema centralizzato invia una richiesta al database del microservizio#super[G] cloud.
  + Riceve i dati aggiornati delle scorte#super[G] per tutti i magazzini.
  + Aggiorna la dashboard#super[G] centralizzata.

#pagebreak()
=== - UC 13: Gestione aggiornamenti simultanei dell’inventario#super[G]
#label("uc-13")
#figure(
  image("assets/Casi d'uso-UC13.drawio.png", width: 90%),
  caption: [UC13 - Gestione aggiornamenti simultanei dell'inventario]
)
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari:*: Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - Due o più magazzini tentano di aggiornare simultaneamente lo stesso dato di inventario#super[G].
- *Postcondizioni*:
  - Gli aggiornamenti vengono gestiti correttamente, senza perdita o corruzione di dati.
- *Scenario principale*:
  + Due o più magazzini inviano aggiornamenti concorrenti.
  + Il sistema centralizzato riceve le richieste e ne verifica la concorrenza.
  + Applica un meccanismo di controllo versioni/timestamp → #link(label("uc-13.1"), underline("[UC 13.1]"))
  + Identifica conflitti, se presenti → #link(label("uc-13.2"), underline("[UC 13.2]"))
  + Risolve i conflitti secondo una politica definita → #link(label("uc-13.3"), underline("[UC 13.3]"))
  + Aggiorna correttamente il dato finale e notifica i magazzini coinvolti.
- *Scenari alternativi*:
  - Gli aggiornamenti non sono concorrenti:
    - il sistema centralizzato li elabora normalmente.
  - Il conflitto non può essere risolto automaticamente:
    - Viene generata una segnalazione al Supervisore Locale → #link(label("uc-13.4"))[UC 15.4]
- *Inclusioni*:
  - #link(label("uc-13.1"), underline("[UC 13.1]"))
  - #link(label("uc-13.2"), underline("[UC 13.2]"))
  - #link(label("uc-13.3"), underline("[UC 13.3]"))
- *Estensioni*:
  - #link(label("uc-13.4"), underline("[UC 13.4]"))
  - #link(label("uc-11.3"), underline("[UC 11.3]"))
- *Trigger*:
  - Invio simultaneo di aggiornamenti da più magazzini sullo stesso prodotto#super[G] o voce di inventario#super[G].

==== - UC 13.1: Applicazione controllo versioni o timestamp
#label("uc-13.1")
*Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - È in corso un aggiornamento dell’inventario#super[G].
- *Postcondizioni*:
  - Le modifiche sono tracciate con una versione/timestamp.
- *Scenario principale*:
  + Ogni richiesta di aggiornamento include un identificatore temporale o di versione.
  + Il sistema centralizzato confronta la versione con lo stato attuale dell’inventario#super[G].
  + Salva l’aggiornamento o lo mette in attesa se non coerente.
- *Inclusioni*:
  - #link(label("uc-14.1"), underline("[UC 14.1]")) → accodamento e gestione simultaneità.

==== - UC 13.2: Identificazione di conflitti di aggiornamento
#label("uc-13.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Sono presenti richieste concorrenti per lo stesso dato.
- *Postcondizioni*:
  - Il conflitto è riconosciuto e pronto per essere gestito.
- *Scenario principale*:
  + Il sistema centralizzato rileva che due aggiornamenti sono incompatibili o simultanei.
  + Marca il conflitto e prepara un’azione correttiva.

==== - UC 13.3: Risoluzione dei conflitti di aggiornamento
#label("uc-13.3")
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - È stato rilevato un conflitto.
- *Postcondizioni*:
  - Il conflitto è stato risolto e l’inventario#super[G] è stato aggiornato.
- *Scenario principale*:
  + Il sistema centralizzato applica una politica di risoluzione (es. “vince” ultima modifica).
  + Notifica gli attori coinvolti se necessario.

==== - UC 13.4: Segnalazione conflitto irrisolto
#label("uc-13.4")
- *Attori Principali*: Sistema Centralizzato, Supervisore Locale.
- *Precondizioni*:
  - Il conflitto non può essere risolto automaticamente.
- *Postcondizioni*:
  - Il Supervisore riceve una notifica con i dettagli del conflitto.
- *Scenario principale*:
  + Il sistema centralizzato rileva che il conflitto richiede l’intervento di un supervisore.
  + Invia una notifica al Supervisore Locale con i dettagli dei tentativi di aggiornamento.
  + Il Supervisore decide come procedere (manualmente o tramite strumenti di amministrazione).

#pagebreak() 
=== - UC 14: Gestione ordini#super[G] simultanei per uno stesso prodotto#super[G]
#label("uc-14")
#figure(
  image("assets/Casi d'uso-UC14.drawio.png", width: 90%),
  caption: [UC14 - Gestione ordini simultanei per uno stesso prodotto]
)
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Più richieste di ordine#super[G] per lo stesso prodotto#super[G] arrivano in contemporanea da uno o più magazzini.
- *Postcondizioni*:
  - Gli ordini#super[G] sono processati in modo coordinato e coerente, secondo criteri di assegnazione e priorità.
- *Scenario principale*:
  + Il sistema centralizzato riceve più ordini#super[G] contemporanei per lo stesso prodotto#super[G].
  + Il sistema centralizzato attiva la gestione della coda per gli ordini#super[G] simultanei → #link(label("uc-14.1"), underline("[UC 14.1]"))
  + Il sistema centralizzato assegna le scorte#super[G] disponibili secondo criteri predefiniti → #link(label("uc-14.2"), underline("[UC 14.2]"))
  + In caso di conflitto (scorte#super[G] insufficienti), applica una politica di priorità → #link(label("uc-14.3"), underline("[UC 14.3]"))
  + Aggiorna l’inventario#super[G] e notifica i magazzini interessati.
- *Scenari alternativi*:
  - Le scorte#super[G] sono sufficienti per tutti gli ordini#super[G]:
    - procedere con elaborazione diretta.
  - Nessun criterio di priorità consente la decisione:
    - Estensione di → #link(label("uc-14.4"), underline("[UC 14.4]"))
- *Inclusioni*:
  - #link(label("uc-14.1"), underline("[UC 14.1]"))
  - #link(label("uc-14.2"), underline("[UC 14.2]"))
  - #link(label("uc-14.3"), underline("[UC 14.3]"))
- *Estensioni*:
  - #link(label("uc-14.4"), underline("[UC 14.4]"))
  - #link(label("uc-7"), underline("[UC 7]")) → nel caso in cui esito della gestione ordini#super[G] riduca le scorte#super[G] sotto la soglia critica.
- *Trigger*:
  - Invio simultaneo di più ordini#super[G] per lo stesso prodotto#super[G].

==== - UC 14.1: Gestione coda per ordini simultanei
#label("uc-14.1")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Il sistema centralizzato riceve più ordini#super[G] per lo stesso prodotto#super[G] in un breve intervallo di tempo.
- *Postcondizioni*:
  - Gli ordini#super[G] sono messi in coda.
- *Scenario principale*:
  + Il sistema centralizzato identifica gli ordini#super[G] concorrenti.
  + Gli ordini vengono valutati e messi in coda con una politica FCFS _(First Come, First Served)_.

==== - UC 14.2: Assegnazione delle scorte#super[G] secondo criteri predefiniti
#label("uc-14.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Sono presenti ordini#super[G] concorrenti e scorte#super[G] limitate.
- *Postcondizioni*:
  - Le scorte#super[G] sono assegnate secondo una logica deterministica (es. ordine temporale, località, criticità).
- *Scenario principale*:
  + Il sistema centralizzato valuta le richieste in base ai criteri impostati (es. priorità geografica, urgenza, data di richiesta).
  + Assegna le scorte#super[G] disponibili agli ordini#super[G] soddisfacibili.
  + Rilascia una risposta di conferma, conferma parziale o rifiuto.

==== - UC 14.3: Applicazione di criteri di priorità
#label("uc-14.3")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Gli ordini#super[G] sono in conflitto e le scorte#super[G] non bastano.
- *Postcondizioni*:
  - L’ordine prioritario viene soddisfatto.
- *Scenario principale*:
  + Il sistema centralizzato recupera la configurazione dei criteri di priorità.
  + Ordina gli ordini#super[G] per livello di priorità.
  + Applica le assegnazioni seguendo l’ordine definito.
  + Per tracciabilità scrive le scelte effettuate nel log#super[G].

==== - UC 14.4: Segnalazione ordine#super[G] in conflitto non risolvibile
#label("uc-14.4")
- *Attori Principali*: Sistema Centralizzato, Supervisore Locale
- *Precondizioni*:
  - Il sistema centralizzato non riesce a decidere l’assegnazione tra ordini#super[G] concorrenti.
- *Postcondizioni*:
  - Un Supervisore prende una decisione manuale.
- *Scenario principale*:
  + Il sistema centralizzato rileva che i criteri non portano a una decisione univoca.
  + Genera una notifica per il Supervisore Locale.
  + Il Supervisore visualizza i dettagli dei conflitti e decide quale ordine#super[G] soddisfare.
  + Il sistema centralizzato applica la scelta e aggiorna i dati.

#pagebreak()
=== - UC 15: Gestione autonoma delle operazioni di magazzino come edge nodes
#label("uc-15")
#figure(
  image("assets/Casi d'uso-UC15.drawio.png", width: 90%),
  caption: [UC15 - Gestione autonoma delle operazioni di magazzino come edge nodes]
)

- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il magazzino è operativo, connesso localmente, anche se non connesso al cloud.
- *Postcondizioni*:
  - Le operazioni sono gestite in locale, con sincronizzazione in cloud quando necessario.
- *Scenario principale*:
  + Il sistema centralizzato rileva una richiesta di operazione sui dati di inventario#super[G] da parte del magazzino locale.
  + Il sistema centralizzato valuta se l’operazione può essere gestita in locale.
  + Se sì, esegue l’elaborazione localmente per ridurre il traffico di rete → #link(label("uc-15.1"), underline("[UC 15.1]")) e #link(label("uc-15.2"), underline("[UC 15.2]"))
  + Se l’operazione è di scrittura, il sistema centralizzato attiva la sincronizzazione col cloud → #link(label("uc-15.3"), underline("[UC 15.3]"))
  + Il sistema centralizzato aggiorna lo stato delle scorte#super[G] localmente e nel cloud (se necessario).
  + Il Supervisore Locale o Globale può essere notificato di eventuali discrepanze.
- *Inclusioni*:
  - #link(label("uc-15.1"), underline("[UC 15.1]"))
  - #link(label("uc-15.2"), underline("[UC 15.2]"))
  - #link(label("uc-15.3"), underline("[UC 15.3]"))
- *Trigger*:
  - Richiesta locale di elaborazione o modifica ai dati di inventario#super[G].

==== - UC 15.1: Abilitazione operazioni locali su inventario#super[G]
#label("uc-15.1")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Il magazzino ha una copia locale dell’inventario#super[G].
- *Postcondizioni*:
  - Le operazioni possono essere effettuate localmente.
- *Scenario principale*:
  + Il sistema centralizzato verifica#super[G] lo stato di aggiornamento locale dei dati.
  + Abilita lettura e scrittura sull’inventario#super[G] locale, se i dati sono coerenti (per elaborazione degli ordini).

==== - UC 15.2: Esecuzione elaborazioni locali
#label("uc-15.2")
- *Attori Principali*: Supervisore Locale.
- *Precondizioni*:
  - Il magazzino riceve una richiesta (calcolo disponibilità, assegnazione ordine, ...)
- *Postcondizioni*:
  - I dati sono aggiornati in locale.
- *Scenario principale*:
  + Il supervisore locale esegue l’elaborazione localmente senza coinvolgere il cloud.
  + Restituisce l’esito all’attore interessato (o ad un altro microservizio#super[G]).

==== - UC 15.3: Sincronizzare con il cloud in seguito a operazione di scrittura
#label("uc-15.3")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - È stata effettuata una modifica locale ai dati (scrittura).
- *Postcondizioni*:
  - Il dato è sincronizzato con il cloud.
- *Scenario principale*:
  + Il sistema centralizzato intercetta la scrittura effettuata localmente.
  + Invia l’aggiornamento al cloud.
  + Risolve eventuali conflitti tramite logica di controllo versioni o timestamp → #link(label("uc-13.2"), underline("[UC 13.2]")), #link(label("uc-13.3"), underline("[UC 13.3]"))

- *Inclusioni*:
  - #link(label("uc-13.2"), underline("[UC 13.2]"))
  - #link(label("uc-13.3"), underline("[UC 13.3]"))

#pagebreak()
=== - UC 16: Sincronizzazione posticipata
#label("uc-16")
#figure(
  image("assets/Casi d'uso-UC16.drawio.png", width: 60%),
  caption: [UC16 - Sincronizzazione posticipata]
)
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Il cloud è irraggiungibile al momento della scrittura locale.
- *Postcondizioni*:
  - I dati saranno sincronizzati alla prima occasione utile.
- *Scenario principale*:
  + Il sistema centralizzato salva localmente le modifiche in una coda di sincronizzazione.
  + Alla riconnessione, invia le modifiche e gestisce eventuali conflitti.

#pagebreak()
=== - UC 17: Gestione indipendente e sincronizzata dell'inventario
#label("uc-17")
#figure(
  image("assets/Casi d'uso-UC17.drawio.png", width: 90%),
  caption: [UC17 - Gestione indipendente e sincronizzata dell'inventario]
)
- *Attori Principali*: Supervisore Locale, Sistema Centralizzato.
- *Attori Secondari*: Supervisore Globale.
- *Precondizioni*:
  - Il magazzino locale è operativo e connesso al sistema centrale o abilitato a operare in locale.
- *Postcondizioni*:
  - Le operazioni di inventario#super[G] vengono eseguite localmente e sincronizzate con il sistema centralizzato.
- *Scenario principale*:
  + Il Supervisore Locale esegue un’operazione sull’inventario#super[G]: inserimento, modifica o trasferimento#super[G] → #link(label("uc-17.1"), underline("[UC 17.1]"))
  + Il sistema locale aggiorna l’inventario#super[G] internamente.
  + Il sistema centralizzato riceve un evento dell'operazione di aggiornamento.
  + Avviene la sincronizzazione automatica con il cloud → #link(label("uc-11.2"), underline("[UC 11.2]"))
  + In caso di conflitto con dati centrali, il sistema centralizzato avvia una procedura di risoluzione → #link(label("uc-11.3"), underline("[UC 11.3]"))
- *Scenari alternativi*:
  - Connessione al cloud è temporaneamente assente:
    - I dati sono messi in coda e sincronizzati appena disponibile → #link(label("uc-17.2"), underline("[UC 17.2]"))
  - Il conflitto non è risolvibile automaticamente:
    - Richiede intervento del Supervisore Globale → #link(label("uc-17.3"), underline("[UC 17.3]"))
- *Inclusioni*:
  - #link(label("uc-17.1"), underline("[UC 17.1]"))
  - #link(label("uc-11.2"), underline("[UC 11.2]"))
- *Estensioni*:
  - #link(label("uc-17.2"), underline("[UC 17.3]"))
  - #link(label("uc-17.3"), underline("[UC 17.4]"))
  - #link(label("uc-11.3"), underline("[UC 11.3]"))
- *Trigger*:
  - Inizio di un’operazione locale su inventario#super[G] (inserimento, modifica o trasferimento#super[G]).

==== - UC 17.1: Esecuzione operazione locale (inserimento, modifica, trasferimento)
#label("uc-17.1")
- *Attori Principali*: Supervisore Locale.
- *Precondizioni*:
  - Il magazzino locale è disponibile e configurato per operazioni autonome.
- *Postcondizioni*:
  - Un'operazione di inventario#super[G] è completata localmente.
- *Scenario principale*:
  + Il Supervisore Locale seleziona il tipo di operazione (es. inserimento nuovo stock, modifica quantità, trasferimento#super[G] ad altro magazzino).
  + Inserisce i dati necessari.
  + Conferma l’operazione.
  + Viene registrato il cambiamento nel magazzino locale.

==== - UC 17.2: Sincronizzazione differita (mancanza di rete)
#label("uc-17.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - L’operazione locale è stata effettuata, ma il cloud non è raggiungibile.
- *Postcondizioni*:
  - I dati sono messi in coda per la sincronizzazione successiva.
- *Scenario principale*:
  + Il sistema centralizzato rileva l’assenza di rete.
  + Memorizza l’operazione in una coda locale.
  + Appena disponibile la connessione, invia i dati al cloud.

==== - UC 17.3: Risoluzione manuale conflitti di sincronizzazione
#label("uc-17.3")
- *Attori Principali*: Sistema Centralizzato, Supervisore Globale.
- *Precondizioni*:
  - La sincronizzazione ha generato un conflitto non risolvibile automaticamente.
- *Postcondizioni*:
  - Il conflitto è risolto manualmente e i dati sono aggiornati.
- *Scenario principale*:
  + Il sistema centralizzato invia una notifica email di un conflitto di aggiornamento.
  + Il Supervisore Globale accede alla dashboard#super[G] di risoluzione.
  + Analizza i dati locali e centrali.
  + Decide quale versione mantenere e conferma la scelta.
  + Il sistema centralizzato aggiorna i dati in base alla decisione.

#pagebreak()
=== - UC 18: Monitoraggio continuo delle attività di sistema
#label("uc-18")
#figure(
  image("assets/Casi d'uso-UC18.drawio.png", width: 90%),
  caption: [UC18 - Monitoraggio continuo delle attività di sistema]
)
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema è operativo.
  - I servizi#super[G] di monitoraggio#super[G] sono attivi.
- *Postcondizioni*:
  - Le attività sospette sono state rilevate, tracciate e notificate.
  - I log#super[G] delle operazioni sono aggiornati.
- *Scenario principale*:
  + Il sistema centralizzato attiva i moduli di monitoraggio#super[G] centralizzato → #link(label("uc-18.1"), underline("[UC 18.1]"))
  + Il sistema centralizzato registra tutti gli accessi (inclusi login/logout) e le operazioni rilevanti → #link(label("uc-18.3"), underline("[UC 18.3]"))
  + Il sistema centralizzato analizza in tempo reale il comportamento degli utenti e dei componenti distribuiti.
  + Se viene rilevata un'attività sospetta o anomala:
    - Il sistema centralizzato genera una notifica per i supervisori.
    - L’attività viene registrata nei log#super[G].
    - I Supervisori possono visualizzare e analizzare i log#super[G] attraverso l'interfaccia.
- *Scenari alternativi*:
  - Il sistema centralizzato rileva numerosi tentativi di accesso falliti → #link(label("uc-18.4"), underline("[UC 18.4]"))
  - Il sistema centralizzato registra accessi da IP non noti o da località insolite → #link(label("uc-18.2"), underline("[UC 18.2]"))
  - Il Supervisore analizza i log#super[G] in seguito a una notifica → può avviare un’azione correttiva
- *Inclusioni*:
  - #link(label("uc-18.1"), underline("[UC 18.1]"))
  - #link(label("uc-18.2"), underline("[UC 18.2]"))
  - #link(label("uc-18.3"), underline("[UC 18.3]"))
  - #link(label("uc-18.4"), underline("[UC 18.4]"))
- *Trigger*:
  - Attività da parte di utenti o sistemi (es. login, operazioni sui dati).
  - Tentativi di accesso anomalo.

==== - UC 18.1: Attivazione monitoraggio centralizzato
#label("uc-18.1")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Sistema in esecuzione.
- *Postcondizioni*:
  - Monitoraggio#super[G] avviato.
- *Scenario principale*:
  + Il sistema centralizzato attiva i moduli di monitoraggio#super[G] durante l’avvio.
  + I componenti di rete e autenticazione#super[G] iniziano a comunicare con il modulo centralizzato.
  + Il sistema centralizzato conferma l’attivazione.
- *Trigger*:
  - Avvio del sistema.

==== - UC 18.2: Rilevamento attività sospette
#label("uc-18.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Monitoraggio#super[G] attivo.
- *Postcondizioni*:
  - Attività sospetta rilevata e registrata.
- *Scenario principale*:
  + Il sistema centralizzato valuta il comportamento degli utenti (frequenza accessi, IP, orari).
  + Identifica pattern anomali.
  + Registra l’evento e genera un allarme.
- *Estensioni*:
  - In caso di accessi anomali → #link(label("uc-1"), underline("[UC 1]"))
  - In caso di tentativi ripetuti falliti → #link(label("uc-2"), underline("[UC 2]"))

==== - UC 18.3: Registrazione accessi e operazioni
#label("uc-18.3")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Monitoraggio#super[G] attivo.
- *Postcondizioni*:
  - Log#super[G] aggiornato.
- *Scenario principale*:
  + Il sistema centralizzato registra ogni login → #link(label("uc-1"), underline("[UC 1]"))
  + Registra ogni tentativo fallito → #link(label("uc-2"), underline("[UC 2]"))
  + Registra ogni logout → #link(label("uc-3"), underline("[UC 3]"))
  + Ogni operazione rilevante viene associata a timestamp, ID utente e contesto.
- *Inclusioni*:
  - #link(label("uc-1"), underline("[UC 1]"))
  - #link(label("uc-2"), underline("[UC 2]"))
  - #link(label("uc-3"), underline("[UC 3]"))

==== - UC 18.4: Invio allarmi in tempo reale
#label("uc-18.4")
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Attività anomala rilevata.
- *Postcondizioni*:
  - Supervisore notificato.
- *Scenario principale*:
  + Il sistema centralizzato rileva un comportamento sospetto.
  + Invio di notifica al supervisore interessato.
  + L’evento viene registrato nel log#super[G].
- *Estensioni*:
  - In caso di eventi critici → #link(label("uc-18.2"), underline("[UC 18.2]"))

#pagebreak()
=== - UC 19: Gestione predittiva della domanda e del riassortimento
#label("uc-19")
#figure(
  image("assets/Casi d'uso-UC19.drawio.png", width: 90%),
  caption: [UC19 - Gestione predittiva della domanda e del riassortimento]
)
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema è attivo e ha accesso a dati storici sulle vendite e alle scorte#super[G] correnti.
  - I moduli predittivi sono correttamente configurati.
- *Postcondizioni*:
  - Sono generate previsioni di domanda.
  - Sono pianificati riassortimenti preventivi per evitare carenze.
- *Scenario principale*:
  + Il sistema centralizzato raccoglie dati storici di vendita e disponibilità attuale delle scorte#super[G].
  + Il sistema centralizzato analizza i dati con un modello predittivo (es. machine learning).
  + Il sistema centralizzato genera una previsione di domanda per ciascun prodotto#super[G].
  + Il sistema centralizzato pianifica automaticamente i riassortimenti in base alle previsioni.
  + Se un prodotto#super[G] rischia di andare in esaurimento, il sistema centralizzato attiva azioni preventive (es. proposta d'ordine#super[G] o avviso al supervisore).
  + Il Supervisore Locale o Globale può visualizzare i dati generati e validare eventuali modifiche.
- *Scenari alternativi*:
  - I dati storici sono incompleti:
    - Il sistema centralizzato utilizza euristiche di fallback → #link(label("uc-19.1"), underline("[UC 19.1]"))
  - Il Supervisore modifica manualmente le proposte del sistema centralizzato → #link(label("uc-19.2"), underline("[UC 19.2]"))
  - Il riassortimento#super[G] automatico non può essere pianificato per problemi logistici:
    - Viene generato un avviso → #link(label("uc-19.3"), underline("[UC 19.3]"))
- *Inclusioni*:
  - #link(label("uc-19.1"), underline("[UC 19.1]"))
  - #link(label("uc-19.2"), underline("[UC 19.2]"))
  - #link(label("uc-19.3"), underline("[UC 19.3]"))
- *Trigger*:
  - Esecuzione periodica automatica (es. ogni notte o settimanalmente).
  - Modifica importante dello storico o dei pattern di acquisto.

==== - UC 19.1: Generazione previsioni di domanda
#label("uc-19.1")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Accesso ai dati storici e alle informazioni correnti sulle scorte#super[G].
- *Postcondizioni*:
  - Previsioni generate per ciascun prodotto#super[G].
- *Scenario principale*:
  + Il sistema centralizzato raccoglie ed elabora i dati storici e attuali.
  + Il modello predittivo produce una stima della domanda futura.
  + Le previsioni vengono salvate nel sistema centralizzato.
- *Trigger*:
  - Esecuzione pianificata o evento esterno (es. cambio stagionale).

==== - UC 19.2: Pianificazione dei riassortimenti
#label("uc-19.2")
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Previsioni disponibili.
- *Postcondizioni*:
  - Riassortimenti pianificati automaticamente.
- *Scenario principale*:
  + Il sistema centralizzato valuta se le scorte#super[G] previste soddisfano la domanda prevista.
  + Pianifica un riassortimento#super[G] (ordine#super[G] o trasferimento#super[G]).
  + Notifica il Supervisore per conferma o revisione.
- *Scenario alternativo*:
  - Il Supervisore modifica le quantità → aggiornamento dei dati.
- *Inclusioni*:
  - #link(label("uc-19.1"), underline("[UC 19.1]"))

==== - UC 19.3: Attivazione di meccanismi preventivi
#label("uc-19.3")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Domanda prevista > scorte#super[G] disponibili.
- *Postcondizioni*:
  - Azioni preventive attivate.
- *Scenario principale*:
  + Il sistema centralizzato rileva un rischio di esaurimento.
  + Verifica le opzioni disponibili: nuovo ordine#super[G], trasferimento#super[G] da altro magazzino, limitazione ordini#super[G].
  + Propone un'azione o la attua automaticamente (se configurato).
  + Notifica il supervisore.
- *Inclusioni*:
  - #link(label("uc-19.1"), underline("[UC 19.1]"))
- *Estensioni*:
  - Possibili casi: #link(label("uc-5"), underline("[UC 5]")), #link(label("uc-7"), underline("[UC 7]"))

#pagebreak()
=== - UC 20: Riassortimento predittivo tramite analisi storica e previsione della domanda
#label("uc-20")
#figure(
  image("assets/Casi d'uso-UC20.drawio.png", width: 90%),
  caption: [UC20 - Riassortimento predittivo tramite analisi storica e previsione della domanda]
)
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema ha accesso ai dati storici di vendita e consegna.
  - I modelli statistici predittivi sono disponibili e attivi.
  - Le strategie di approvvigionamento#super[G] sono configurabili.
- *Postcondizioni*:
  - Il sistema centralizzato ha calcolato le previsioni di domanda.
  - Sono state adattate le strategie di approvvigionamento#super[G].
  - Sono stati generati piani di riassortimento#super[G] ottimizzati.
- *Scenario principale*:
  + Il sistema centralizzato raccoglie e analizza i dati storici di vendita e consegna.
  + Applica modelli statistici per identificare pattern stagionali e tendenze di consumo.
  + Prevede la domanda futura per ciascun prodotto#super[G].
  + Adatta le strategie di approvvigionamento#super[G] in base ai risultati.
  + Calcola i livelli ottimali di scorte#super[G] da mantenere.
  + Genera raccomandazioni o azioni automatiche di riassortimento#super[G].
  + Il Supervisore può visualizzare, approvare o modificare le raccomandazioni.
- *Scenari alternativi*:
  - I dati storici sono incompleti:
    - Il sistema centralizzato utilizza valori medi o interpolazioni → #link(label("uc-20.1"), underline("[UC 20.1]"))
  - I modelli predittivi rilevano anomalie nei pattern:
    - L’output viene validato manualmente → #link(label("uc-20.2"), underline("[UC 20.2]"))
  - Il supervisore impone strategie fisse:
    - Il sistema centralizzato sospende l’adattamento automatico → #link(label("uc-20.3"), underline("[UC 20.3]"))
  - Il magazzino è già pieno o sottodimensionato:
    - Il sistema centralizzato propone misure correttive → #link(label("uc-20.4"), underline("[UC 20.4]"))
- *Inclusioni*:
  - #link(label("uc-20.1"), underline("[UC 20.1]"))
  - #link(label("uc-20.2"), underline("[UC 20.2]"))
  - #link(label("uc-20.3"), underline("[UC 20.3]"))
  - #link(label("uc-20.4"), underline("[UC 20.4]"))
- *Trigger*:
  - Pianificazione periodica automatica (es. settimanale/mensile).
  - Attivazione manuale da parte del Supervisore.
  - Modifica nei dati o parametri (es. cambi stagionali, cambi tendenziali).

==== - UC 20.1: Analisi dati storici di vendita e consegna
#label("uc-20.1")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Disponibilità dei dati storici.
- *Postcondizioni*:
  - Dati strutturati pronti per la previsione.
- *Scenario principale*:
  + Il sistema centralizzato raccoglie i dati da magazzini locali e cloud.
  + Elimina outlier e dati incompleti.
  + Aggrega i dati per prodotto#super[G], zona, periodo.
  + Prepara i dataset per l’elaborazione statistica.
- *Trigger*:
  - Esecuzione periodica o richiesta manuale.

==== - UC 20.2: Analisi trend scorte#super[G]
#label("uc-20.2")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Dataset analizzato disponibile.
- *Postcondizioni*:
  - Previsioni generate per ogni prodotto#super[G].
- *Scenario principale*:
  + Il sistema centralizzato applica modelli (es. regressione, reti neurali).
  + Identifica stagionalità e trend nei dati.
  + Elabora le previsioni a breve e medio termine.
  + Salva le previsioni nel sistema centralizzato.
- *Inclusioni*:
  - #link(label("uc-20.1"), underline("[UC 20.1]"))

==== - UC 20.3: Adattamento delle strategie di approvvigionamento
#label("uc-20.3")
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Previsioni disponibili.
- *Postcondizioni*:
  - Strategia di riassortimento#super[G] aggiornata.
- *Scenario principale*:
  + Il sistema centralizzato confronta la previsione con la politica attuale di approvvigionamento#super[G].
  + Valuta lead time, frequenza ordini#super[G] e soglie minime.
  + Suggerisce modifiche o automatizza gli aggiustamenti.
  + Il supervisore può confermare, rifiutare o modificare la proposta.
- *Inclusioni*:
  - #link(label("uc-20.2"), underline("[UC 20.2]"))

==== - UC 20.4: Ottimizzazione dei livelli di scorte#super[G]
#label("uc-20.4")
- *Attori Principali*: Sistema Centralizzato.
- *Precondizioni*:
  - Strategia aggiornata e previsione disponibile.
- *Postcondizioni*:
  - Livelli ottimali calcolati e azioni di riassortimento#super[G] pianificate.
- *Scenario principale*:
  + Il sistema centralizzato determina le soglie ottimali per ciascun prodotto#super[G].
  + Calcola quanto e quando riassortire.
  + Genera automaticamente richieste o suggerimenti.
  + Il supervisore può intervenire o confermare.
- *Inclusioni*:
  - #link(label("uc-20.3"), underline("[UC 20.3]"))

#pagebreak()
=== - UC 21: Visualizzazione e Gestione scorte tramite interfaccia grafica
#label("uc-21")
#figure(
  image("assets/Casi d'uso-UC21.drawio.png", width: 90%),
  caption: [UC21 - Visualizzazione e gestione Scorte tramite interfaccia grafica],
)
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - L’utente è autenticato.
  - L’interfaccia utente è accessibile e funzionante.
- *Postcondizioni*:
  - L’utente ha visualizzato e/o modificato le informazioni di inventario#super[G].
  - Eventuali modifiche sono state salvate e propagate al sistema centralizzato.
  - I dati visualizzati riflettono lo stato aggiornato delle scorte#super[G] in tempo reale.
- *Scenario principale*:
  + Il Supervisore Locale o Globale accede all’interfaccia grafica.
  + Il sistema centralizzato carica e visualizza in tempo reale le scorte disponibili.
  + L'utente esplora il contenuto della dashboard e i dati per magazzino/prodotto.
  + L’utente seleziona un'azione (es. modifica scorte, trasferimento, riordino).
  + Il sistema centralizzato aggiorna l'inventario e sincronizza le modifiche con il cloud.
  + L'utente riceve conferma dell'operazione.
  + L’utente visualizza le notifiche badge.
- *Scenari alternativi*:
  - La visualizzazione delle scorte#super[G] fallisce:
    - Viene mostrato un messaggio di errore e suggerito il ripristino#super[G] → #link(label("uc-21.2"), underline("[UC 21.2]"))
  - L’utente non ha i privilegi per alcune operazioni:
    - Alcune funzionalità risultano disabilitate.
  - L’utente annulla un’operazione:
    - Nessuna modifica viene salvata → #link(label("uc-21.3"), underline("[UC 21.3]"))
- *Inclusioni*:
  - #link(label("uc-1"), underline("[UC 1]"))
  - #link(label("uc-5"), underline("[UC 5]"))
  - #link(label("uc-7"), underline("[UC 7]"))
  - #link(label("uc-8"), underline("[UC 8]"))
  - #link(label("uc-11"), underline("[UC 11]"))
- *Estensioni*:
  - #link(label("uc-21.1"), underline("[UC 21.1]"))
  - #link(label("uc-21.2"), underline("[UC 21.2]"))
  - #link(label("uc-21.3"), underline("[UC 21.3]"))
- *Trigger*:
  - Accesso alla dashboard#super[G] da parte di un supervisore.
  - Necessità di aggiornare o monitorare lo stato delle scorte#super[G].

==== - UC 21.1: Visualizzazione scorte in tempo reale
#label("uc-21.1")
- *Attori Principali*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Supervisore autenticato.
  - Connessione attiva al sistema.
- *Postcondizioni*:
  - Le scorte#super[G] sono visualizzate in tempo reale.
- *Scenario principale*:
  - Il supervisore accede alla dashboard#super[G].
  - Il sistema centralizzato recupera i dati di inventario#super[G] aggiornati.
  - Le scorte#super[G] vengono presentate in una vista tabellare/grafica.
  - Il sistema centralizzato aggiorna i dati ogni X secondi o su richiesta.
- *Inclusioni*:
  - #link(label("uc-11"), underline("[UC 11]")) (visualizzazione stato magazzino).

==== - UC 21.2: Errore nella visualizzazione dati
#label("uc-21.2")
- *Attori Principali*: Sistema Centralizzato.
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Connessione instabile o servizi#super[G] non disponibili.
- *Postcondizioni*:
  - Viene notificato il fallimento della visualizzazione.
- *Scenario principale*:
  - Il supervisore accede alla dashboard#super[G].
  - Il sistema centralizzato tenta di caricare i dati.
  - Si verifica un errore (es. timeout, servizio#super[G] cloud non raggiungibile).
  - Il sistema centralizzato mostra un messaggio con opzioni di riprova o offline mode.

==== - UC 21.3: Gestione inventario tramite GUI
#label("uc-21.3")
- *Attori Principali*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Supervisore autenticato e dati caricati.
- *Postcondizioni*:
  - Operazione di inventario#super[G] completata.
- *Scenario principale*:
  - Il supervisore seleziona un’operazione (aggiunta, modifica, trasferimento#super[G]).
  - Il sistema centralizzato mostra un modulo dedicato all’azione scelta.
  - L’utente compila e conferma il modulo.
  - Il sistema centralizzato salva l’azione e aggiorna lo stato delle scorte#super[G].
  - Il cloud viene sincronizzato con l’operazione effettuata.
- *Inclusioni*:
  - #link(label("uc-5"), underline("[UC 5]"))
  - #link(label("uc-7"), underline("[UC 7]"))
  - #link(label("uc-8"), underline("[UC 8]"))

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
  [*RF*], [*Registrazione del Supervisore Globale.*], [decisione\ interna],
  [*RF*], [Il Supervisore Globale deve registrarsi al primo avvio del sistema.], [decisione\ interna],

  [*RF*], [*Autenticazione dell'utente.*], [capitolato#super[G]],
  [*RF*], [L'utente deve poter accedere al sistema mediante credenziali.], [capitolato#super[G]],
  [*RF*], [L'utente deve poter effettuare il logout dal sistema.], [capitolato#super[G]],  

  [*RF*], [*Registrazione di nuovi Supervisori Locali.*], [decisione\ interna],
  [*RF*], [Il Supervisore Globale può registrare a sistema nuovi Supervisori Locali.], [decisione\ interna],
  [*RF*], [Il Supervisore Globale deve assegnare il/i magazzino/i a cui il Supervisore Locale ha accesso in fase di registrazione.], [decisione\ interna],

  [*RF*], [*Gestione manuale delle merci.*], [],
  [*RF*], [I Supervisori possono inserire un nuovo tipo di merce nell'inventario.], [],
  [*RF*], [I Supervisori possono rimuovere un tipo di merce dall'inventario.], [],
  [*RF*], [I Supervisori possono modificare la quantità di merce nell'inventario dei magazzini.], [],

  [*RF*], [*Gestione manuale degli ordini.*], [],
  [*RF*], [I Supervisori possono inserire ordini di trasferimento interno tra magazzini.], [],
  [*RF*], [I Supervisori possono inserire ordini di approvigionamento dall'esterno.], [],
  [*RF*], [I Supervisori possono inserire ordini di vendita verso l'esterno.], [],
  [*RF*], [I Supervisori possono annullare ordini.], [],

  [*RF*], [*Auditing dei dati dei magazzini.*], [], 
  [*RF*], [Il Supervisore Globale può visualizzare l'inventario globale.], [],
  [*RF*], [Il Supervisore Globale può visualizzare l'inventario di ciascun magazzino.], [],
  [*RF*], [Il Supervisore Globale può visualizzare un report degli ordini globali.], [],
  [*RF*], [Il Supervisore Globale può visualizzare un report degli ordini di ciascun magazzino.], [],

  [*RF*], [I Supervisori Locali possono visualizzare l'inventario del/dei magazzino/i a loro assegnato/i.], [],
  [*RF*], [I Supervisori Locali possono visualizzare un report degli ordini del/dei magazzino/i a loro assegnato/i.], [],

  [*RF*], [I Supervisori possono visualizzare lo stato di tutti i magazzini.], [],
  [*RF*], [Il Supervisore Globale può modificare lo stato di ciascun magazzino.], [],
  [*RF*], [I Supervisori Locali possono modificare lo stato del/dei magazzino/i a loro assegnato/i.], [],

  [*RF*], [*Gestione delle richieste.*], [], 
  [*RF*], [I Supervisori possono visualizzare le notifiche informative prodotte dal sistema.], [],
  [*RF*], [Il Supervisore Globale può accettare le richieste decisionali prodotte dal sistema.], [],
  [*RF*], [Il Supervisore Globale può rifiutare le richieste decisionali prodotte dal sistema.], [],

  [*RF*], [*Gestione delle soglie critiche.*], [], 
  [*RF*], [I Supervisori devono definire i valori di soglia minima all'inserimento di un nuovo prodotto.], [],
  [*RF*], [I Supervisori possono definire i valori di soglia massima all'inserimento di un nuovo prodotto.], [],
  [*RF*], [I Supervisori Globali possono modificare i valori di soglia minima e massima di ciascun prodotto per ciascun magazzino.], [],
  [*RF*], [I Supervisori Locali possono modificare i valori di soglia minima e massima di ciascun prodotto nel/nei magazzino/i a loro assegnato/i.], [],

  //FUNZIONALI SISTEMA
  [*RF*], [*Rilevamento di carenza di scorte#super[G] di un magazzino.*], [capitolato#super[G]],
  [*RF*], [Il magazzino deve identificare quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
  [*RF*], [Il magazzino deve identificare quando le scorte#super[G] salgono sopra una certa soglia.], [capitolato#super[G]],

  [*RF*], [*Gestione degli ordini.*], [capitolato#super[G]],
  [*RF*], [Il magazzino deve verificare la disponibilità delle scorte#super[G] per poter soddisfare un ordine ricevuto.], [capitolato#super[G]],
  [*RF*], [Il magazzino deve identificare l'impossibilità di soddisfare un ordine.], [capitolato#super[G]],
  [*RF*], [Un magazzino con scorte insufficienti per gestire un ordine, deve richidere un riassortimento al sistema.], [progettazione],
  [*RF*], [Il magazzino deve tracciare lo stato degli ordini.], [capitolato#super[G]],
  [*RF*], [I magazzini possono inviare merce verso un altro magazzino tramite un ordine.],[capitolato#super[G]],
  [*RF*], [I magazzini possono ricevere approvigionamenti dall'esterno tramite ordine.],[capitolato#super[G]],
  [*RF*], [I magazzini possono spedire merci verso l'esterno tramite ordine.],[capitolato#super[G]],
  [*RF*], [Il magazzino di destinazione deve notificare l'arrivo della merce al magazzino di origine.], [capitolato#super[G]],
  [*RF*], [Un ordine deve trovarsi in uno dei seguenti stati: "in attesa", "in elaborazione", "in transito", "annullato", "consegnato".], [],

  [*RF*], [*Riassortimento delle scorte#super[G]tra magazzini.*], [capitolato#super[G]],
  [*RF*], [Il sistema deve programmare trasferimenti interni al raggiungimento di una soglia critica di un prodotto in un magazzino al fine di bilanciare le scorte.], [capitolato#super[G]],

  [*RF*], [*Individuazione dello stato dei magazzini.*], [capitolato#super[G]],
  [*RF*], [Il magazzino deve trovarsi in uno dei seguenti stati: "offline", "online", "non operativo", "operativo".],[],
  [*RF*], [Il sistema deve identificare eventuali cambi di stato dei magazzini.],[],
  [*RF*], [Il sistema deve identificare eventuali disconnessioni di uno o più magazzini segnandoli come "offline".], [capitolato#super[G]],

  [*RF*], [*Gestione dei disservizi.*], [capitolato#super[G]],
  [*RF*], [Il sistema può annullare ordini di un magazzino "non operativo".], [],
  [*RF*], [Il sistema può può assegnare ordini di un magazzino "non operativo" ad altri magazzini.], [],
  [*RF*], [Un magazzino offline deve annullare gli ordini che non può soddisfare dopo un periodo di tempo predefinito.],[],

  [*RF*], [*Gestione magazzino che cambia stato da offline a online.*], [capitolato#super[G]],
  [*RF*], [Il sistema deve riconoscere quando un magazzino torna online.], [capitolato#super[G]],

  [*RF*], [*Annullamento di ordini in transito.*], [],
  [*RF*], [Un ordine in stato "in transito" deve cambiare lo stato in "annullato" dopo una soglia temporale predefinita.],[],

  //Requisiti#super[G] Funzionali desiderabili
  
  [*RFD*], [Il Supervisore Globale può definire il costo massimo per i trasferimenti eseguibili mediante riassortimento automatico.],[],
  [*RFD*], [Il Supervisore Globale può definire la distanza massima tra magazzini per il riassortimento automatico.],[],

  [*RFD*], [*Suggerimento su azioni di riassortimento#super[G] e trasferimento#super[G] tra magazzini.*], [capitolato#super[G]],
  [*RFD*], [Il sistema invia una richiesta decisionale al Supervisore Globale qualora un riassortimento superi i costi o le distanze massime.], [],

  [*RFD*], [*Interfaccia grafica.*], [capitolato#super[G]],
  [*RFD*], [Deve essere possibile effettuare la registrazione del Supervisore Globale mediante Interfaccia Grafica.], [],
  [*RFD*], [Deve essere possibile effettuare l'autenticazione dell'utente mediante Interfaccia Grafica.], [],
  [*RFD*], [Deve essere possibile effettuare la registrazione di nuovi Supervisori Locali mediante Interfaccia Grafica.], [],
  [*RFD*], [Deve essere possibile effettuare la gestione manuale delle merci mediante Interfaccia Grafica.], [],
  [*RFD*], [Deve essere possibile effettuare la gestione manuale degli ordini mediante Interfaccia Grafica.], [],
  [*RFD*], [Deve essere possibile effettuare l'auditing dei dati dei magazzini mediante Interfaccia Grafica.], [], 
  [*RFD*], [Deve essere possibile effettuare la gestione delle richieste mediante Interfaccia Grafica.], [], 
  [*RFD*], [Deve essere possibile effettuare la gestione delle soglie critiche mediante Interfaccia Grafica.], [],

  [*RFD*], [*Produzione di notifiche.*], [],
  [*RFD*], [Il Sistema deve notificare i Supervisori al superamento dei livelli minimi e massimi di scorte.], [],
  [*RFD*], [Il Sistema deve notificare i Supervisori dell'esecuzione del riassortimento automatico.], [],
  [*RFD*], [Un magazzino deve notificare i Supervisori dei cambi di stato degli ordini.], [],
  [*RFD*], [Un magazzino deve notificare i Supervisori dell'impossibilità di soddisfare un ordine.], [],
  [*RFD*], [Un magazzino deve notificare i Supervisori quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
  [*RFD*], [Un magazzino deve notificare i Supervisori quando le scorte#super[G] salgono sopra una certa soglia.], [capitolato#super[G]],
  [*RFD*], [Il sistema deve notificare i Supervisori di eventuali cambi di stato dei magazzini.],[],
  [*RFD*], [L'invio di notifiche deve poter avvenire tramite email.], [capitolato#super[G].],
  [*RFD*], [L'invio di notifiche deve poter avvenire tramite SMS.], [capitolato#super[G].],

  [*RFD*], [*Produzione di richieste decisionali.*], [],  
  [*RFD*], [Il Sistema deve inviare al Supervisore Globale le richieste decisionali prodotte dal riassortimento predittivo.], [],

  [*RFD*], [*Riassortimento predittivo.*], [],
  [*RFD*], [Il sistema deve avere uno storico dei livelli di merce.], [progettazione],
  [*RFD*], [Il sistema deve poter analizzare i dati storici degli ordini.], [capitolato#super[G]],
  [*RFD*], [Il sistema deve poter analizzare i dati storici di inventario dei magazzini.], [capitolato#super[G]],
  [*RFD*], [Il sistema deve implementare un modello di previsione della domanda dei prodotti.], [capitolato#super[G]],
  [*RFD*], [Il sistema deve poter pianifiare i riassortimenti sulla base del modello di previsione.], [capitolato#super[G]],
  [*RFD*], [Il sistema deve inviare una richiesta decisionale al Supervisore Globale di approvigionamento sulla base del modello di previsione.], [capitolato#super[G]],
  [*RFD*], [Il sistema deve inviare una richiesta decisionale al Supervisore Globale di riassortimento sulla base del modello di previsione.], [capitolato#super[G]],  

  //Requisiti#super[G] Funzionali opzionali

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
  [*RV*], [*L'architettura del sistema deve usare microservizi.*], [capitolato#super[G]],

  [*RV*], [*Versionamento del codice tramite Git.*], [capitolato#super[G]],

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

  [*RQ*], [*Autonomia dei magazzini.*], [capitolato#super[G]],
  [*RQ*], [I magazzini devono poter operare autonomamente.], [capitolato#super[G]],
  [*RQ*], [I magazzini devono poter elaborare localmente le richieste.], [capitolato#super[G]],
  [*RQ*], [Il magazzino deve gestire gli ordini concorrenti per uno stesso prodotto secondo una politica predefinita.], [],

  [*RQ*], [*Robustezza dei magazzini.*], [capitolato#super[G]],
  [*RQ*], [I dati di inventario e degli ordini devono essere coerenti, consistenti e persistenti in tutto il sistema.], [capitolato#super[G]],
  [*RQ*], [I dati di inventario devono essere resilienti a modifiche concorrenti.], [],

  [*RQ*], [*Sicurezza del sistema.*], [capitolato#super[G]],
  [*RQ*], [Deve essere implementata la cifratura#super[G] end-to-end negli scambi dei dati tra magazzini e con il sistema.], [capitolato#super[G]],
  [*RQ*], [Il sistema deve implementare un log dei tentativi di accesso.], [capitolato#super[G]],
  [*RQ*], [Il sistema deve identificare tentativi di accesso non autorizzati.], [capitolato#super[G]],
  [*RQ*], [Il sistema deve notificare il Supervisore Globale di tentativi di accesso non autorizzati.], [capitolato#super[G]],

  [*RQ*], [*Unit test e code coverage.*], [capitolato#super[G]],
  [*RQ*], [La correttezza delle funzioni sviluppate deve essere garantita dai test unitari.], [capitolato#super[G]],
  [*RQ*], [La copertura del codice deve essere superiore al ____ .], [capitolato#super[G]], //INSERIRE CODE-COVERAGE DI M31   
  [*RQ*], [Il test devono poter essere eseguiti in maniera automatizzata.], [capitolato#super[G]],
  [*RQ*], [Devono essere eseguiti test di non regressione.], [capitolato#super[G]],

  [*RQ*], [*Test book dettagliato.*], [capitolato#super[G]],
  [*RQ*], [Tutti i test devono essere documentati in un test book.], [capitolato#super[G]],
  [*RQ*], [Il test book deve includere una descrizione dei casi di test.], [capitolato#super[G]],  
  [*RQ*], [Il test book deve includere le condizioni iniziali dei test.], [capitolato#super[G]],
  [*RQ*], [Il test book deve includere i passaggi eseguiti dai test.], [capitolato#super[G]],    
  [*RQ*], [Il test book deve includere i risultati attesi e ottenuti dai test.], [capitolato#super[G]],
  [*RQ*], [Il test book deve includere criteri di validazione dei test.], [capitolato#super[G]],

  [*RQ*], [*Il Sistema deve essere scalabile orizzontalmente.*], [capitolato#super[G]],

  [*RQ*], [*La gestione dei magazzini deve essere distribuita.*], [capitolato#super[G]],



//Requisiti di Qualità desiderabili

  [*RQD*], [Il sistema deve automatizzare il processo di riassortimento#super[G] se rispetta il costo e la distanza massima.], [capitolato#super[G]],

  [*RQD*], [II magazzino detiene la fonte affidabile dei dati di inventario e degli ordini.], [capitolato#super[G]],

//Requisiti di Qualità opzionali

  [*RQO*], [Il sistema deve prevedere la possibilità di autenticazione#super[G] a due fattori (2FA#super[G]) per gli utenti.], [capitolato#super[G]],

  [*RQO*], [Le richieste verso i microservizi devono essere autenticate.], [capitolato#super[G]],

  [*RQO*], [Gli scambi di dati tra microservizi devono essere cifrati.], [capitolato#super[G]],

)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] di qualità_]

== Requisiti#super[G] Prestazionali
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

//Requisiti Prestazionali obbligatori
  [*RP01*], [*Mantenimento di prestazioni elevate anche con carichi elevati di dati e richieste simultanee.*], [capitolato#super[G]],

//Requisiti Prestazionali desiderabili
  [*RP01*], [*Mantenimento di prestazioni elevate anche con carichi elevati di dati e richieste simultanee.*], [capitolato#super[G]],

//Requisiti Prestazionali opzionali
  [*RP01*], [*Mantenimento di prestazioni elevate anche con carichi elevati di dati e richieste simultanee.*], [capitolato#super[G]],

)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] prestazionali_]

#pagebreak()

== Tracciamento dei casi d'uso

#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)

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

  [*Funzionali*],[57],[27],[5],
  [*Qualità*],[47],[-],[23],
  [*Prestazionali*],[4],[-],[-],
  [*Vincolo*],[-],[-],[-],
  [*Totale*],[*108*],[*27*],[*28*],
)
#align(center)[_Tabella #tabella_counter: Riepilogo dei Requisiti_]