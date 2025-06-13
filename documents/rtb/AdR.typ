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

#let versione = "0.7.2"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.7.2],
  [12/06/2025],
  [N. Bolzon \ N. Moretto \ S. Speranza],
  [-],
  [Ulteriori modifiche ai casi d'uso.],

  [0.7.1],
  [10/06/2025],
  [N. Bolzon \ S. Speranza],
  [-],
  [Modifiche ai casi d'uso.],

  [0.7.0],
  [09/06/2025],
  [N. Bolzon \ N. Moretto \ S. Marana \ S. Speranza],
  [-],
  [Riscrittura dei requisiti.],

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

/* INDICE DELLE TABELLE*/
#outline(
  title: [Lista delle Tabelle],
  target: figure.where(kind: table),
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


Questo documento è destinato a:

- Il Committente#super[G], per verificare la corretta interpretazione dei requisiti.;

- Il Team di Progettisti#super[G] e Programmatori#super[G], come guida per la realizzazione del sistema;

- Il Team di Verificatori#super[G], per definire i test e verificare il corretto funzionamento del prodotto;

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

== Glossario
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

=== Riferimenti normativi
/*Da cambiare al cambio di versione*/
- *Norme di Progetto:* \ #link("https://teamcodealchemists.github.io/docs/rtb/NdP_0.5.0.pdf")[https://teamcodealchemists.github.io/docs/rtb/NdP_0.5.0.pdf] \ *Ultimo Accesso:* 27 Maggio 2025

- *Capitolato d'appalto C6 _Sistema di Gestione di un Magazzino Distribuito_*: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf]\ *Ultimo Accesso:* 27 Maggio 2025

=== Riferimenti informativi
- *Diagrammi dei Casi d'Uso:* \ #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf] \ *Ultimo Accesso:* 27 Maggio 2025
- *Analisi dei Requisiti:* \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf] \ *Ultimo Accesso:* 27 Maggio 2025
- *Glossario:* \ #link("https://teamcodealchemists.github.io/glossario.html")[https://teamcodealchemists.github.io/glossario.html] \ *Ultimo Accesso:* 27 Maggio 2025
- *Standard IEEE:* \ #link("https://ieeexplore.ieee.org/document/720574")[https://ieeexplore.ieee.org/document/720574] \ *Ultimo Accesso:* 27 Maggio 2025

#pagebreak()
= Casi d'uso
== Introduzione
In questa sezione del documento vengono presentati i casi d’uso individuati durante l’attività di analisi, condotta a partire dal capitolato d’appalto e dagli incontri con il proponente.

Ogni caso d’uso è costituito da un diagramma UML e da una descrizione testuale dettagliata, utile a chiarire le funzionalità attese dal sistema. La descrizione riporta, inoltre, le informazioni previste nella tabella sottostante, fatta eccezione per i campi che, in base alla natura del caso d’uso, risultano non applicabili _(ad esempio, se non sono previste situazioni di errore, non saranno presenti scenari alternativi)_.

#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#set table(
  fill: (x, y) => if y == 0 {gray} else if x == 0 {luma(235)},
  align: (x, _) => if x == 0 {center} else {left},
)

#figure(
  table(
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
  ),
  caption: [Componenti del caso d’uso e loro descrizione],
)

=== Codifica dei casi d'uso
I casi d'uso sono codificati utilizzando la seguente notazione:

#align(center)[
*UC [ID-Principale].[ID-Sottocaso]*
]

== Attori
In questa sezione del documento vengono esposti gli attori utilizzati nel sistema:

#figure(
  table(
  columns: (1.3fr, 4fr),
  inset: 10pt,
  table.header(
    [*Attore*], [*Descrizione*]
  ),
    [*Utente*], [Utente non autenticato che vuole accedere al Sistema.],
    [*Supervisore*], [Generalizzazione degli attori Supervisori Locali e Supervisore Globale.],
    [*Supervisore\ Globale*], [Gestisce l’intero sistema di magazzini con visualizzazione globale.],
    [*Supervisore\ Locale*], [Gestisce solo uno o più magazzini a lui affidati dal Supervisore Globale.],
  ),
  caption: [Descrizione degli attori coinvolti nel sistema],
)


Identificativo univoco del caso d’uso, composto da un ID principale che identifica il caso principale e, se necessario, da un ID del sottocaso.

#pagebreak()
== Lista dei Casi d'uso

=== - UC 1: Primo accesso al sistema
#label("uc-1")

#figure(
  image("assets/UC1.png", width: 50%),
  caption: [UC1 - Primo accesso al sistema]
)

- *Attore Principale*: Utente

- *Precondizione*:
  - Non esiste un Utente registrato presso il Sistema.

- *Postcondizione*:
  - L’Utente possiede un account presso il Sistema, contraddistinto da email e password e contentente anche nome, cognome e numero di cellulare.
  - L'Utente assume il ruolo di Supervisore Globale del Sistema.
  - L'Utente è autenticato presso il Sistema.

- *Scenario principale*:
  + L'Utente avvia il Sistema.
  + L'Utente visualizza una schermata per la registrazione.
  + L'Utente inserisce nome e cognome.
  + L'Utente inserisce l'indirizzo email.
  + L’Utente inserisce la Password.
  + L'Utente inserisce il numero di cellulare.
  + L’Utente inserisce nuovamente la Password per confermarla.

- *Trigger*: 
  - L'Utente vuole registrarsi come primo e unico Supervisore Globale del Sistema.

#pagebreak()
=== - UC 2: Autenticazione
#label("uc-2")

#figure(
  image("assets/UC2.png", width: 70%),
  caption: [UC2 - Autenticazione]
)

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
  + Se le credenziali sono errate → #link(label("uc-3"), underline("[UC 3]"))

- *Estensioni*:
  - #link(label("uc-3"), underline("[UC 3]"))

- *Trigger*:
  - L’Utente vuole autenticarsi presso il Sistema.

#pagebreak()
=== - UC 3: Autenticazione fallita
#label("uc-3")

#figure(
  image("assets/UC3.png", width: 50%),
  caption: [UC3 - Autenticazione fallita]
)

- *Attore Principale*: Utente

- *Precondizione*:
  - L'Utente non è autenticato nel Sistema.
- *Postcondizione*:
  - L'Utente è ancora non autenticato nel Sistema.
  - Viene fornita all'Utente la possibilità di autenticarsi nuovamente.
- *Scenario principale*
  + L'Utente riceve un messaggio di errore.

#pagebreak()
=== - UC 4: Logout
#label("uc-4")

#figure(
  image("assets/UC4.png", width: 60%),
  caption: [UC4 - Logout]
)

- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.

- *Postcondizione*:
  - Il Supervisore ha effettuato il logout dal Sistema.

- *Scenario principale*:
  + Il Supervisore viene disconnesso dal Sistema.
  + Il Supervisore non più autenticato visualizza la schermata di autenticazione.

- *Trigger*:
  - Il Supervisore preme sul pulsante di Logout.

#pagebreak()
=== - UC 5: Registrazione di un nuovo Supervisore Locale
#label("uc-5")

#figure(
  image("assets/UC5.png", width: 50%),
  caption: [UC5 - Registrazione di un nuovo Supervisore Locale]
)

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
  + Il Supervisore Globale inserisce numero di cellulare per il nuovo Supervisore Locale.
  + Il Supervisore Globale assegna i magazzini di pertinenza del Supervisore Locale.
  + Il Supervisore Globale conferma i dati inseriti.
  + Il Supervisore Globale torna alla pagina di gestione utenti.

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Supervisore Locale.

#pagebreak()

#figure(
  image("assets/UC6-7-8.png", width: 50%),
  caption: [UC6, UC7, UC8 - Aggiunta, Rimozione e Modifica di un nuovo magazzino]
)

=== - UC 6: Aggiunta di un nuovo magazzino
#label("uc-6")
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

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Magazzino.


=== - UC 7: Rimozione di un magazzino
#label("uc-7")
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

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Rimuovi Magazzino


=== - UC 8: Modifica di un magazzino
#label("uc-8")
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

#pagebreak()

#figure(
  image("assets/UC9-10.png", width: 60%),
  caption: [UC9, UC10 - Aggiunta e Rimozione tipologia di merce]
)

=== - UC 9: Aggiunta nuova tipologia di merce
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
  + Il Supervisore può inserire le quantità di prodotto.
  + Il Supervisore può inserire i valori delle soglie minime.
  + Il Supervisore può inserire i valori delle soglie massime.
  + Il Supervisore conferma i dati inseriti.
  + Il Supervisore torna alla pagina di inventario.

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Nuova Tipologia Merce.

=== - UC 10: Rimozione tipologia di merce
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

#pagebreak()
=== - UC 11: Modifica dati di quantità di un prodotto in un singolo magazzino
#label("uc-11")

#figure(
  image("assets/UC11.png", width: 60%),
  caption: [UC11 - Modifica dati di quantità di un prodotto in un singolo magazzino]
)

- *Attore Principale*: Supervisore 
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inventario di un magazzino.
  - Il Supervisore ha selezionato il prodotto di cui modificare le quantità.

- *Postcondizione*:
  - I dati di quantità di un prodotto in un singolo magazzino sono stati modificati.
  - Il Supervisore si trova nella pagina inventario di un magazzino.

- *Scenario principale*:
  + Il Supervisore modifica le quantità di prodotto e/o le soglie minime e/o massime.
  + Il Supervisore conferma i dati inseriti.
  + Il Supervisore torna alla pagina di inventario del magazzino.

- *Trigger*:
  - Il Supervisore preme il pulsante Modifica Prodotto.

#pagebreak()
=== - UC 12: Inserimento prodotto in un ordine
#label("uc-12")

#figure(
  image("assets/UC12.png", width: 60%),
  caption: [UC12 - Inserimento prodotto in un ordine]
)

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

#pagebreak()

#figure(
  image("assets/UC13-14-15.png", width: 80%),
  caption: [UC13, UC14, UC15 - Inserimento ordini]
)

=== - UC 13: Inserimento ordine di trasferimento interno
#label("uc-13")

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
  - #link(label("uc-12"), underline("[UC 12]"))
  
- *Trigger*:
  - Il Supervisore seleziona *Trasferimento Interno* come tipologia ordine.


=== - UC 14: Inserimento ordine di approvvigionamento
#label("uc-14")

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
  - #link(label("uc-12"), underline("[UC 12]"))
  
- *Trigger*:
  - Il Supervisore seleziona *Approvvigionamento* come tipologia ordine.


=== - UC 15: Inserimento ordine di vendita
#label("uc-15")

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
  - #link(label("uc-12"), underline("[UC 12]"))
  
- *Trigger*:
  - Il Supervisore seleziona *Vendita* come tipologia ordine.

#pagebreak()
=== - UC 16: Annullamento ordine
#label("uc-16")

#figure(
  image("assets/UC16.png", width: 60%),
  caption: [UC16 - Annullamento ordine]
)

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
  - Il Supervisore preme il pulsante *Annulla Ordine*.

#pagebreak()
=== - UC 17: Visualizzazione inventario globale
#label("uc-17")

#figure(
  image("assets/UC17.png", width: 70%),
  caption: [UC17 - Visualizzazione inventario globale]
)

- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di inventario.
- *Postcondizione*:
  - Il Supervisore Globale ha visualizzato l'inventario complessivo di tutti i magazzini.
- *Scenario principale*:
  + Il Supervisore Globale visualizza l'inventario complessivo dei magazzini.
  + Selezione di un magazzino → #link(label("uc-19"), underline("[UC 19]"))  
- *Estensioni*:
  - #link(label("uc-19"), underline("[UC 19]"))  
- *Trigger*:
  - Il Supervisore Globale entra nella pagina di *inventario*.

#pagebreak()
=== - UC 18: Selezione singolo magazzino per visualizzazione del suo inventario
#label("uc-18")

#figure(
  image("assets/UC18.png", width: 70%),
  caption: [UC18 - Selezione singolo magazzino per visualizzazione del suo inventario]
)

- *Attore Principale*: Supervisore Locale
- *Precondizione*:
  - Il Supervisore Locale è autenticato presso il Sistema.
  - Il Supervisore Locale si trova nella pagina di inventario.
- *Postcondizione*:
  - Il Supervisore ha visualizzato l'inventario di un singolo magazzino selezionato
- *Scenario principale*:
  + Il Supervisore Locale seleziona un magazzino.
  + Il Supervisore Locale visualizza l’inventario del magazzino -> #link(label("uc-19"), underline("[UC 19]"))  
- *Inclusioni*:
  - #link(label("uc-19"), underline("[UC 19]"))  
- *Trigger*:
  - Il Supervisore Locale entra nella pagina di *inventario*.

#pagebreak()
=== - UC 19: Visualizzazione inventario singolo magazzino
#label("uc-19")

#figure(
  image("assets/UC19.png", width: 60%),
  caption: [UC19 - Visualizzazione inventario singolo magazzino]
)

- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di inventario.
  - Il Supervisore ha selezionato un magazzino.
- *Postcondizione*:
  - Il Supervisore ha visualizzato l'inventario di un singolo magazzino selezionato.
- *Scenario principale*:
  + Il Supervisore visualizza l'inventario di un singolo magazzino.

#pagebreak()
=== - UC 20: Visualizzazione report ordini
#label("uc-20")

#figure(
  image("assets/UC20.png", width: 60%),
  caption: [UC20 - Visualizzazione report ordini]
)

- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina ordini.

- *Postcondizione*:
  - Il Supervisore Globale ha visualizzato l'elenco complessivo degli ordini di tutti i magazzini.

- *Scenario principale*:
  + Il Supervisore Globale visualizza l'elenco complessivo degli ordini di tutti i magazzini.
  + Selezione di un magazzino → #link(label("uc-22"), underline("[UC 22]"))

- *Estensioni*:
  - #link(label("uc-22"), underline("[UC 22]"))

- *Trigger*:
  - Il Supervisore Globale entra nella pagina *ordini*.

#pagebreak()
=== - UC 21: Selezione magazzino per visualizzazione del suo report ordini
#label("uc-21")

#figure(
  image("assets/UC21.png", width: 60%),
  caption: [UC21 - Selezione magazzino per visualizzazione del suo report ordini]
)

- *Attore Principale*: Supervisore Locale

- *Precondizione*:
  - Il Supervisore Locale è autenticato presso il Sistema.
  - Il Supervisore Locale si trova nella pagina ordini.

- *Postcondizione*:
  - Il Supervisore Locale ha visualizzato il report degli ordini di un magazzino.

- *Scenario principale*:
  + Il Supervisore Locale seleziona un magazzino
  + Il Supervisore visualizza il report degli ordini di un magazzino → #link(label("uc-22"), underline("[UC 22]"))  

- *Inclusioni*:
  - #link(label("uc-22"), underline("[UC 22]"))

- *Trigger*:
  - Il Supervisore Locale entra nella pagina *ordini*.

#pagebreak()
=== - UC 22: Visualizzazione report ordini singolo magazzino
#label("uc-22")

#figure(
  image("assets/UC22.png", width: 60%),
  caption: [UC22 - Visualizzazione report ordini singolo magazzino]
)

- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina ordini.
  - Il Supervisore ha selezionato un magazzino.

- *Postcondizione*:
  - Il Supervisore ha visualizzato il report degli ordini di un singolo magazzino.

- *Scenario principale*:
  + Il Supervisore visualizza il report degli ordini di un singolo magazzino.

#pagebreak()
=== - UC 23: Visualizzazione stato magazzini
#label("uc-23")

#figure(
  image("assets/UC23.png", width: 60%),
  caption: [UC23 - Visualizzazione stato magazzini]
)

- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina realtiva allo stato dei magazzini.

- *Postcondizione*:
  - Il Supervisore ha visualizzato lo stato di tutti i magazzini.

- *Scenario principale*:
  + Il Supervisore visualizza lo stato di tutti i magazzini.

- *Trigger*:
  - Il Supervisore Locale entra nella pagina relativa allo stato dei magazzini.

#pagebreak()
=== - UC 24: Visualizzazione notifiche informative
#label("uc-24")

#figure(
  image("assets/UC24.png", width: 60%),
  caption: [UC24 - Visualizzazione notifiche informative]
)

- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina notifiche.
- *Postcondizione*:
  - Il Supervisore ha visualizzato le notifiche informative prodotte dal sistema.
  - Il Supervisore si trova nella pagina notifiche.
- *Scenario principale*:
  + Il Supervisore visualizza le notifiche informative del sistema.

- *Trigger*:
  - Il Supervisore entra nella pagina *notifiche*.

#pagebreak()
=== - UC 25: Visualizzazione notifiche decisionali
#label("uc-25")

#figure(
  image("assets/UC25.png", width: 70%),
  caption: [UC25 - Visualizzazione notifiche decisionali]
)

- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina notifiche.
- *Postcondizione*:
  - Il Supervisore Globale ha visualizzato le notifiche decisionali prodotte dal sistema.
  - Il Supervisore Globale si trova nella pagina notifiche.
- *Scenario principale*:
  + Il Supervisore Globale visualizza le notifiche decisionali del sistema.
    2. a) Se il Supervisore Globale accetta la notifica decisionale → #link(label("uc-26"), underline("[UC 26]"))
    2. b) Se il Supervisore Globale rifiuta la notifica decisionale → #link(label("uc-27"), underline("[UC 27]"))
  3. Il Sistema elabora la risposta del Supervisore Globale alla notifica.

- *Scenario alternativo*:
  2. Il Supervisore Globale non accettà nè rifiuta le notifiche entro un tempo prestabilito:
  + Il Sistema rifiuta automaticamente la notifica decisionale.

- *Estensioni*:
  - #link(label("uc-26"), underline("[UC 26]"))
  - #link(label("uc-27"), underline("[UC 27]"))  
- *Trigger*:
  - Il Supervisore Globale entra nella pagina *notifiche*.


=== - UC 26: Accettazione notifiche decisionali
#label("uc-26")
- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina notifiche.
  - Il Supervisore Globale ha accettato una notifica decisionale prodotta dal sistema.

- *Postcondizione*:
  - Il Sistema ha registrato l'accettazione della notifica decisionale da parte del Supervisore Globale.

- *Scenario principale*:
  + Il Sistema registra l'accettazione della notifica decisionale da parte del Supervisore Globale.


=== - UC 27: Rifiuto notifiche decisionali
#label("uc-27")
- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina notifiche.
  - Il Supervisore Globale ha accettato una notifica decisionale prodotta dal sistema.

- *Postcondizione*:
  - Il Sistema ha registrato l'accettazione della notifica decisionale da parte del Supervisore Globale.

- *Scenario principale*:
  + Il Sistema registra l'accettazione della notifica decisionale da parte del Supervisore Globale.


#pagebreak()
=== - UC 28: Aggiornamento parametri di sistema
#label("uc-28")

#figure(
  image("assets/UC28.png", width: 50%),
  caption: [UC28 - Aggiornamento parametri di sistema]
)

- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina Impostazioni.
- *Postcondizione*:
  - I parametri di sistema sono stati aggiornati.
- *Scenario principale*:
  + Il Supervisore Globale visualizza i parametri di sistema.
  + Il Supervisore Globale aggiorna uno o più parametri tra i seguenti:
    - Costo massimo per i trasferimenti interni automatici.
    - Distanza massima per i trasferimenti interni automatici
    - Tempo dopo cui gli ordini di un magazzino offline vengono automaticamente annullati.
    - Tempo dopo cui un ordine "in transito" cambia automaticamente stato in "annullato".
  + Il Supervisore Globale conferma l’aggiornamento dei parametri.
  + I parametri vengono aggiornati all’interno del sistema.
- *Scenario alternativo*:
  3. Il Supervisore Globale annulla l’aggiornamento dei parametri.
  + Il sistema mantiene i parametri precedenti e scarta le modifiche.
- *Trigger*:
  - Il Supervisore Locale entra nella pagina di *Impostazioni*.


#pagebreak()
= Requisiti
Verranno ora elencati i requisiti#super[G] del sistema, che sono stati suddivisi in quattro categorie principali: Requisiti#super[G] Funzionali, Requisiti#super[G] di Qualità, Requisiti#super[G] di Vincolo, Requisiti#super[G] Prestazionali.

== Classificazione dei requisiti
- *Requisiti Funzionali:* descrivono le funzionalità specifiche che il sistema deve offrire. Definiscono i comportamenti attesi in risposta a determinati input o situazioni, specificando cosa il sistema deve fare per soddisfare i bisogni degli utenti e degli stakeholder.

- *Requisiti di Qualità:* detti anche non funzionali, definiscono le caratteristiche generali del sistema che ne influenzano l’efficacia, l’efficienza e l’affidabilità. Rientrano in questa categoria aspetti come la sicurezza, l’usabilità, la manutenibilità, la scalabilità e l’affidabilità complessiva del sistema.

- *Requisiti di Vincolo:* specificano le limitazioni imposte da fattori esterni o immutabili, che il sistema o il processo di sviluppo devono rispettare. Tali vincoli possono derivare da normative, tecnologie obbligatorie, standard industriali, vincoli temporali o economici.

- *Requisiti di Prestazionali:* definiscono le aspettative in termini di prestazioni del sistema, come tempi di risposta, capacità di carico, throughput e uso delle risorse. Questi requisiti sono fondamentali per garantire un’esperienza utente adeguata anche sotto carico elevato.

== Fonti dei requisiti
Le fonti dei requisiti#super[G] rappresentano i documenti e le informazioni da cui sono stati estratti i requisiti#super[G] stessi. Tra le principali fonti si annoverano il capitolato#super[G] d'appalto, le riunioni con il committente#super[G], l’analisi dello stato dell’arte e l’analisi dei casi d’uso.

Ogni requisito riportato sarà accompagnato dall’indicazione esplicita della propria fonte di provenienza, al fine di garantirne la tracciabilità e la verificabilità.

== Struttura della codifica dei requisiti
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

// ===== REQUISITI FUNZIONALI =====

== Requisiti Funzionali
#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#set table(
  fill:(x,y)=> if y==0 {rgb("#2599ff")} else if x == 0 {luma(235)},
)

#figure(
  table(
    columns: (1fr, 3.5fr, 1.2fr),
    inset: 10pt,
    align: center,
    table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]),

    [*RF01*], [*Registrazione del Supervisore Globale.*], [decisione\ interna],
    [*RF01/01*], [Il Supervisore Globale deve registrarsi al primo avvio del sistema.], [decisione\ interna],

    [*RF02*], [*Autenticazione dell'utente.*], [capitolato#super[G]],
    [*RF02/01*], [L'utente deve poter accedere al sistema mediante credenziali.], [capitolato#super[G]],
    [*RF02/02*], [L'utente deve poter effettuare il logout dal sistema.], [capitolato#super[G]],  

    [*RF03*], [*Registrazione di nuovi Supervisori Locali.*], [decisione\ interna],
    [*RF03/01*], [Il Supervisore Globale può registrare a sistema nuovi Supervisori Locali.], [decisione\ interna],
    [*RF03/02*], [Il Supervisore Globale deve assegnare il/i magazzino/i a cui il Supervisore Locale ha accesso in fase di registrazione.], [decisione\ interna],

    [*RF04*], [*Gestione manuale dei magazzini.*], [capitolato#super[G]],
    [*RF04/01*], [Il Supervisore Globale deve poter aggiungere un nuovo magazzino a sistema.], [capitolato#super[G]],
    [*RF04/02*], [Il Supervisore Globale deve poter rimuovere un magazzino dal sistema.], [capitolato#super[G]],
    [*RF04/03*], [Il Supervisore Globale deve poter modificare informazioni di un magazzino.], [capitolato#super[G]],
    [*RF04/04*], [Ciascun magazzino deve essere identificato univocamente.], [capitolato#super[G]],

    [*RF05*], [*Gestione manuale delle merci.*], [capitolato#super[G]],
    [*RF05/01*], [I Supervisori possono inserire un nuovo tipo di merce nell'inventario di un magazzino.], [capitolato#super[G]],
    [*RF05/02*], [I Supervisori possono definire la quantità all'intersimento di un nuovo tipo di merce nell'inventario di un magazzino.], [capitolato#super[G]],
    [*RF05/03*], [Il Supervisore Globale può rimuovere un tipo di merce dall'inventario.], [capitolato#super[G]],
    [*RF05/04*], [I Supervisori possono modificare la quantità di merce nell'inventario dei magazzini.], [capitolato#super[G]],
    [*RF05/05*], [Il Supervisore Globale può modificare il prezzo unitario di un prodotto.], [capitolato#super[G]],

    [*RF06*], [*Gestione manuale degli ordini.*], [capitolato#super[G]],
    [*RF06/01*], [I Supervisori possono inserire ordini di trasferimento interno tra magazzini.], [capitolato#super[G]],
    [*RF06/02*], [I Supervisori possono inserire ordini di approvvigionamento dall'esterno.], [capitolato#super[G]],
    [*RF06/03*], [I Supervisori possono inserire ordini di vendita verso l'esterno.], [capitolato#super[G]],
    [*RF06/04*], [I Supervisori possono annullare ordini "in attesa" e "in elaborazione".], [decisione\ interna],

    [*RF07*], [*Auditing dei dati dei magazzini.*], [], 
    [*RF07/01*], [Il Supervisore Globale può visualizzare l'inventario globale.], [capitolato#super[G]],
    [*RF07/02*], [Il Supervisore Globale può visualizzare l'inventario di ciascun magazzino.], [capitolato#super[G]],
    [*RF07/03*], [Il Supervisore Globale può visualizzare un report degli ordini globali.], [capitolato#super[G]],
    [*RF07/04*], [Il Supervisore Globale può visualizzare un report degli ordini di ciascun magazzino.], [capitolato#super[G]],
    [*RF07/05*], [I Supervisori Locali possono visualizzare l'inventario del/dei magazzino/i a loro assegnato/i.], [capitolato#super[G]],
    [*RF07/06*], [I Supervisori Locali possono visualizzare un report degli ordini del/dei magazzino/i a loro assegnato/i.], [capitolato#super[G]],

    [*RF08*], [I Supervisori possono visualizzare lo stato di tutti i magazzini.], [capitolato#super[G]],

    [*RF09*], [*Gestione delle richieste.*], [capitolato#super[G]], 
    [*RF09/01*], [I Supervisori possono visualizzare le notifiche informative prodotte dal sistema.], [capitolato#super[G]],
    [*RF09/02*], [Il Supervisore Globale può accettare le richieste decisionali prodotte dal sistema.], [capitolato#super[G]],
    [*RF09/03*], [Il Supervisore Globale può rifiutare le richieste decisionali prodotte dal sistema.], [capitolato#super[G]],

    [*RF10*], [*Gestione delle soglie critiche.*], [capitolato#super[G]], 
    [*RF10/01*], [I Supervisori possono definire i valori di soglia minima all'inserimento di nuovo tipo di merce nell'inventario di un magazzino.], [capitolato#super[G]],
    [*RF10/02*], [I Supervisori possono definire i valori di soglia massima all'inserimento di nuovo tipo di merce nell'inventario di un magazzino.], [capitolato#super[G]],
    [*RF10/03*], [Il Supervisore Globale può modificare i valori di soglia minima e massima di ciascun tipo di merce per ciascun magazzino.], [capitolato#super[G]],
    [*RF10/04*], [I Supervisori Locali possono modificare i valori di soglia minima e massima di ciascun tipo di merce nel/nei magazzino/i a loro assegnato/i.], [capitolato#super[G]],

    [*RF11*], [*Rilevamento di carenza di scorte#super[G] di un magazzino.*], [capitolato#super[G]],
    [*RF11/01*], [Ciascun magazzino deve identificare quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
    [*RF11/02*], [Ciascun magazzino deve identificare quando le scorte#super[G] salgono sopra una certa soglia.], [capitolato#super[G]],

    [*RF12*], [*Gestione degli ordini.*], [capitolato#super[G]],
    [*RF12/01*], [Ciascun magazzino deve verificare la disponibilità delle scorte#super[G] per poter soddisfare un ordine ricevuto.], [capitolato#super[G]],
    [*RF12/02*], [Ciascun magazzino deve identificare l'impossibilità di soddisfare un ordine.], [capitolato#super[G]],
    [*RF12/03*], [Un magazzino con scorte insufficienti per gestire un ordine, deve richidere un riassortimento al sistema.], [decisione\ interna],
    [*RF12/04*], [Ciascun magazzino deve tracciare lo stato degli ordini.], [capitolato#super[G]],
    [*RF12/05*], [I magazzini possono inviare merce verso un altro magazzino tramite un ordine.],[capitolato#super[G]],
    [*RF12/06*], [I magazzini possono ricevere approvvigionamenti dall'esterno tramite ordine.],[capitolato#super[G]],
    [*RF12/07*], [I magazzini possono spedire merci verso l'esterno tramite ordine.],[capitolato#super[G]],
    [*RF12/08*], [Il magazzino di destinazione deve notificare l'arrivo della merce al magazzino di origine.], [decisione\ interna],
    [*RF12/09*], [Un ordine deve trovarsi in uno dei seguenti stati: "in attesa", "in elaborazione", "in transito", "annullato", "consegnato".], [decisione\ interna],

    [*RF13*], [*Riassortimento delle scorte#super[G] tra magazzini.*], [capitolato#super[G]],
    [*RF13/01*], [Il sistema deve programmare trasferimenti interni al raggiungimento di una soglia critica di un prodotto in un magazzino al fine di bilanciare le scorte.], [capitolato#super[G]],

    [*RF14*], [*Individuazione dello stato dei magazzini.*], [capitolato#super[G]],
    [*RF14/01*], [Ciascun magazzino può trovarsi in uno dei seguenti stati: "online", "offline".],[capitolato#super[G]],
    [*RF14/02*], [Il sistema deve identificare eventuali cambi di stato dei magazzini.],[capitolato#super[G]],
    [*RF14/03*], [Il sistema deve identificare eventuali disconnessioni di uno o più magazzini segnandoli come "offline".], [capitolato#super[G]],

    [*RF15*], [*Gestione dei disservizi.*], [capitolato#super[G]],
    [*RF15/01*], [Un magazzino offline deve annullare gli ordini che non può soddisfare dopo un periodo di tempo predefinito.],[decisione\ interna],
    [*RF15/02*], [Il Supervisore Globale può definire il periodo di tempo dopo cui l'ordine di un magazzino offline viene automaticamente anullato.],[decisione\ interna],

    [*RF16*], [*Gestione magazzino che cambia stato da offline a online.*], [capitolato#super[G]],
    [*RF16/01*], [Il sistema deve riconoscere quando un magazzino torna online.], [capitolato#super[G]],

    [*RF17*], [*Annullamento di ordini in transito.*], [concordata\ col proponente],
    [*RF17/01*], [Un ordine in stato "in transito" deve cambiare lo stato in "annullato" dopo una soglia temporale predefinita.],[concordata\ col proponente],
    [*RF17/02*], [Il Supervisore Globale può definire la soglia temporale dopo cui un ordine "in transito" cambia automaticamente stato in "annullato".],[decisione\ interna],

    //Requisiti Funzionali desiderabili
    [*RFD01*], [Il Supervisore Globale può definire il costo massimo per i trasferimenti eseguibili mediante riassortimento automatico.],[concordata\ col proponente],
    [*RFD02*], [Il Supervisore Globale può definire la distanza massima tra magazzini per il riassortimento automatico.],[concordata\ col proponente],

    [*RFD03*], [*Suggerimento su azioni di riassortimento#super[G] e trasferimento#super[G] tra magazzini.*], [capitolato#super[G]],
    [*RFD03/01*], [Il sistema invia una richiesta decisionale al Supervisore Globale qualora un riassortimento superi i costi o le distanze massime.], [concordata\ col proponente],

    [*RFD04*], [*Interfaccia grafica.*], [capitolato#super[G]],
    [*RFD04/01*], [Deve essere possibile effettuare la registrazione del Supervisore Globale mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/02*], [Deve essere possibile effettuare l'autenticazione dell'utente mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/03*], [Deve essere possibile effettuare la registrazione di nuovi Supervisori Locali mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/04*], [Deve essere possibile effettuare la gestione manuale delle merci mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/05*], [Deve essere possibile effettuare la gestione manuale degli ordini mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/06*], [Deve essere possibile effettuare l'auditing dei dati dei magazzini mediante Interfaccia Grafica.], [capitolato#super[G]], 
    [*RFD04/07*], [Deve essere possibile effettuare la gestione delle richieste mediante Interfaccia Grafica.], [capitolato#super[G]], 
    [*RFD04/08*], [Deve essere possibile effettuare la gestione delle soglie critiche mediante Interfaccia Grafica.], [capitolato#super[G]],

    [*RFD05*], [*Produzione di notifiche.*], [capitolato#super[G]],
    [*RFD05/01*], [Il Sistema deve notificare i Supervisori al superamento dei livelli minimi e massimi di scorte.], [capitolato#super[G]],
    [*RFD05/02*], [Il Sistema deve notificare i Supervisori dell'esecuzione del riassortimento automatico.], [capitolato#super[G]],
    [*RFD05/03*], [Ciascun magazzino deve notificare i Supervisori dei cambi di stato degli ordini.], [capitolato#super[G]],
    [*RFD05/04*], [Ciascun magazzino deve notificare i Supervisori dell'impossibilità di soddisfare un ordine.], [capitolato#super[G]],
    [*RFD05/05*], [Ciascun magazzino deve notificare i Supervisori quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
    [*RFD05/06*], [Ciascun magazzino deve notificare i Supervisori quando le scorte#super[G] salgono sopra una certa soglia.], [capitolato#super[G]],
    [*RFD05/07*], [Il sistema deve notificare il Supervisore Globale di eventuali cambi di stato dei magazzini.],[capitolato#super[G]],
    [*RFD05/08*], [L'invio di notifiche deve poter avvenire tramite email.], [capitolato#super[G]],
    [*RFD05/09*], [L'invio di notifiche deve poter avvenire tramite SMS.], [capitolato#super[G]],

    [*RFD06*], [*Produzione di richieste decisionali.*], [capitolato#super[G]],  
    [*RFD06/01*], [Il Sistema deve inviare al Supervisore Globale le richieste decisionali prodotte dal riassortimento predittivo.], [capitolato#super[G]],

    [*RFD07*], [*Riassortimento predittivo.*], [capitolato#super[G]],
    [*RFD07/01*], [Il sistema deve avere uno storico dei livelli di merce.], [decisione\ interna],
    [*RFD07/02*], [Il sistema deve poter analizzare i dati storici degli ordini.], [capitolato#super[G]],
    [*RFD07/03*], [Il sistema deve poter analizzare i dati storici di inventario dei magazzini.], [capitolato#super[G]],
    [*RFD07/04*], [Il sistema deve implementare un modello di previsione della domanda dei prodotti.], [capitolato#super[G]],
    [*RFD07/05*], [Il sistema deve poter pianifiare i riassortimenti sulla base del modello di previsione.], [capitolato#super[G]],
    [*RFD07/06*], [Il sistema deve inviare una richiesta decisionale al Supervisore Globale di approvvigionamento sulla base del modello di previsione.], [capitolato#super[G]],
    [*RFD07/07*], [Il sistema deve inviare una richiesta decisionale al Supervisore Globale di riassortimento sulla base del modello di previsione.], [capitolato#super[G]],  

    //Requisiti Funzionali opzionali
    [*RFO01*], [I supervisori devono poter eseguire un ripristino manuale dei dati da un backup.], [capitolato#super[G]],

    [*RFO02*], [*Gestione dei magazzini non operativi.*],[decisione\ interna],
    [*RFO02/01*], [Ciascun magazzino può trovarsi nello stato "non operativo".],[decisione\ interna],
    [*RFO02/02*], [Il sistema può annullare ordini di un magazzino "non operativo".], [decisione\ interna],
    [*RFO02/03*], [Il sistema può assegnare ordini di un magazzino "non operativo" ad altri magazzini.], [decisione\ interna],

  ),
  caption: [Requisiti Funzionali],
)


// ===== REQUISITI DI VINCOLO ==== 

== Requisiti di Vincolo

#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#set table(
  fill:(x,y)=> if y==0 {rgb("#2599ff")} else if x == 0 {luma(235)},
)

#figure(
  table(
    columns: (1fr, 3.5fr, 1.2fr),
    inset: 10pt,
    align: center,
    table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]),

    //Requisiti di Vincolo obbligatori
    [*RV01*], [L'architettura del sistema deve usare microservizi.], [capitolato#super[G]],
    [*RV02*], [Versionamento del codice tramite Git.], [capitolato#super[G]],

    //Requisiti di Vincolo desiderabili
    //Requisiti di Vincolo opzionali
  ),
  caption: [Requisiti di Vincolo],
)

#pagebreak()
// ===== REQUISITI DI QUALITA' ==== 

== Requisiti di Qualità

#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#set table(
  fill:(x,y)=> if y==0 {rgb("#2599ff")} else if x == 0 {luma(235)},
)

#figure(
  table(
    columns: (1fr, 3.5fr, 1.2fr),
    inset: 10pt,
    align: center,
    table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]),

    //Requisiti di Qualità Obbligatori

    [*RQ01*], [*Autonomia dei magazzini.*], [capitolato#super[G]],
    [*RQ01/01*], [I magazzini devono poter operare autonomamente.], [capitolato#super[G]],
    [*RQ01/02*], [I magazzini devono poter elaborare localmente le richieste.], [capitolato#super[G]],
    [*RQ01/03*], [Ciascun magazzino deve gestire gli ordini concorrenti per uno stesso prodotto secondo una politica predefinita.], [capitolato#super[G]],

    [*RQ02*], [*Robustezza dei magazzini.*], [capitolato#super[G]],
    [*RQ02/01*], [I dati di inventario e degli ordini devono essere coerenti, consistenti e persistenti in tutto il sistema.], [capitolato#super[G]],
    [*RQ02/02*], [I dati di inventario devono essere resilienti a modifiche concorrenti.], [capitolato#super[G]],

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
    ),
    caption: [Requisiti di Qualità],
  )

== Tracciamento dei casi d'uso

#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#set table(
  fill:(_,y)=> if y==0 {rgb("#2599ff")} else if y == 5 {luma(235)},
)

#figure(
  table(
  columns: (1fr, 0.5fr, 0.5fr, 0.5fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*],
  ),
    [*Funzionali*],     [-],  [-],  [-],
    [*Qualità*],        [-],  [-],  [-],
    [*Prestazionali*],  [-],  [-],  [-],
    [*Vincolo*],        [2],  [-],  [-],
    [*Totale*],         [**], [**], [**],
    ),
  caption: [Tracciamento dei casi d'uso],
)