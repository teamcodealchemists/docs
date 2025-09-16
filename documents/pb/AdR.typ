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
#let status = "Approvato"
#let destinatario = "M31"

#let versione = "2.0.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)


#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

  [2.0.0], [15/19/2025], [R. Zangla], [S. Speranza], [Approvazione del documento],

  [1.1.0], [08/08/2025], [N. Bolzon], [S. Speranza], [Modifiche al documento a seguito di quanto indicatoci in revisione RTB],  

  [1.0.0], [18/07/2025], [-], [N. Bolzon], [Approvazione del documento],

  [0.8.3],
  [17/07/2025],
  [A. Shu],
  [N. Bolzon],
  [Correzione di alcuni errori minori],  

  [0.8.2],
  [21/06/2025],
  [N. Bolzon],
  [M. Pretto],
  [Aggiunta super[G] mancanti per collegamento al glossario e correzione di alcuni errori minori di battitura],

  [0.8.1],
  [16/06/2025],
  [N. Bolzon \ N. Moretto \ S. Speranza],
  [M. Dalla Pozza],
  [Modifiche minori ai casi d'uso e requisiti.],

  [0.8.0],
  [13/06/2025],
  [N. Bolzon],
  [M. Dalla Pozza],
  [Terminata la riscrittura dei casi d'uso con aggiornamento delle tabelle di tracciamento e inserimento delle immagini realtive ad ogni caso d'uso.],

  [0.7.2],
  [12/06/2025],
  [N. Bolzon \ N. Moretto \ S. Speranza],
  [M. Dalla Pozza],
  [Riscrittura di altri casi d'uso, fino al UC28.],

  [0.7.1],
  [10/06/2025], 
  [N. Bolzon \ S. Speranza],
  [M. Dalla Pozza],
  [Riscrittura dei casi d'uso, fino al UC15.],

  [0.7.0],
  [09/06/2025],
  [N. Bolzon \ N. Moretto \ S. Marana \ S. Speranza],
  [M. Dalla Pozza],
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
  [Modifica dei requisiti sulla base delle osservazioni dei progettisti.],

  [0.1.0],
  [17/04/2025],
  [N. Moretto],
  [S. Marana],
  [Aggiunta descrizione glossario, descrizione requisiti e aggiunta di tutti i requisiti.],

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

- Il Committente#super[G], per verificare#super[G] la corretta interpretazione dei requisiti#super[G].;

- Il Team di Progettisti#super[G] e Programmatori#super[G], come guida per la realizzazione del sistema;

- Il Team di Verificatori#super[G], per definire i test e verificare#super[G] il corretto funzionamento del prodotto;

Potrà inoltre essere consultato da altri soggetti coinvolti nel processo di sviluppo, come Amministratori#super[G] e Responsabili#super[G] di Progetto, al fine di acquisire una comprensione esauriente delle specifiche del sistema.

== Descrizione del prodotto
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
- *Norme di Progetto:* \ #underline[#link("https://teamcodealchemists.github.io/docs/pb/NdP_2.0.0.pdf")[https://teamcodealchemists.github.io/docs/pb/NdP_2.0.0.pdf]] \ *Ultimo Accesso:* 14 Settembre 2025

- *Capitolato#super[G] d'appalto C6 _Sistema di Gestione di un Magazzino Distribuito_*: #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf]] \ *Ultimo Accesso:* 14 Settembre 2025

=== Riferimenti informativi
- *Diagrammi dei Casi d'Uso:* \ #underline[#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf]] \ *Ultimo Accesso:* 15 Luglio 2025
- *Analisi dei Requisiti#super[G]:* \ #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf]] \ *Ultimo Accesso:* 15 Luglio 2025
- *Glossario#super[G]:* \ #underline[#link("https://teamcodealchemists.github.io/glossario.html")[https://teamcodealchemists.github.io/glossario.html]] \ *Ultimo Accesso:* 14 Settembre 2025
- *Standard IEEE:* \ #underline[#link("https://ieeexplore.ieee.org/document/720574")[https://ieeexplore.ieee.org/document/720574]] \ *Ultimo Accesso:* 27 Maggio 2025

#pagebreak()
= Casi d'uso
== Introduzione
In questa sezione del documento vengono presentati i casi d’uso individuati durante l’attività di analisi, condotta a partire dal capitolato#super[G] d’appalto e dagli incontri con il proponente.

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

#figure(
  image("assets/UC1.png", width: 90%),
  caption: [UC1 - Primo accesso al sistema]
)

=== - UC 1: Primo accesso al sistema
#label("uc-1")

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
  + Se l'indirizzo email è sintatticamente errato → #link(label("uc-1.1"), underline("[UC 1.1]"))
  + L'Utente inserisce il numero di cellulare.
  + Se il numero di celluare è sintatticamente errato → #link(label("uc-1.2"), underline("[UC 1.2]"))
  + L’Utente inserisce la Password.
  + L’Utente inserisce nuovamente la Password per confermarla.
  + Se la Password inserita è sintatticamente errata → #link(label("uc-1.3"), underline("[UC 1.3]"))
  + Se la Password e la Password di conferma non corrispondono → #link(label("uc-1.4"), underline("[UC 1.4]"))

- *Estensioni*:
  - #link(label("uc-1.1"), underline("[UC 1.1]"))
  - #link(label("uc-1.2"), underline("[UC 1.2]"))
  - #link(label("uc-1.3"), underline("[UC 1.3]"))
  - #link(label("uc-1.4"), underline("[UC 1.4]"))

- *Trigger*: 
  - L'Utente vuole registrarsi come primo e unico Supervisore Globale del Sistema.

#pagebreak()
==== - UC 1.1: Inserimento sintatticamente errato del parametro email
#label("uc-1.1")
- *Attore Principale*: Utente
- *Precondizione*:
  - L'Utente non è registrato nel Sistema.
  - L'Utente ha inserito un indirizzo email sintatticamente errato _(senza \@, dominio non valido, caratteri strani inseriti)_.
- *Postcondizione*:
  - L'Utente non è ancora registrato nel Sistema.
  - Viene fornita all'Utente la possibilità di inserire nuovamente l'indirizzo email.
- *Scenario principale*
  + L'Utente riceve un messaggio di errore.

==== - UC 1.2: Inserimento sintatticamente errato del numero di cellulare
#label("uc-1.2")
- *Attore Principale*: Utente
- *Precondizione*:
  - L'Utente non è registrato nel Sistema.
  - L'Utente ha inserito un numero di cellulare sintatticamente errato _(lettere o caratteri speciali, lunghezza numero cifre diversa da 10)_.
- *Postcondizione*:
  - L'Utente non è ancora registrato nel Sistema.
  - Viene fornita all'Utente la possibilità di inserire nuovamente il numero di cellulare.
- *Scenario principale*
  + L'Utente riceve un messaggio di errore.

==== - UC 1.3: Inserimento sintatticamente errato della Password
#label("uc-1.3")
- *Attore Principale*: Utente
- *Precondizione*:
  - L'Utente non è registrato nel Sistema.
  - L'Utente ha inserito una Password sintatticamente errata _(non sono rispettate le regole di inserimento)_.
- *Postcondizione*:
  - L'Utente non è ancora registrato nel Sistema.
  - Viene fornita all'Utente la possibilità di inserire nuovamente la Password.
- *Scenario principale*
  + L'Utente riceve un messaggio di errore.

==== - UC 1.4: Password non corrispondenti
#label("uc-1.4")
- *Attore Principale*: Utente
- *Precondizione*:
  - L'Utente non è registrato nel Sistema.
- *Postcondizione*:
  - L'Utente non è ancora registrato nel Sistema.
  - Viene fornita all'Utente la possibilità di verificare#super[G] che Password e Password di conferma corrispondano.
- *Scenario principale*
  + L'Utente riceve un messaggio di errore.


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
  + Il Supervisore non più autenticato visualizza la schermata di autenticazione#super[G].

- *Trigger*:
  - Il Supervisore preme sul pulsante di Logout.

#pagebreak()

#figure(
  image("assets/UC5.png", width: 90%),
  caption: [UC5 - Registrazione di un nuovo Supervisore Locale]
)

=== - UC 5: Registrazione di un nuovo Supervisore Locale
#label("uc-5")

- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di gestione utenti.

- *Postcondizione*:
  - Un nuovo Supervisore Locale è stato registrato presso il sistema.
  - Il Supervisore Globale si trova nella pagina di gestione utenti.

- *Scenario principale*:
  + Il Supervisore Globale inserisce email del nuovo Supervisore Locale.
  + Se l'indirizzo email è sintatticamente errato → #link(label("uc-5.1"), underline("[UC 5.1]"))
  + Il Supervisore Globale inserisce una password per il nuovo Supervisore Locale.
  + Se la Password inserita è sintatticamente errata → #link(label("uc-5.2"), underline("[UC 5.2]"))
  + Il Supervisore Globale inserisce nome e cognome per il nuovo Supervisore Locale.
  + Il Supervisore Globale inserisce numero di cellulare per il nuovo Supervisore Locale.
  + Se il numero di cellulare inserito è sintatticamente errato → #link(label("uc-5.3"), underline("[UC 5.3]"))
  + Il Supervisore Globale assegna i magazzini di pertinenza del Supervisore Locale.
  + Il Supervisore Globale conferma i dati inseriti.
  + Il Supervisore Globale torna alla pagina di gestione utenti.

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Supervisore Locale.

- *Estensioni*:
  - #link(label("uc-5.1"), underline("[UC 5.1]"))
  - #link(label("uc-5.2"), underline("[UC 5.2]"))
  - #link(label("uc-5.3"), underline("[UC 5.3]"))

#pagebreak()
==== - UC 5.1: Errore email registrazione nuovo Supervisore Locale
#label("uc-5.1")
- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di registrazione di un nuovo Supervisore Locale.
  - Il Supervisore Globale ha inserto un indirizzo email sintatticamente errato _(senza \@, dominio non valido, caratteri strani inseriti)_.
- *Postcondizione*:
  - Il Supervisore Globale si trova nella pagina di registrazione di un nuovo Supervisore Locale.
  - Il Supervisore Globale non ha ancora registrato nel Sistema un nuovo Supervisore Locale.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.

==== - UC 5.2: Errore password registrazione nuovo Supervisore Locale
#label("uc-5.2")
- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di registrazione di un nuovo Supervisore Locale.
  - Il Supervisore Globale ha inserto una Password sintatticamente errata _(non sono rispettate le regole di inserimento)_.
- *Postcondizione*:
  - Il Supervisore Globale si trova nella pagina di registrazione di un nuovo Supervisore Locale.
  - Il Supervisore Globale non ha ancora registrato nel Sistema un nuovo Supervisore Locale.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.

==== - UC 5.3: Errore numero cellulare registrazione nuovo Supervisore Locale
#label("uc-5.3")
- *Attore Principale*: Supervisore Globale
- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina di registrazione di un nuovo Supervisore Locale.
  - Il Supervisore Globale ha inserto un numero di cellulare sintatticamente errato _(lettere o caratteri speciali, lunghezza numero cifre diversa da 10)_.
- *Postcondizione*:
  - Il Supervisore Globale si trova nella pagina di registrazione di un nuovo Supervisore Locale.
  - Il Supervisore Globale non ha ancora registrato nel Sistema un nuovo Supervisore Locale.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.

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
  image("assets/UC9-10.png", width: 90%),
  caption: [UC9, UC10 - Aggiunta e Rimozione tipologia di merce]
)

=== - UC 9: Aggiunta nuova tipologia di merce
#label("uc-9")
- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inventario#super[G] di un magazzino.

- *Postcondizione*:
  - Una nuova tipologia di merce è stata registrata a sistema.
  - Il Supervisore si trova nella pagina inventario#super[G] di un magazzino.

- *Scenario principale*:
  + Il Supervisore inserisce il codice EAN (barcode) del prodotto#super[G] da registrare.
  + Se il codice EAN (barcode) è sintatticamente errato → #link(label("uc-9.1"), underline("[UC 9.1]"))
  + Il Supervisore inserisce il nome del prodotto#super[G] da registrare.
  + Il Supervisore inserisce il prezzo unitario del prodotto#super[G] da registrare.
  + Se il prezzo unitario del prodotto#super[G] è sintatticamente errato → #link(label("uc-9.2"), underline("[UC 9.2]"))
  + Il Supervisore può inserire la quantità di prodotto#super[G].
  + Se la quantità di prodotto#super[G] è sintatticamente errata → #link(label("uc-9.3"), underline("[UC 9.3]"))
  + Il Supervisore può inserire il valore di soglia minima.
  + Se il valore di soglia minima è sintatticamente errato → #link(label("uc-9.4"), underline("[UC 9.4]"))
  + Il Supervisore può inserire il valore di soglia massima.
  + Se il valore di soglia massima è sintatticamente errato → #link(label("uc-9.4"), underline("[UC 9.4]"))
  + Il Supervisore conferma i dati inseriti.
  + Il Supervisore torna alla pagina di inventario#super[G] del magazzino selezionato.

- *Trigger*:
  - Il Supervisore preme il pulsante Aggiungi Nuova Tipologia Merce per il magazzino selezionato.

- *Estensioni*:
  - #link(label("uc-9.1"), underline("[UC 9.1]"))
  - #link(label("uc-9.2"), underline("[UC 9.2]"))
  - #link(label("uc-9.3"), underline("[UC 9.3]"))
  - #link(label("uc-9.4"), underline("[UC 9.4]"))

==== - UC 9.1: Errore sintattico codice EAN
#label("uc-9.1")
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di aggiunta nuova tipologia merce per il magazzino selezionato.
  - Il Supervisore ha inserto un codice EAN (barcode) errato (lettere, caratteri speciali e numero cifre numeriche diverso da 13).
- *Postcondizione*:
  - Il Supervisore si trova nella pagina di aggiunta nuova tipologia merce per il magazzino selezionato.
  - Il Supervisore non ha ancora aggiunto una nuova tipologia di merce all'inventario#super[G] del magazzino selezionato.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.

==== - UC 9.2: Errore sintattico prezzo unitario prodotto
#label("uc-9.2")
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di aggiunta nuova tipologia merce per il magazzino selezionato.
  - Il Supervisore ha inserto un prezzo unitario non conforme (più di 2 cifre decimali, valore con lettere e caratteri speciali).
- *Postcondizione*:
  - Il Supervisore si trova nella pagina di aggiunta nuova tipologia merce per il magazzino selezionato.
  - Il Supervisore non ha ancora aggiunto una nuova tipologia di merce all'inventario#super[G] del magazzino selezionato.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.

==== - UC 9.3: Errore sintattico quantità prodotto
#label("uc-9.3")
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di aggiunta nuova tipologia merce per il magazzino selezionato.
  - Il Supervisore ha inserto un valore di quantità del prodotto#super[G] non conforme (numero non intero e/o minore di 0).
- *Postcondizione*:
  - Il Supervisore si trova nella pagina di aggiunta nuova tipologia merce per il magazzino selezionato.
  - Il Supervisore non ha ancora aggiunto una nuova tipologia di merce all'inventario#super[G] del magazzino selezionato.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.

==== - UC 9.4: Errore sintattico valore di soglia prodotto
#label("uc-9.4")
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di aggiunta nuova tipologia merce per il magazzino selezionato.
  - Il Supervisore ha inserto un valore di soglia massima e/o minima non conforme (numero non intero e/o minore di 0).
- *Postcondizione*:
  - Il Supervisore si trova nella pagina di aggiunta nuova tipologia merce per il magazzino selezionato.
  - Il Supervisore non ha ancora aggiunto una nuova tipologia di merce all'inventario#super[G] del magazzino selezionato.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.

=== - UC 10: Rimozione tipologia di merce
#label("uc-10")
- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inventario#super[G].

- *Postcondizione*:
  - Una tipologia di merce è stata rimossa dal sistema.
  - Il Supervisore si trova nella pagina inventario#super[G].

- *Scenario principale*:
  + Il Supervisore seleziona la tipologia di merce da rimuovere.
  + Il Supervisore verifica#super[G] che la tipologia di merce selezionata abbia globalmente quantità nulla.
  + Il Supervisore conferma l'eliminazione.

- *Scenario alternativo*:
  + La quantità della tipologia di merce selezionata non è globalmente nulla.
  + Il Supervisore visualizza un messaggio di errore.

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Aggiungi Nuova Tipologia Merce.

#pagebreak()

#figure(
  image("assets/UC11.png", width: 90%),
  caption: [UC11 - Modifica dati di quantità di un prodotto in un singolo magazzino]
)

=== - UC 11: Modifica dati di quantità di un prodotto in un singolo magazzino
#label("uc-11")
- *Attore Principale*: Supervisore 

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inventario#super[G] di un magazzino.
  - Il Supervisore ha selezionato il prodotto#super[G] di cui modificare le quantità.

- *Postcondizione*:
  - I dati di quantità di un prodotto#super[G] in un singolo magazzino sono stati modificati.
  - Il Supervisore si trova nella pagina inventario#super[G] di un magazzino.

- *Scenario principale*:
  + Il Supervisore modifica le quantità di prodotto#super[G] e/o le soglie minime e/o massime.
  + Se la quantità di prodotto#super[G] è sintatticamente errata → #link(label("uc-11.1"), underline("[UC 11.1]")).
  + Se il valore di soglia minima e/o massima è sintatticamente errato → #link(label("uc-11.2"), underline("[UC 11.2]")).
  + Il Supervisore conferma i dati inseriti.
  + Il Supervisore torna alla pagina di inventario#super[G] del magazzino.

- *Scenario alternativo*:
  2. Il Supervisore Globale annulla l’aggiornamento dei dati.
  + Il sistema mantiene i dati precedenti e scarta le modifiche.

- *Trigger*:
  - Il Supervisore preme il pulsante Modifica Prodotto.

#pagebreak()
==== - UC 11.1: Errore sintattico modifica quantità prodotto
#label("uc-11.1")
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di modifica tipologia merce per il magazzino selezionato.
  - Il Supervisore ha inserto un valore di quantità del prodotto#super[G] non conforme (numero non intero e/o minore di 0).
- *Postcondizione*:
  - Il Supervisore si trova nella pagina di modifica tipologia merce per il magazzino selezionato.
  - Il Supervisore non ha modificato la tipologia di merce nell'inventario#super[G] del magazzino selezionato.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.

==== - UC 11.2: Errore sintattico modifica valore di soglia
#label("uc-11.2")
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di modifica tipologia merce per il magazzino selezionato.
  - Il Supervisore ha inserto un valore di soglia massima e/o minima non conforme (numero non intero e/o minore di 0).
- *Postcondizione*:
  - Il Supervisore si trova nella pagina di modifica tipologia merce per il magazzino selezionato.
  - Il Supervisore non ha modificato la tipologia di merce nell'inventario#super[G] del magazzino selezionato.
- *Scenario principale*
  + Il Supervisore Globale riceve un messaggio di errore.


#pagebreak()
=== - UC 12: Inserimento prodotto in un ordine
#label("uc-12")

#figure(
  image("assets/UC12.png", width: 80%),
  caption: [UC12 - Inserimento prodotto in un ordine]
)

- *Attore Principale*: Supervisore 

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inserimento ordine di un magazzino.

- *Postcondizione*:
  - I dati di un prodotto#super[G] sono inseriti nell'ordine#super[G].
  - Il Supervisore si trova nella pagina inserimento ordine di un magazzino.

- *Scenario principale*:
  + Il Supervisore inserisce il codice EAN (barcode) del prodotto#super[G].
  + Il Supervisore inserisce la quantità del prodotto#super[G].
  + Se la quantità del prodotto#super[G] è sintatticamente errata → #link(label("uc-12.1"), underline("[UC 12.1]")).
  + Il Supervisore inserisce il prezzo unitario del prodotto#super[G].

- *Estensioni*:
  - #link(label("uc-12.1"), underline("[UC 12.1]"))

- *Trigger*:
  - Il Supervisore preme il pulsante Inserisci Prodotto.

#pagebreak()
==== - UC 12.1: Errore sintattico quantità prodotto in un ordine
#label("uc-12.1")
- *Attore Principale*: Supervisore
- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di inserimento prodotto#super[G] in un ordine#super[G].
  - Il Supervisore ha inserto un valore di quantità del prodotto#super[G] non conforme (numero non intero e/o minore di 0).
- *Postcondizione*:
  - Il Supervisore si trova nella pagina di inserimento prodotto#super[G] in un ordine#super[G].
  - Il Supervisore non ha ancora inserito il prodotto#super[G] nell'ordine#super[G].
- *Scenario principale*
  + Il Supervisore riceve un messaggio di errore.

#pagebreak()

#figure(
  image("assets/UC13-14.png", width: 80%),
  caption: [UC13, UC14 - Inserimento ordini]
)

=== - UC 13: Inserimento ordine di trasferimento interno
#label("uc-13")

- *Attore Principale*: Supervisore 

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inserimento ordine di un magazzino.

- *Postcondizione*:
  - L'ordine#super[G] è stato inserito.
  - Il Supervisore si trova nella pagina ordini.

- *Scenario principale*:
  + Il Supervisore seleziona il magazzino di partenza.
  + Il Supervisore inserisce uno o più prodotti#super[G] nell'ordine#super[G] → #link(label("uc-12"), underline("[UC 12]")).
  + Il Supervisore conferma i dati dell'ordine#super[G].

- *Inclusioni*:
  - #link(label("uc-12"), underline("[UC 12]"))
  
- *Trigger*:
  - Il Supervisore seleziona *Trasferimento Interno* come tipologia ordine#super[G].



=== - UC 14: Inserimento ordine di vendita
#label("uc-14")

- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina inserimento ordine di un magazzino.

- *Postcondizione*:
  - L'ordine#super[G] è stato inserito.
  - Il Supervisore si trova nella pagina ordini.

- *Scenario principale*:
  + Il Supervisore inserisce l'indirizzo del destinatario.
  + Il Supervisore inserisce uno o più prodotti#super[G] nell'ordine#super[G] → #link(label("uc-12"), underline("[UC 12]")).
  + Il Supervisore conferma i dati dell'ordine#super[G].

- *Inclusioni*:
  - #link(label("uc-12"), underline("[UC 12]"))
  
- *Trigger*:
  - Il Supervisore seleziona *Vendita* come tipologia ordine#super[G].

#pagebreak()
=== - UC 15: Annullamento ordine
#label("uc-15")

#figure(
  image("assets/UC15.png", width: 60%),
  caption: [UC15 - Annullamento ordine]
)

- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina ordini del magazzino di interesse.
  - Il Supervisore ha selezionato un ordine#super[G] in stato "in attesa" o "in eleborazione" da annullare.

- *Postcondizione*:
  - L'ordine#super[G] è stato annullato.
  - Il Supervisore si trova nella pagina ordini.

- *Scenario principale*:
  + Il Supervisore annulla l'ordine#super[G].
  + Il Supervisore conferma l'annullamento dell'ordine#super[G].
  
- *Trigger*:
  - Il Supervisore preme il pulsante *Annulla Ordine*.

#pagebreak()
=== - UC 16: Visualizzazione inventario globale
#label("uc-16")
#figure(
  image("assets/UC16.png", width: 60%),
  caption: [UC16 - Visualizzazione inventario globale]
)

- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina principale _(è una pagina di riepilogo)_.

- *Postcondizione*:
  - Il Supervisore Globale ha visualizzato l'inventario#super[G] complessivo di tutti i magazzini.

- *Scenario principale*:
  + Il Supervisore Globale visualizza l'inventario#super[G] complessivo dei magazzini.

- *Trigger*:
  - Il Supervisore Globale entra nella pagina di inventario.

#pagebreak()
=== - UC 17: Visualizzazione inventario singolo magazzino
#label("uc-17")

#figure(
  image("assets/UC17.png", width: 60%),
  caption: [UC17 - Visualizzazione inventario singolo magazzino]
)

- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina di inventario#super[G] del magazzino di interesse.

- *Postcondizione*:
  - Il Supervisore ha visualizzato l'inventario#super[G] di un singolo magazzino selezionato.

- *Scenario principale*:
  + Il Supervisore visualizza l'inventario#super[G] di un singolo magazzino.

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
  - Il Supervisore Locale si trova nella pagina di principale _(è una pagina di riepilogo)_.

- *Postcondizione*:
  - Il Supervisore ha visualizzato l'inventario#super[G] di un singolo magazzino selezionato

- *Scenario principale*:
  + Il Supervisore Locale seleziona un magazzino.
  + Il Supervisore Locale visualizza l’inventario#super[G] del magazzino → #link(label("uc-17"), underline("[UC 17]"))  

- *Inclusioni*:
  - #link(label("uc-17"), underline("[UC 17]"))  

- *Trigger*:
  - Il Supervisore Locale entra nella pagina di Inventario.


#pagebreak()
=== - UC 19: Visualizzazione report ordini
#label("uc-19")

#figure(
  image("assets/UC19.png", width: 60%),
  caption: [UC19 - Visualizzazione report ordini]
)

- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina principale _(è una pagina di riepilogo)_.

- *Postcondizione*:
  - Il Supervisore Globale ha visualizzato l'elenco complessivo degli ordini#super[G] di tutti i magazzini.

- *Scenario principale*:
  + Il Supervisore Globale visualizza l'elenco complessivo degli ordini#super[G] di tutti i magazzini.

- *Trigger*:
  - Il Supervisore Globale entra nella pagina Ordini.

#pagebreak()
=== - UC 20: Visualizzazione report ordini singolo magazzino
#label("uc-20")

#figure(
  image("assets/UC20.png", width: 60%),
  caption: [UC20 - Visualizzazione report ordini singolo magazzino]
)

- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina ordini del magazzino di interesse.

- *Postcondizione*:
  - Il Supervisore ha visualizzato il report degli ordini#super[G] di un singolo magazzino.

- *Scenario principale*:
  + Il Supervisore visualizza il report degli ordini#super[G] di un singolo magazzino.


#pagebreak()
=== - UC 21: Selezione magazzino per visualizzazione del suo report ordini
#label("uc-21")

#figure(
  image("assets/UC21.png", width: 70%),
  caption: [UC21 - Selezione magazzino per visualizzazione del suo report ordini]
)

- *Attore Principale*: Supervisore Locale

- *Precondizione*:
  - Il Supervisore Locale è autenticato presso il Sistema.
  - Il Supervisore Locale si trova nella pagina principale _(è una pagina di riepilogo)_.

- *Postcondizione*:
  - Il Supervisore Locale ha visualizzato il report degli ordini#super[G] di un magazzino.

- *Scenario principale*:
  + Il Supervisore Locale seleziona un magazzino
  + Il Supervisore visualizza il report degli ordini#super[G] di un magazzino → #link(label("uc-20"), underline("[UC 20]"))  

- *Inclusioni*:
  - #link(label("uc-20"), underline("[UC 20]"))

- *Trigger*:
  - Il Supervisore Locale entra nella pagina Ordini.

#pagebreak()
=== - UC 22: Visualizzazione stato magazzini
#label("uc-22")

#figure(
  image("assets/UC22.png", width: 60%),
  caption: [UC22 - Visualizzazione stato magazzini]
)

- *Attore Principale*: Supervisore

- *Precondizione*:
  - Il Supervisore è autenticato presso il Sistema.
  - Il Supervisore si trova nella pagina principale _(è una pagina di riepilogo)_.

- *Postcondizione*:
  - Il Supervisore ha visualizzato lo stato di tutti i magazzini.

- *Scenario principale*:
  + Il Supervisore visualizza lo stato di tutti i magazzini.

- *Trigger*:
  - Il Supervisore Locale entra nella pagina relativa allo stato dei magazzini.

#pagebreak()
=== - UC 23: Visualizzazione notifiche informative
#label("uc-23")

#figure(
  image("assets/UC23.png", width: 60%),
  caption: [UC23 - Visualizzazione notifiche informative]
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
  - Il Supervisore entra nella pagina Notifiche.

#pagebreak()
=== - UC 24: Gestione notifiche decisionali
#label("uc-24")

#figure(
  image("assets/UC24.png", width: 50%),
  caption: [UC24 - Gestione delle notifiche decisionali]
)

- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Esiste almeno una notifica decisionale per il Supervisore.

- *Postcondizione*:
  - La notifica è stata processata e il suo stato è "accettata" o "rifiutata".

- *Scenario principale*:
  + Il Supervisore Globale accede alla funziona di gestione notifiche.
  + Il Sistema presenta la prima notifica in attesa e avvia un timer per la decisione (se non già attivo).
  + Il Supervisore Globale analizza la notifica e seleziona l'opzione "Accetta".
  + Il Sistema aggiorna lo stato della notifica a "Accettata", registra data/ora e utente, e conclude il processo per quella notifica.

- *Scenario alternativo*:
  3. a) Il Supervisore Globale analizza la notifica e seleziona l'opzione "Rifiuta".
  4. a) Il Sistema aggiorna lo stato della notifica a "Rifiutata", registra data/ora e utente, e conclude il processo per quella notifica.

  2. b) Il Sistema presenta la notifica al Supervisore (o il Supervisore non agisce su una notifica già presentata).
  3. b) Il Supervisore Globale non seleziona "Accetta" nè "Rifiuta" entro il tempo prestabilito dal timer.
  4. b) Il Sistema rileva la scadenza del timer.
  5. b) Il Sistema aggiorna automaticamente lo stato della notifica a "Rifiutata per scadenza" e termina il caso d'uso per quella notifica.

- *Trigger*:
  - Il Supervisore Globale sceglie di visualizzare le sue notifiche decisionali.


#pagebreak()
=== - UC 25: Aggiornamento parametri di sistema
#label("uc-25")

#figure(
  image("assets/UC25.png", width: 50%),
  caption: [UC25 - Aggiornamento parametri di sistema]
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
    - Distanza massima per i trasferimenti interni automatici.
    - Tempo dopo cui gli ordini#super[G] di un magazzino offline vengono automaticamente annullati.
    - Tempo dopo cui un ordine#super[G] "in transito" cambia automaticamente stato in "annullato".
  + Il Supervisore Globale conferma l’aggiornamento dei parametri.
  + I parametri vengono aggiornati all’interno del sistema.

- *Scenario alternativo*:
  3. Il Supervisore Globale annulla l’aggiornamento dei parametri.
  + Il sistema mantiene i parametri precedenti e scarta le modifiche.

- *Trigger*:
  - Il Supervisore Locale entra nella pagina di Impostazioni.

#pagebreak()
=== - UC 26: Modifica globale del prezzo unitario di un prodotto
#label("uc-26")

#figure(
  image("assets/UC26.png", width: 50%),
  caption: [UC26 - Modifica globale del prezzo unitario di un prodotto]
)

- *Attore Principale*: Supervisore Globale

- *Precondizione*:
  - Il Supervisore Globale è autenticato presso il Sistema.
  - Il Supervisore Globale si trova nella pagina inventario#super[G] di un magazzino.
  - Il Supervisore Globale ha selezionato il prodotto#super[G] di cui modificare il prezzo.

- *Postcondizione*:
  - Il prezzo unitario di un prodotto#super[G] è stato globalmente modificato.
  - Il Supervisore Globale si trova nella pagina inventario#super[G] di un magazzino.

- *Scenario principale*:
  + Il Supervisore Globale modifica il prezzo unitario di un prodotto#super[G].
  + Il Supervisore Globale conferma il dato inserito.
  + Il Supervisore Globale torna alla pagina di inventario#super[G] del magazzino.

- *Scenario alternativo*:
  2. Il Supervisore Globale annulla l’aggiornamento del dato.
  + Il sistema mantiene il dato precedente e scarta le modifiche.

- *Trigger*:
  - Il Supervisore Globale preme il pulsante Modifica Prodotto.



#pagebreak()
= Requisiti
Verranno ora elencati i requisiti#super[G] del sistema, che sono stati suddivisi in quattro categorie principali: Requisiti#super[G] Funzionali, Requisiti#super[G] di Qualità, Requisiti#super[G] di Vincolo, Requisiti#super[G] Prestazionali.

== Classificazione dei requisiti
- *Requisiti#super[G] Funzionali:* descrivono le funzionalità specifiche che il sistema deve offrire. Definiscono i comportamenti attesi in risposta a determinati input o situazioni, specificando cosa il sistema deve fare per soddisfare i bisogni degli utenti e degli stakeholder.

- *Requisiti#super[G] di Qualità:* detti anche non funzionali, definiscono le caratteristiche generali del sistema che ne influenzano l’efficacia, l’efficienza e l’affidabilità. Rientrano in questa categoria aspetti come la sicurezza, l’usabilità, la manutenibilità, la scalabilità#super[G] e l’affidabilità complessiva del sistema.

- *Requisiti#super[G] di Vincolo:* specificano le limitazioni imposte da fattori esterni o immutabili, che il sistema o il processo di sviluppo devono rispettare. Tali vincoli possono derivare da normative, tecnologie obbligatorie, standard industriali, vincoli temporali o economici.

- *Requisiti#super[G] di Prestazionali:* definiscono le aspettative in termini di prestazioni del sistema, come tempi di risposta, capacità di carico, throughput e uso delle risorse. Questi requisiti#super[G] sono fondamentali per garantire un’esperienza utente adeguata anche sotto carico elevato.

== Fonti dei requisiti
Le fonti dei requisiti#super[G] rappresentano i documenti e le informazioni da cui sono stati estratti i requisiti#super[G] stessi. Tra le principali fonti si annoverano il capitolato#super[G] d'appalto, le riunioni con il committente#super[G], l’analisi dello stato dell’arte e l’analisi dei casi d’uso.

Ogni requisito#super[G] riportato sarà accompagnato dall’indicazione esplicita della propria fonte di provenienza, al fine di garantirne la tracciabilità e la verificabilità#super[G].

== Struttura della codifica dei requisiti
I requisiti#super[G] sono stati codificati al fine di facilitarne la lettura, la gestione e la tracciabilità.
Ogni codice è composto da un prefisso che indica la tipologia del requisito#super[G], seguito da un numero progressivo univoco.

I requisiti#super[G] funzionali sono preceduti dal prefisso "RF", i Requisiti#super[G] di Qualità dal prefisso "RQ", i Requistiti#super[G] di Vincolo dal prefisso "RV" e i Requisiti#super[G] Prestazionali dal prefisso "RP", dove:
- *R* sta per "#strong[R]equisito";
- *F* sta per "#strong[F]unzionale";
- *Q* sta per "#strong[Q]ualità";
- *V* sta per "#strong[V]incolo";
- *P* sta per "#strong[P]restazionale";

Per facilitare la lettura, la tracciabilità e la classificazione dei requisiti#super[G], è stato adottato un sistema di codifica sturtturato. La codifica prevede un prefisso che identifica la tipologia e l'importanza del requisito#super[G], seguito da un numero progressivo. In caso di scomposizione, si aggiunge una notazione per indicare i requisiti derivati.

=== Tipologia e Importanza
I requisiti#super[G] sono stati distinti anche in base alla loro importanza o natura, secondo le seguenti convenzioni:
- *Standard*: requisiti#super[G] strettamente necessari al corretto funzionamento del sistema.
  - _Esempio:_ RF01 → Requisito Funzionale 01.
- *Desiderabili (D)*: requisiti#super[G] non obbligatori, ma in grado di apportare un valore aggiunto al sistema.
  - _Esempio:_ RFD04 → Requisito Funzionale Desiderabile 02.
- *Opzionali (O)*: requisiti#super[G] implementabili solo in presenza di tempo o risorse sufficienti.
  - _Esempio:_ RFO03 → Requisito Funzionale Opzionale 02.

=== Scomposizione dei Requisiti Generali
Poichè molti requistiti derivati dal capitolato#super[G] risultano generici, è stato necessario *scomporli* in requisiti#super[G] più specifici, che chiariscano chi deve fare cosa e in quale modalità.
Per indicare questa relazione di derivazione, si utilizza la notazione *"/nr"*, dove _nr_ rappresenta un numero progressivo riferito al requisito#super[G] secondario.

_Esempio:_
  - RF04 → Requisito principale.
  - RF04/01, RF04/02 → Requisiti#super[G] secondari specifici derivati dal requisito RF04.

=== Sintesi della struttura del codice
\
#align(center)[
  *[Prefisso][Indicatore opzionale][Numero progressivo][/nr]*
]\
- *Prefisso:* RF (Funzionale), RQ (Qualità), RV (Vincolo), RP (Prestazionale).
- *Indicatore opzionale:* D (Desiderabile), O (Opzionale).
- *Numero progressivo:* numero univoco del requisito#super[G] all'interno della categoria.
- *\/nr:* numero del requisito#super[G] secondario, se presente.

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
    [*Codice*], [*Descrizione*], [*Riferimenti*]),

    [*RF01*], [*Registrazione del Supervisore Globale.*], [],
    [*RF01/01*], [Il Supervisore Globale deve registrarsi al primo avvio del sistema inserendo indirizzo email, numero di cellulare e una password.], [#link(label("uc-1"), underline("[UC 1]"))],
    [*RF01/02*], [Il Supervisore Globale visualizza, in fase di registrazione, un messaggio di errore se l'email inserita è sintatticamente errata.], [#link(label("uc-1.1"), underline("[UC 1.1]"))],
    [*RF01/03*], [Il Supervisore Globale visualizza, in fase di registrazione, un messaggio di errore se il numero di cellulare inserito è sintatticamente errato.], [#link(label("uc-1.2"), underline("[UC 1.2]"))],
    [*RF01/04*], [Il Supervisore Globale visualizza, in fase di registrazione, un messaggio di errore se la password inserita non rispetta la sintassi.], [#link(label("uc-1.3"), underline("[UC 1.3]"))],
    [*RF01/05*], [Il Supervisore Globale visualizza, in fase di registrazione, un messaggio di errore se la password e la conferma password non corrispondono.], [#link(label("uc-1.4"), underline("[UC 1.4]"))],

    [*RF02*], [*Autenticazione#super[G] dell'utente.*], [],
    [*RF02/01*], [L'utente deve poter accedere al sistema mediante credenziali (email e password).], [#link(label("uc-2"), underline("[UC 2]"))],
    [*RF02/02*], [L'utente deve poter effettuare il logout dal sistema.], [#link(label("uc-4"), underline("[UC 4]"))],
    [*RF02/03*], [L'utente visualizza un messaggio di errore in caso di autenticazione#super[G] fallita.], [#link(label("uc-3"), underline("[UC 3]"))],   

    [*RF03*], [*Registrazione di nuovi Supervisori Locali.*], [],
    [*RF03/01*], [Il Supervisore Globale può registrare a sistema nuovi Supervisori Locali ciascuno con email, numero di cellulare e una password.], [#link(label("uc-5"), underline("[UC 5]"))],
    [*RF03/02*], [Il Supervisore Globale deve assegnare il/i magazzino/i a cui il Supervisore Locale ha accesso in fase di registrazione.], [#link(label("uc-5"), underline("[UC 5]"))],
    [*RF03/03*], [Il Supervisore Globale visualizza, in fase di registrazione del nuovo supervisore locale, un messaggio di errore se l'email inserita è sintatticamente errata.], [#link(label("uc-5.1"), underline("[UC 5.1]"))],
    [*RF03/04*], [Il Supervisore Globale visualizza, in fase di registrazione del nuovo supervisore locale, un messaggio di errore se la password inserita non rispetta la sintassi.], [#link(label("uc-5.2"), underline("[UC 5.2]"))],
    [*RF03/05*], [Il Supervisore Globale visualizza, in fase di registrazione del nuovo supervisore locale, un messaggio di errore se il numero di cellulare inserito è sintatticamente errato.], [#link(label("uc-5.3"), underline("[UC 5.3]"))],

    [*RF04*], [*Gestione manuale dei magazzini.*], [],
    [*RF04/01*], [Il Supervisore Globale deve poter aggiungere un nuovo magazzino a sistema inserendo il suo indirizzo fisico.], [#link(label("uc-6"), underline("[UC 6]"))],
    [*RF04/02*], [Il Supervisore Globale deve poter rimuovere un magazzino dal sistema.], [#link(label("uc-7"), underline("[UC 7]"))],
    [*RF04/03*], [Il Supervisore Globale deve poter modificare le informazioni di un magazzino, quali indirizzo del magazzino e/o Supervisore Locale associato.], [#link(label("uc-8"), underline("[UC 8]"))],
    [*RF04/04*], [Ciascun magazzino deve essere identificato univocamente.], [#link(label("uc-6"), underline("[UC 6]"))],

    [*RF05*], [*Gestione manuale delle merci.*], [],
    [*RF05/01*], [I Supervisori possono inserire un nuovo tipo di merce nell'inventario#super[G] di un magazzino, ciascuna con codice univoco e nome prodotto#super[G].], [#link(label("uc-9"), underline("[UC 9]"))],
    [*RF05/02*], [I Supervisori visualizzano un messaggio di errore se il codice EAN non rispetta la sintassi prevista.], [#link(label("uc-9.1"), underline("[UC 9.1]"))],
    [*RF05/03*], [I Supervisori possono definire il prezzo unitario all'inserimento di un nuovo tipo di merce nell'inventario#super[G] di un magazzino.], [#link(label("uc-9"), underline("[UC 9]"))],
    [*RF05/04*], [I Supervisori visualizzano un messaggio di errore se il prezzo unitario del prodotto#super[G] è sintatticamente errato.], [#link(label("uc-9.2"), underline("[UC 9.2]"))],
    [*RF05/05*], [I Supervisori possono definire la quantità all'inserimento di un nuovo tipo di merce nell'inventario#super[G] di un magazzino.], [#link(label("uc-9"), underline("[UC 9]"))],
    [*RF05/06*], [I Supervisori visualizzano un messaggio di errore se la quantità del prodotto#super[G] è sintatticamente errata.], [#link(label("uc-9.3"), underline("[UC 9.3]"))],
    [*RF05/07*], [Il Supervisore Globale può rimuovere un tipo di merce dall'inventario#super[G].], [#link(label("uc-10"), underline("[UC 10]"))],
    [*RF05/08*], [I Supervisori possono modificare la quantità di merce nell'inventario#super[G] dei magazzini.], [#link(label("uc-11"), underline("[UC 11]"))],
    [*RF05/09*], [I Supervisori visualizzano un messaggio di errore se la quantità di merce modificata del prodotto#super[G] è sintatticamente errata.], [#link(label("uc-11.1"), underline("[UC 11]"))], 
    [*RF05/10*], [Il Supervisore Globale può modificare il prezzo unitario di un prodotto#super[G].], [#link(label("uc-26"), underline("[UC 26]"))],

    [*RF06*], [*Gestione manuale degli ordini#super[G].*], [],
    [*RF06/01*], [I Supervisori possono inserire ordini#super[G] di trasferimento#super[G] interno tra magazzini selezionando il magazzino di partenza e inserendo uno o più prodotti#super[G] nell'ordine#super[G].], [#link(label("uc-13"), underline("[UC 13]"))],
    [*RF06/02*], [I Supervisori possono inserire ordini#super[G] di vendita verso l'esterno inserendo l'indirizzo del destinatario e inserendo uno o più prodotto#super[G] nell'ordine#super[G].], [#link(label("uc-14"), underline("[UC 14]"))],
    [*RF06/03*], [I Supervisori visualizzano un messaggio di errore se la quantità di prodotto#super[G] in un ordine#super[G] non rispetta la sintassi prevista.], [#link(label("uc-12.1"), underline("[UC 12.1]"))],
    [*RF06/04*], [I Supervisori possono annullare ordini#super[G] "in attesa" e "in elaborazione".], [#link(label("uc-15"), underline("[UC 15]"))],

    [*RF07*], [*Auditing dei dati dei magazzini.*], [], 
    [*RF07/01*], [Il Supervisore Globale può visualizzare l'inventario#super[G] globale.], [#link(label("uc-16"), underline("[UC 16]"))],
    [*RF07/02*], [Il Supervisore Globale può visualizzare l'inventario#super[G] di ciascun magazzino.], [#link(label("uc-17"), underline("[UC 17]")) \ #link(label("uc-18"), underline("[UC 18]"))],
    [*RF07/03*], [Il Supervisore Globale può visualizzare un report degli ordini#super[G] globali.], [#link(label("uc-19"), underline("[UC 19]"))],
    [*RF07/04*], [Il Supervisore Globale può visualizzare un report degli ordini#super[G] di ciascun magazzino.], [#link(label("uc-20"), underline("[UC 20]")) \ #link(label("uc-21"), underline("[UC 21]"))],
    [*RF07/05*], [I Supervisori Locali possono visualizzare l'inventario#super[G] del/dei magazzino/i a loro assegnato/i.], [#link(label("uc-17"), underline("[UC 17]")) \ #link(label("uc-18"), underline("[UC 18]"))],
    [*RF07/06*], [I Supervisori Locali possono visualizzare un report degli ordini#super[G] del/dei magazzino/i a loro assegnato/i.], [#link(label("uc-20"), underline("[UC 20]")) \ #link(label("uc-21"), underline("[UC 21]"))],

    [*RF08*], [I Supervisori possono visualizzare lo stato di tutti i magazzini.], [#link(label("uc-22"), underline("[UC 22]"))],

    [*RF09*], [*Gestione delle richieste.*], [], 
    [*RF09/01*], [I Supervisori possono visualizzare le notifiche informative prodotte dal sistema.], [#link(label("uc-23"), underline("[UC 23]"))],
    [*RF09/02*], [Il Supervisore Globale può accettare le richieste decisionali prodotte dal sistema.], [#link(label("uc-24"), underline("[UC 24]"))],
    [*RF09/03*], [Il Supervisore Globale può rifiutare le richieste decisionali prodotte dal sistema.], [#link(label("uc-23"), underline("[UC 23]"))],

    [*RF10*], [*Gestione delle soglie critiche.*], [], 
    [*RF10/01*], [I Supervisori possono definire i valori di soglia minima all'inserimento di nuovo tipo di merce nell'inventario#super[G] di un magazzino.], [#link(label("uc-9"), underline("[UC 9]"))],
    [*RF10/02*], [I Supervisori possono definire i valori di soglia massima all'inserimento di nuovo tipo di merce nell'inventario#super[G] di un magazzino.], [#link(label("uc-9"), underline("[UC 9]"))],
    [*RF10/03*], [I Supervisori visualizzano un messaggio di errore se i valori di soglia minima e/o massima inseriti sono sintatticamente errati.], [#link(label("uc-9.4"), underline("[UC 9.4]"))],
    [*RF10/04*], [Il Supervisore Globale può modificare i valori di soglia minima e massima di ciascun tipo di merce per ciascun magazzino.], [#link(label("uc-11"), underline("[UC 11]"))],
    [*RF10/05*], [Il Supervisore Globale visualizza un messaggio di errore se i valori di soglia minima e/o massima modificati sono sintatticamente errati.], [#link(label("uc-11.2"), underline("[UC 11.2]"))],
    [*RF10/06*], [I Supervisori Locali possono modificare i valori di soglia minima e massima di ciascun tipo di merce nel/nei magazzino/i a loro assegnato/i.], [#link(label("uc-11"), underline("[UC 11]"))],
    [*RF10/07*], [I Supervisori Locali visualizzano un messaggio di errore se i valori di soglia minima e/o massima modificati sono sintatticamente errati.], [#link(label("uc-11.2"), underline("[UC 11.2]"))],

    [*RF11*], [*Rilevamento di carenza di scorte#super[G] di un magazzino.*], [],
    [*RF11/01*], [Ciascun magazzino deve identificare quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
    [*RF11/02*], [Ciascun magazzino deve identificare quando le scorte#super[G] salgono sopra una certa soglia.], [capitolato#super[G]],

    [*RF12*], [*Gestione degli ordini#super[G].*], [],
    [*RF12/01*], [Ciascun magazzino deve verificare#super[G] la disponibilità delle scorte#super[G] per poter soddisfare un ordine#super[G] ricevuto.], [capitolato#super[G]],
    [*RF12/02*], [Ciascun magazzino deve identificare l'impossibilità di soddisfare un ordine#super[G].], [capitolato#super[G]],
    [*RF12/03*], [Un magazzino con scorte#super[G] insufficienti per gestire un ordine#super[G], deve richidere un riassortimento#super[G] al sistema.], [decisione\ interna],
    [*RF12/04*], [Ciascun magazzino deve tracciare lo stato degli ordini#super[G].], [capitolato#super[G]],
    [*RF12/05*], [I magazzini possono inviare merce verso un altro magazzino tramite un ordine#super[G].],[capitolato#super[G]],
    [*RF12/06*], [I magazzini possono ricevere approvvigionamenti#super[G] dall'esterno tramite ordine#super[G].],[capitolato#super[G]],
    [*RF12/07*], [I magazzini possono spedire merci verso l'esterno tramite ordine#super[G].],[capitolato#super[G]],
    [*RF12/08*], [Il magazzino di destinazione deve notificare l'arrivo della merce al magazzino di origine.], [decisione\ interna],
    [*RF12/09*], [Un ordine#super[G] deve trovarsi in uno dei seguenti stati: "in attesa", "in elaborazione", "in transito", "annullato", "consegnato".], [decisione\ interna],

    [*RF13*], [*Riassortimento#super[G] delle scorte#super[G] tra magazzini.*], [],
    [*RF13/01*], [Il sistema deve programmare trasferimenti interni al raggiungimento di una soglia critica di un prodotto#super[G] in un magazzino al fine di bilanciare le scorte#super[G].], [capitolato#super[G]],

    [*RF14*], [*Individuazione dello stato dei magazzini.*], [],
    [*RF14/01*], [Ciascun magazzino può trovarsi in uno dei seguenti stati: "online", "offline".],[capitolato#super[G]],
    [*RF14/02*], [Il sistema deve identificare eventuali cambi di stato dei magazzini.],[capitolato#super[G]],
    [*RF14/03*], [Il sistema deve identificare eventuali disconnessioni di uno o più magazzini segnandoli come "offline".], [capitolato#super[G]],

    [*RF15*], [*Gestione dei disservizi.*], [],
    [*RF15/01*], [Un magazzino offline deve annullare gli ordini#super[G] che non può soddisfare dopo un periodo di tempo predefinito.],[decisione\ interna],
    [*RF15/02*], [Il Supervisore Globale può definire il periodo di tempo dopo cui l'ordine#super[G] di un magazzino offline viene automaticamente anullato.],[#link(label("uc-25"), underline("[UC 25]"))],

    [*RF16*], [*Gestione magazzino che cambia stato da offline a online.*], [],
    [*RF16/01*], [Il sistema deve riconoscere quando un magazzino torna online.], [],

    [*RF17*], [*Annullamento di ordini#super[G] in transito.*], [concordata\ col proponente],
    [*RF17/01*], [Un ordine#super[G] in stato "in transito" deve cambiare lo stato in "annullato" dopo una soglia temporale predefinita.],[concordata\ col proponente],
    [*RF17/02*], [Il Supervisore Globale può definire la soglia temporale dopo cui un ordine#super[G] "in transito" cambia automaticamente stato in "annullato".],[#link(label("uc-25"), underline("[UC 25]"))],

    //Requisiti Funzionali desiderabili
    [*RFD01*], [Il Supervisore Globale può definire il costo massimo per i trasferimenti eseguibili mediante riassortimento#super[G] automatico.],[concordata\ col proponente],
    [*RFD02*], [Il Supervisore Globale può definire la distanza massima tra magazzini per il riassortimento#super[G] automatico.],[concordata\ col proponente],

    [*RFD03*], [*Suggerimento su azioni di riassortimento#super[G] e trasferimento#super[G] tra magazzini.*], [],
    [*RFD03/01*], [Il sistema invia una richiesta decisionale al Supervisore Globale qualora un riassortimento#super[G] superi i costi o le distanze massime.], [concordata\ col proponente],

    [*RFD04*], [*Interfaccia grafica.*], [],
    [*RFD04/01*], [Deve essere possibile effettuare la registrazione del Supervisore Globale mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/02*], [Deve essere possibile effettuare l'autenticazione#super[G] dell'utente mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/03*], [Deve essere possibile effettuare la registrazione di nuovi Supervisori Locali mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/04*], [Deve essere possibile effettuare la gestione manuale delle merci mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/05*], [Deve essere possibile effettuare la gestione manuale degli ordini#super[G] mediante Interfaccia Grafica.], [capitolato#super[G]],
    [*RFD04/06*], [Deve essere possibile effettuare l'auditing dei dati dei magazzini mediante Interfaccia Grafica.], [capitolato#super[G]], 
    [*RFD04/07*], [Deve essere possibile effettuare la gestione delle richieste mediante Interfaccia Grafica.], [capitolato#super[G]], 
    [*RFD04/08*], [Deve essere possibile effettuare la gestione delle soglie critiche mediante Interfaccia Grafica.], [capitolato#super[G]],

    [*RFD05*], [*Produzione di notifiche.*], [],
    [*RFD05/01*], [Il Sistema deve notificare i Supervisori al superamento dei livelli minimi e massimi di scorte#super[G].], [capitolato#super[G]],
    [*RFD05/02*], [Il Sistema deve notificare i Supervisori dell'esecuzione del riassortimento#super[G] automatico.], [capitolato#super[G]],
    [*RFD05/03*], [Ciascun magazzino deve notificare i Supervisori dei cambi di stato degli ordini#super[G].], [capitolato#super[G]],
    [*RFD05/04*], [Ciascun magazzino deve notificare i Supervisori dell'impossibilità di soddisfare un ordine#super[G].], [capitolato#super[G]],
    [*RFD05/05*], [Ciascun magazzino deve notificare i Supervisori quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
    [*RFD05/06*], [Ciascun magazzino deve notificare i Supervisori quando le scorte#super[G] salgono sopra una certa soglia.], [capitolato#super[G]],
    [*RFD05/07*], [Il sistema deve notificare il Supervisore Globale di eventuali cambi di stato dei magazzini.],[capitolato#super[G]],
    [*RFD05/08*], [L'invio di notifiche deve poter avvenire tramite email.], [capitolato#super[G]],
    [*RFD05/09*], [L'invio di notifiche deve poter avvenire tramite SMS.], [capitolato#super[G]],

    [*RFD06*], [*Produzione di richieste decisionali.*], [],  
    [*RFD06/01*], [Il Sistema deve inviare al Supervisore Globale le richieste decisionali prodotte dal riassortimento#super[G] predittivo.], [capitolato#super[G]],

    [*RFD07*], [*Riassortimento predittivo.*], [],
    [*RFD07/01*], [Il sistema deve avere uno storico dei livelli di merce.], [decisione\ interna],
    [*RFD07/02*], [Il sistema deve poter analizzare i dati storici degli ordini#super[G].], [capitolato#super[G]],
    [*RFD07/03*], [Il sistema deve poter analizzare i dati storici di inventario#super[G] dei magazzini.], [capitolato#super[G]],
    [*RFD07/04*], [Il sistema deve implementare un modello di previsione della domanda dei prodotti#super[G].], [capitolato#super[G]],
    [*RFD07/05*], [Il sistema deve poter pianifiare i riassortimenti#super[G] sulla base del modello di previsione.], [capitolato#super[G]],
    [*RFD07/06*], [Il sistema deve inviare una richiesta decisionale al Supervisore Globale di approvvigionamento#super[G] sulla base del modello di previsione.], [capitolato#super[G]],
    [*RFD07/07*], [Il sistema deve inviare una richiesta decisionale al Supervisore Globale di riassortimento#super[G] sulla base del modello di previsione.], [capitolato#super[G]],  

    //Requisiti Funzionali opzionali
    [*RFO01*], [I supervisori devono poter eseguire un ripristino#super[G] manuale dei dati da un backup#super[G].], [capitolato#super[G]],

    [*RFO02*], [*Gestione dei magazzini non operativi.*],[],
    [*RFO02/01*], [Ciascun magazzino può trovarsi nello stato "non operativo".],[decisione\ interna],
    [*RFO02/02*], [Il sistema può annullare ordini#super[G] di un magazzino "non operativo".], [decisione\ interna],
    [*RFO02/03*], [Il sistema può assegnare ordini#super[G] di un magazzino "non operativo" ad altri magazzini.], [decisione\ interna],

  ),
  caption: [Requisiti Funzionali],
)

#pagebreak()

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
    [*RV01*], [L'architettura#super[G] del sistema deve usare microservizi#super[G].], [capitolato#super[G]],
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

    [*RQ01*], [*Autonomia dei magazzini.*], [],
    [*RQ01/01*], [I magazzini devono poter operare autonomamente.], [capitolato#super[G]],
    [*RQ01/02*], [I magazzini devono poter elaborare localmente le richieste.], [capitolato#super[G]],
    [*RQ01/03*], [Ciascun magazzino deve gestire gli ordini#super[G] concorrenti per uno stesso prodotto secondo una politica predefinita.], [capitolato#super[G]],

    [*RQ02*], [*Robustezza dei magazzini.*], [],
    [*RQ02/01*], [I dati di inventario#super[G] e degli ordini#super[G] devono essere coerenti, consistenti e persistenti in tutto il sistema.], [capitolato#super[G]],
    [*RQ02/02*], [I dati di inventario#super[G] devono essere resilienti a modifiche concorrenti.], [capitolato#super[G]],

    [*RQ03*], [*Sicurezza del sistema.*], [],
    [*RQ03/01*], [Deve essere implementata la cifratura#super[G] end-to-end negli scambi dei dati tra magazzini e con il sistema.], [capitolato#super[G]],
    [*RQ03/02*], [Il sistema deve implementare un log dei tentativi di accesso.], [capitolato#super[G]],
    [*RQ03/03*], [Il sistema deve identificare tentativi di accesso non autorizzati.], [capitolato#super[G]],
    [*RQ03/04*], [Il sistema deve notificare il Supervisore Globale di tentativi di accesso non autorizzati.], [capitolato#super[G]],

    [*RQ04*], [*Unit test e code coverage.*], [],
    [*RQ04/01*], [La correttezza delle funzioni sviluppate deve essere garantita dai test unitari.], [capitolato#super[G]],
    [*RQ04/02*], [La copertura del codice deve essere superiore al 70% (minimo) e 80% (auspicabile).], [concordata\ col proponente],  
    [*RQ04/03*], [Il test devono poter essere eseguiti in maniera automatizzata.], [capitolato#super[G]],
    [*RQ04/04*], [Devono essere eseguiti test di non regressione.], [capitolato#super[G]],

    [*RQ05*], [*Test book dettagliato.*], [],
    [*RQ05/01*], [Tutti i test devono essere documentati in un test book.], [capitolato#super[G]],
    [*RQ05/02*], [Il test book deve includere una descrizione dei casi di test.], [capitolato#super[G]],  
    [*RQ05/03*], [Il test book deve includere le condizioni iniziali dei test.], [capitolato#super[G]],
    [*RQ05/04*], [Il test book deve includere i passaggi eseguiti dai test.], [capitolato#super[G]],    
    [*RQ05/05*], [Il test book deve includere i risultati attesi e ottenuti dai test.], [capitolato#super[G]],
    [*RQ05/06*], [Il test book deve includere criteri di validazione#super[G] dei test.], [capitolato#super[G]],

    [*RQ06*], [Il Sistema deve essere scalabile orizzontalmente.], [capitolato#super[G]],

    [*RQ07*], [La gestione dei magazzini deve essere distribuita.], [capitolato#super[G]],


    //Requisiti di Qualità desiderabili

    [*RQD01*], [Il sistema deve automatizzare il processo di riassortimento#super[G] se rispetta il costo e la distanza massima.], [capitolato#super[G]],

    [*RQD02*], [II magazzino detiene la fonte affidabile dei dati di inventario#super[G] e degli ordini#super[G].], [capitolato#super[G]],

    //Requisiti di Qualità opzionali

    [*RQO01*], [*Sicurezza del sistema.*], [],
    [*RQO01/01*], [Il sistema deve prevedere la possibilità di autenticazione#super[G] a due fattori (2FA#super[G]) o più (MFA#super[G]) per gli utenti.], [capitolato#super[G]],
    [*RQO01/02*], [Il sistema deve verificare#super[G] l'integrità#super[G] dei dati tramite firme digitali#super[G] o hashing#super[G].], [capitolato#super[G]],
    [*RQO01/03*], [Le richieste verso i microservizi#super[G] devono essere autenticate.], [capitolato#super[G]],
    [*RQO01/04*], [Gli scambi di dati tra microservizi#super[G] devono essere cifrati.], [capitolato#super[G]],

    [*RQO02*], [*Backup#super[G] e ripristino#super[G] dei dati.*], [],
    [*RQO02/01*], [I dati dei magazzini devono essere sottoposti a backup#super[G].], [capitolato#super[G]],
    [*RQO02/02*], [I dati aggregati su cloud devono essere sottoposti a backup#super[G].], [capitolato#super[G]],
    [*RQO02/03*], [I magazzini devono mantenere una copia locale dei propri dati.], [capitolato#super[G]],
    [*RQO02/04*], [Il sistema deve mantenere l'integrità#super[G] e la consistenza dei dati tra i magazzini.], [capitolato#super[G]],
    ),
    caption: [Requisiti di Qualità],
  )

#pagebreak()
== Tracciamento dei casi d'uso

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)

#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#figure(
  table(
  columns: (1fr, 1fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Requisito*], [*Casi d'Uso*],
  ),
    [RF01/01],[#link(label("uc-1"), underline("[UC 1]"))],
    [RF01/02],[#link(label("uc-1.1"), underline("[UC 1.1]"))],
    [RF01/03],[#link(label("uc-1.2"), underline("[UC 1.2]"))],
    [RF01/04],[#link(label("uc-1.3"), underline("[UC 1.3]"))],
    [RF01/05],[#link(label("uc-1.4"), underline("[UC 1.4]"))],

    [RF02/01],[#link(label("uc-2"), underline("[UC 2]"))],
    [RF02/02],[#link(label("uc-4"), underline("[UC 4]"))],
    [RF02/03],[#link(label("uc-3"), underline("[UC 3]"))],

    [RF03/01],[#link(label("uc-5"), underline("[UC 5]"))],
    [RF03/02],[#link(label("uc-5"), underline("[UC 5]"))],
    [RF03/03],[#link(label("uc-5.1"), underline("[UC 5.1]"))],
    [RF03/04],[#link(label("uc-5.2"), underline("[UC 5.2]"))],
    [RF03/05],[#link(label("uc-5.3"), underline("[UC 5.3]"))],

    [RF04/01],[#link(label("uc-6"), underline("[UC 6]"))],
    [RF04/02],[#link(label("uc-7"), underline("[UC 7]"))],
    [RF04/03],[#link(label("uc-8"), underline("[UC 8]"))],

    [RF05/01],[#link(label("uc-9"), underline("[UC 9]"))],
    [RF05/02],[#link(label("uc-9.1"), underline("[UC 9.1]"))],
    [RF05/03],[#link(label("uc-9"), underline("[UC 9]"))],
    [RF05/04],[#link(label("uc-9.2"), underline("[UC 9.2]"))], 
    [RF05/05],[#link(label("uc-9"), underline("[UC 9]"))],
    [RF05/06],[#link(label("uc-9.3"), underline("[UC 9.3]"))],
    [RF05/07],[#link(label("uc-10"), underline("[UC 10]"))],
    [RF05/08],[#link(label("uc-11"), underline("[UC 11]"))],
    [RF05/09],[#link(label("uc-11.1"), underline("[UC 11.1]"))],
    [RF05/10],[#link(label("uc-26"), underline("[UC 26]"))],

    [RF06/01],[#link(label("uc-13"), underline("[UC 13]"))],
    [RF06/02],[#link(label("uc-14"), underline("[UC 14]"))],
    [RF06/03],[#link(label("uc-12.1"), underline("[UC 12.1]"))],
    [RF06/04],[#link(label("uc-15"), underline("[UC 15]"))],

    [RF07/01],[#link(label("uc-16"), underline("[UC 16]"))],
    [RF07/02],[#link(label("uc-17"), underline("[UC 17]")), #link(label("uc-18"), underline("[UC 18]"))],
    [RF07/03],[#link(label("uc-19"), underline("[UC 19]"))], 
    [RF07/04],[#link(label("uc-20"), underline("[UC 20]")), #link(label("uc-21"), underline("[UC 21]"))],
    [RF07/05],[#link(label("uc-17"), underline("[UC 17]")), #link(label("uc-18"), underline("[UC 18]"))],
    [RF07/06],[#link(label("uc-20"), underline("[UC 20]")), #link(label("uc-21"), underline("[UC 21]"))],

    [RF08],[#link(label("uc-22"), underline("[UC 22]"))],

    [RF09/01],[#link(label("uc-23"), underline("[UC 23]"))],
    [RF09/02],[#link(label("uc-24"), underline("[UC 24]"))],
    [RF09/03],[#link(label("uc-23"), underline("[UC 23]"))],

    [RF10/01],[#link(label("uc-9"), underline("[UC 9]"))],
    [RF10/02],[#link(label("uc-9"), underline("[UC 9]"))],
    [RF10/03],[#link(label("uc-9.4"), underline("[UC 9.4]"))], 
    [RF10/04],[#link(label("uc-11"), underline("[UC 11]"))],
    [RF10/05],[#link(label("uc-11.2"), underline("[UC 11.2]"))],
    [RF10/06],[#link(label("uc-11"), underline("[UC 11]"))], 
    [RF10/07],[#link(label("uc-11.2"), underline("[UC 11.2]"))],
  
    [RF15/02],[#link(label("uc-25"), underline("[UC 25]"))],

    [RF17/02],[#link(label("uc-25"), underline("[UC 25]"))],
  ),
  caption: [Tracciamento dei casi d'uso],
)

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
    [*Funzionali*],     [84],    [33],    [5],
    [*Qualità*],        [26],    [2],     [10],
    [*Prestazionali*],  [0],     [0],     [0],
    [*Vincolo*],        [2],     [0],     [0],
    [*Totale*],         [*112*],  [*35*],  [*15*]
  ),
  caption: [Riepilogo dei casi d'uso],
)