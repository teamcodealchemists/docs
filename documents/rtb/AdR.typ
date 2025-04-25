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
#let versione = "0.0.3"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.0.3],
  [17/04/2025],
  [N. Moretto],
  [S. Marana],
  [Aggiunta descrizione glossario, descrizione requisiti e aggiunta di tutti i requisiti],
  
  [0.0.2],
  [12/04/2025],
  [Mattia D.P],
  [N. Bolzon],
  [Aggiunto primo contenuto],
  
  [0.0.1],
  [28/03/2025],
  [S. Speranza],
  [N. Moretto],
  [Creazione template e struttura del documento]
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

/* SEZIONE 1 - Introduzione */
= Introduzione
== Scopo del documento
#v(0.5cm)
Il presente documento viene redatto per _l'analisi dei requisiti_ #super[G].

Il presente documento di Analisi dei Requisiti ha lo scopo di fornire una panoramica quanto più possibile dettagliata del prodotto software da sviluppare. Esso rappresenta un riferimento e una linea guida fondamentale per la progettazione, l'implementazione e il collaudo del sistema, garantendo che il prodotto finale soddisfi pienamente le esigenze e le aspettative del committente.

All'interno del documento sono descritte le richieste del committente, le modalità previste per la loro implementazione dal punto di vista architetturale e tecnologico, nonché i riferimenti normativi e informativi utili. In particolare, vengono forniti una descrizione approfondita dei Casi d'Uso e una lista completa dei requisiti funzionali e non funzionali del sistema.

Questo documento mira a offrire una visione strutturata e completa del sistema software, delineando i bisogni degli utenti in base alle diverse categorie individuate durante l'analisi del capitolato#super[G] e gli incontri con il committente. Sono inoltre chiaramente identificati gli attori coinvolti nel sistema e descritte le componenti principali del programma.

Per agevolare la comprensione, verranno utilizzati i Diagrammi dei Casi d'Uso per visualizzare le interazioni tra attori e sistema. I requisiti identificati sono classificati come segue:

- *Obbligatori:* irrinunciabili e imprescindibili per il corretto funzionamento del sistema;

- *Desiderabili:* non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile;

- *Opzionali:* relativamente utili oppure contrattabili per un'eventuale implementazione futura.

Il documento è stato redatto dagli Analisti del team di progetto ed è rivolto a tutti gli interessati ed in particolare: 

- Il Committente, che potrà verificare che i requisiti siano stati correttamente interpretati e documentati secondo le proprie specifiche;

- Il Team di Progettisti e Programmatori, che utilizzerà il documento come guida per la realizzazione del sistema;

- Il Team di Verificatori, che lo adotterà come base per la definizione dei casi di test e la verifica del corretto funzionamento del prodotto.

Potrà inoltre essere consultato da altri soggetti coinvolti nel processo di sviluppo, come Amministratori e Responsabili di Progetto, al fine di acquisire una comprensione esauriente delle specifiche del sistema.


/*
Il documento qui redatto serve per fornire una panoramica quanto piu' possibile dettagliata del prodotto preso in considerazione, meglio descritto al punto 1.2. All' interno È possibile trovare in particolare, la descrizione delle richieste, come si È previsto di implementarle, dal punto di vista architetturale e tecnologico, tutti i riferimenti normativi e informativi utili, i casi d'uso del prodotto dettagliati, e una lista dei diversi requisti 
*/



/* NOTA IMPORTANTE: Nelle slide di Tullio, Analisi dei requisiti - T05, alla slide 22 viene mostrato un possibile indice per questo documento, che segue lo standard ISO/IEC/IEEE 29148:2018 */

== Descrizione del prodotto
#v(0.5cm)

Il progetto ha l'obiettivo di sviluppare un sistema intelligente per la gestione distribuita dell'inventario in una rete di magazzini geograficamente separati. In scenari logistici complessi, come quelli che prevedono la cooperazione tra più sedi operative, è fondamentale garantire disponibilità continua delle scorte, ridurre i tempi di inattività e ottimizzare il flusso di materiali.

Il sistema dovrà permettere di rilevare in tempo reale situazioni critiche, come carenze di prodotto in una sede e surplus in un'altra, intervenendo automaticamente o suggerendo azioni correttive di trasferimento o riassortimento. Sarà inoltre in grado di gestire eventi imprevisti, come l'indisponibilità temporanea di un magazzino, garantendo la continuità operativa attraverso un bilanciamento intelligente delle risorse nei magazzini vicini.

Una delle componenti chiave sarà la *visibilità centralizzata e in tempo reale* di tutte le scorte distribuite. Il sistema offrirà funzionalità avanzate per il monitoraggio, la sincronizzazione e l'aggiornamento dell'inventario, supportando decisioni rapide e affidabili.

Sarà adottata *un'architettura scalabile a microservizi*, che garantisca alta disponibilità, interoperabilità tra i nodi della rete, e gestione efficiente del carico, anche in presenza di numerose richieste simultanee. Ogni nodo della rete – cioè ciascun magazzino – potrà operare in modo autonomo, mantenendo però sincronizzazione con un sistema centrale tramite servizi cloud.

Il progetto prevede anche *l'integrazione di modelli predittivi* per il riassortimento, sfruttando dati storici, pattern di consumo e stagionalità per anticipare la domanda e ridurre il rischio di esaurimento scorte. M31 supporterà il progetto fornendo un dataset pubblico e una figura tecnica di riferimento per l'analisi dei dati e lo sviluppo dei modelli.

L'obiettivo finale è realizzare una *piattaforma robusta e flessibile* che migliori la resilienza e l'efficienza dell'intera rete logistica, assicurando precisione, tempestività e scalabilità nelle operazioni di gestione dell'inventario.

=== Architettura

=== Funzionalità

=== Scelte tecnologiche

== Analisi dello stato dell'arte
#v(0.5cm)
Prima di procedere con l'analisi dei requisiti, è stata effettuata un'analisi dello stato dell'arte, al fine di comprendere le tecnologie e le soluzioni già esistenti nel campo della gestione distribuita, dei microservizi e della gestione dei dati.\
Sono stati analizzati diversi articoli, documenti e libri che trattano questi argomenti, al fine di identificare le migliori pratiche e le soluzioni più adatte per il progetto in questione.
Sono stati presi in considerazione anche vari progetti esistesti che utilizzano tecnologie simili, al fine di comprendere le sfide e le opportunità che si presentano in questo campo.\

Dopo un'esaustiva ricerca, sono stati identificati alcuni punti chiave che saranno fondamentali per la progettazione e lo sviluppo di un'ipotesi di architettura del sistema:
- *Microservizi:* come richiesto dal capitolato#super[G], il sistema dovrà essere progettato utilizzando un'architettura a microservizi, che consente di suddividere il sistema in componenti più piccoli e indipendenti, facilitando la scalabilità e la manutenibilità del sistema.\
  Ogni microservizio dovrebbe avere un proprio database, e può scegliere il proprio stack tecnologico, in modo da garantire la massima flessibilità e indipendenza.\
- *Architettura Event-Driven:* l'architettura del sistema dovrebbe essere basata su eventi, in modo da garantire una comunicazione efficiente tra i microservizi e una gestione ottimale delle risorse.\
  In questo modo, ogni microservizio può reagire a eventi specifici e comunicare con gli altri microservizi in modo asincrono, migliorando le prestazioni e la reattività del sistema.\
- *Tipi di comunicazioni:* È necessario determinare se utilizzare una comunicazione sincrona (REST, gRPC) o asincrona (Kafka o NATS) tra i microservizi.\
- *Gestione dei dati:* diversi progetti analizzati adottano sia database SQL che NoSQL, in base alle esigenze specifiche.\
  I database SQL risultano più indicati per dati strutturati e relazionali, mentre i database NoSQL si prestano meglio a dati non strutturati e distribuiti.\
  Per il progetto in questione, potrebbe essere vantaggioso combinare entrambi i tipi di database, selezionandoli in base alle necessità di ciascun microservizio.\
- *Coerenza di dati:* è importante garantire la coerenza dei dati tra i diversi microservizi, soprattutto in un sistema distribuito.\
  Ci sono diverse strategie per garantire la coerenza dei dati, come il pattern Saga, l'Outbox pattern, transazioni distribuite, o il modello coerenza finale
- *Containerizzazione:* l'uso di container (Docker) è diventato uno standard de facto per la distribuzione e l'esecuzione di microservizi.\
  I container consentono di isolare le dipendenze e le configurazioni di ciascun microservizio, semplificando il processo di distribuzione e gestione del sistema.\
  Kubernetes è uno strumento popolare per la gestione dei container e l'orchestrazione dei microservizi, che consente di automatizzare il deployment, la scalabilità e la gestione dei container in un cluster.\
- *Resilienza del sistema:* è fondamentale garantire la resilienza del sistema, in modo da affrontare eventuali guasti o problemi di rete.\
  Ci sono diverse strategie per garantire la resilienza del sistema, come il pattern Circuit Breaker, il retry pattern, e l'uso di meccanismi di failover e bilanciamento del carico.\
- *Logging:* è importante implementare un sistema di logging centralizzato per monitorare le attività e le prestazioni del sistema.\
  Ci sono diversi strumenti e librerie disponibili per implementare il logging centralizzato, come ELK stack (Elasticsearch, Logstash, Kibana), Grafana Loki, o Prometheus.\
- Valutazione della necessità e della complessità di *API Gateway* e *Service Discovery*.\
  L'API Gateway funge da punto di accesso centrale per le richieste degli utenti e può gestire l'autenticazione, la registrazione, il bilanciamento del carico e altre funzionalità.\
  La Service Discovery consente ai microservizi di trovare e comunicare tra loro in modo dinamico, senza la necessità di configurazioni statiche.

== Il Glossario
#v(0.5cm)
In questo documento potrebbero essere presenti parole e terminologie complesse, che potrebbero non essere chiare a tutti, anche in relazione al contesto in cui vengono usate. Per questo motivo, È stato creato un glossario, che contiene le definizioni di alcune parole e termini utilizzati nel documento.

Le parole che possiedono un riferimento al glossario vengono evidenziate come segue: *parola*#super[G].


== Riferimenti
/* Alcuni link utili per la ricerca di informazioni e documentazione sui microservizi e sull'architettura distribuita(altri sono presenti nei vari documenti di analisi dello stato dell'arte) 
https://www.sayonetech.com/blog/inventory-management-system-using-microservices/
Libro: Microservices for the Enterprise - Designing, Developing, and Deploying (Kasun Indrasiri, Prabath Siriwardena)
https://www.researchgate.net/publication/387822994_Implementing_Microservices_for_Real-Time_Inventory_Tracking_in_Global_Supply_Chains
https://microservices.io/patterns/index.html
https://www.researchgate.net/publication/387822806_The_Role_of_Microservices_in_Enhancing_Scalability_and_Flexibility_of_Warehouse_Management_systems
https://docs.aws.amazon.com/it_it/prescriptive-guidance/latest/modernization-data-persistence/database-per-service.html
https://www.multiplayer.app/distributed-systems-architecture/

*/

=== Normativi

=== Informativi

= Casi d'uso del prodotto

== Introduzione

== Lista dei Casi d'uso

=== U.C.1 Primo Caso d'uso

=== U.C.2 Secondo Caso d'uso

= Requisiti
#v(0.5cm)
Verranno ora elencati i requisiti del sistema, che sono stati suddivisi in quattro categorie principali: Requisiti Funzionali, Requisiti di Sicurezza, Requisiti non Funzionali e Requisiti di Vincolo.

== Classificazione dei requisiti
- *Requisiti Funzionali:* sono i requisiti che definiscono le funzionalità e i comportamenti del sistema. Questi requisiti specificano cosa il sistema deve fare e come deve interagire con gli utenti e altri sistemi. I requisiti funzionali sono essenziali per garantire che il sistema soddisfi le esigenze degli utenti e raggiunga gli obiettivi prefissati.

- *Requisiti di Sicurezza:* sono i requisiti che definiscono le misure di sicurezza e protezione dei dati all'interno del sistema. Questi requisiti sono fondamentali per garantire la riservatezza, l'integrità e la disponibilità delle informazioni trattate dal sistema.

- *Requisiti non Funzionali:* sono i requisiti che definiscono le caratteristiche qualitative del sistema, come prestazioni, usabilità, affidabilità e manutenibilità. Questi requisiti non riguardano direttamente le funzionalità del sistema, ma sono comunque cruciali per garantire un'esperienza utente soddisfacente e un funzionamento efficiente del sistema.

== Fonti dei requisiti
Le fonti dei requisiti sono i documenti e le informazioni da cui sono stati estratti i requisiti stessi, come il capitolato#super[G] d'appalto e le riunioni con il committente.\
Inoltre, alcuni requisiti sono stati derivati dall'analisi allo stato dell'arte e dall'analisi dei casi d'uso.

Tutti i requisiti presenteranno la fonte di provenienza.

== Codifica dei requisiti
I requisiti sono stati codificati in modo da facilitarne la lettura e la comprensione. La codifica è composta da un prefisso che indica il tipo di requisito, seguito da un numero progressivo.\

I requisiti funzionali sono preceduti dal prefisso "RF", i requisiti di sicurezza dal prefisso "RS", i requisiti non funzionali dal prefisso "RnF" e i requisiti di vincolo dal prefisso "RV", dove:
- *R* sta per "#strong[R]equisito"
- *F* sta per "#strong[F]unzionale"
- *S* sta per "#strong[S]icurezza"
- *nF* sta per "#strong[n]on #strong[F]unzionale"

//Aggiungere il fatto di avere vincoli desiderabili: riassortimento predittivo, GUI (fonte: riunione con M31)
Alcuni requisiti funzionali sono stati definiti come *"desiderabili"*, in quanto non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile.\
Per indicare che un requisito è desiderabile, è stato deciso di aggiungere la lettera *"D"* (Desiderabile) al prefisso del requisito, per indicare che il requisito è desiderabile.\ *RFD*, ad esempio, sta per "Requisito Funzionale Desiderabile".\

Essendoci presenti anche dei requisiti *opzionali*, è stato deciso di aggiungere la lettera *"O"* (Opzionale) al prefisso del requisito, per indicare che il requisito è opzionale.\ *RFO*, ad esempio, sta per "Requisito Funzionale Opzionale".\

Inoltre, i requisiti forniti dal capitolato#super[G] sono molto generali e non specificano in modo dettagliato le funzionalità richieste.
Per questo motivo, è stato deciso di scomporre i requisiti in requisiti più specifici, cioè chi deve fare cosa, e in che modo.\
Per indicare che un requisito è secondario, è stato deciso di aggiungere la dicitura *"/nr"* al codice del requisito principale, dove *nr* è il numero progressivo del requisito secondario.\

Quindi, la struttura del codice di un requisito è la seguente:
- RF01: Requisito Funzionale principale 01
- RF01/01: Requisito Funzionale secondario 01/01
- RS01: Requisito di Sicurezza principale 01
- RS01/01: Requisito di Sicurezza secondario 01/01
- RnF01: Requisito non Funzionale principale 01
- RnF01/01: Requisito non Funzionale secondario 01/01

//Scomporre i requisiti in requisiti più specifici, cioè chi deve fare cosa, e in che modo.\

== Requisiti Funzionali
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)

#table(
  columns: (0.8fr, 3fr, 1fr),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),

  [*RF01*], [*Rilevamento di carenza di scorte di un magazzino*], [capitolato#super[G]],
  [*RF01/01*], [Il sistema deve monitorare costantemente le scorte#super[G]], [capitolato#super[G]],
  [*RF01/02*], [Il sistema deve identificare quando le scorte scendono sotto una certa soglia], [capitolato#super[G]],
  
  [*RF02*], [*Trasferimento di scorte da un magazzino ad un altro*], [capitolato#super[G]],
  [*RF02/01*], [Il sistema deve consentire l'invio di richieste di trasferimento tra magazzini],[capitolato#super[G]],
  [*RF02/02*], [Il sistema deve validare la disponibilità delle scorte nel magazzino di origine], [capitolato#super[G]],
  [*RF02/03*], [Il sistema deve aggiornare l'inventario#super[G] di entrambi i magazzini coinvolti], [capitolato#super[G]],
  
  [*RF03*], [*Rilevamento delle scorte minime necessarie e mantenimento*], [capitolato#super[G]],
  [*RF03/01*], [Il sistema deve calcolare le scorte minime necessarie per ciascun prodotto#super[G]], [capitolato#super[G]],
  [*RF03/02*], [Il sistema deve monitorare le scorte attuali rispetto alle scorte minime, ottimizzandone la quantità], [capitolato#super[G]],
  [*RF03/03*], [Il sistema deve attivare processi di riassortimento#super[G] quando necessario], [capitolato#super[G]],
  
  [*RF04*], [*Bilanciamento delle scorte, il più possibile, in ogni magazzino*], [capitolato#super[G]],
  [*RF04/01*], [Il sistema deve analizzare la distribuzione delle scorte tra i magazzini], [capitolato#super[G]],
  [*RF04/02*], [Il sistema deve identificare squilibri nelle scorte, valutando la distribuzione attuale], [capitolato#super[G]],
  [*RF04/03*], [Il sistema deve proporre trasferimenti per bilanciare le scorte e migliorare l'efficienza], [capitolato#super[G]],
  [*RF04/04*], [Il sistema deve automatizzare il processo di riassortimento], [capitolato#super[G]],
  [*RF04/05*], [Il sistema deve poter attivare trasferimenti interni se necessario], [capitolato#super[G]],
  [*RF04/06*], [Il sistema deve garantire che le scorte non scendano sotto i livelli di sicurezza], [capitolato#super[G]],

  [*RF05*], [*Riempire magazzini vicini ad uno offline, per sopperire al disservizio*], [capitolato#super[G]],
  [*RF05/01*], [Il sistema deve identificare magazzini offline], [capitolato#super[G]],
  [*RF05/02*], [Il sistema deve determinare i magazzini vicini disponibili], [capitolato#super[G]],
  [*RF05/03*], [Il sistema deve trasferire scorte ai magazzini vicini per sopperire al disservizio], [capitolato#super[G]],
  
  [*RF06*], [*Individuazione di magazzini offline*], [capitolato#super[G]],
  [*RF06/01*], [Il sistema deve monitorare la connettività#super[G] di ciascun magazzino], [capitolato#super[G]],
  [*RF06/02*], [Il sistema deve segnalare tempestivamente eventuali disconnessioni], [capitolato#super[G]],
  
  [*RF07*], [*Gestione magazzino che torna online*], [capitolato#super[G]],
  [*RF07/01*], [Il sistema deve riconoscere quando un magazzino torna online], [capitolato#super[G]],
  [*RF07/02*], [Il sistema deve sincronizzare i dati di inventario con il sistema centrale], [capitolato#super[G]],
  [*RF07/03*], [Il sistema deve risolvere eventuali conflitti di dati], [capitolato#super[G]],
  
  [*RF08*], [*Visibilità centrale in tempo reale di tutte le scorte distribuite (monitoraggio livelli inventario), di ogni magazzino (anche indipendentemente), permettendo il trasferimento di prodotti, il riassortimento, e la riduzione dei livelli medi di scorte mantenendo però livelli di sicurezza in caso di carenze o ritardi*], [capitolato#super[G]],
  [*RF08/01*], [Il sistema deve fornire una dashboard centralizzata per monitorare le scorte], [capitolato#super[G]],
  [*RF08/02*], [Il sistema deve visualizzare i livelli di inventario in ogni magazzino], [capitolato#super[G]],
  [*RF08/03*], [Il sistema deve aggiornare i dati in tempo reale], [capitolato#super[G]],
  
  [*RF09*], [*Permettere il trasferimento di prodotti*], [capitolato#super[G]],
  [*RF09/01*], [Il sistema deve consentire la creazione di ordini di trasferimento], [capitolato#super[G]],
  [*RF09/02*], [Il sistema deve tracciare il trasferimento dei prodotti], [capitolato#super[G]],
  [*RF09/03*], [Il sistema deve aggiornare lo stato del trasferimento in tempo reale], [capitolato#super[G]],
  [*RF09/04*], [Il sistema deve aggiornare automaticamente gli inventari coinvolti], [capitolato#super[G]],

  [*RF10*], [*Sistema distribuito, scalabile, con microservizi*], [capitolato#super[G]],
  [*RF10/01*], [È necessario progettare l'architettura del sistema utilizzando microservizi#super[G]], [capitolato#super[G]],
  [*RF10/02*], [È necessario garantire la scalabilità#super[G] orizzontale del sistema], [capitolato#super[G]],
  [*RF10/03*], [È necessario assicurare l'indipendenza e l'interoperabilità dei microservizi], [capitolato#super[G]],

  [*RF11*], [*Operazioni distribuite, prestazioni elevate anche in alto carico di dati e richieste simultanee*], [capitolato#super[G]],
  [*RF11/01*], [È necessario implementare un bilanciamento del carico tra i servizi#super[G]], [capitolato#super[G]],
  [*RF11/02*], [È necessario monitorare e gestire le risorse per mantenere le prestazioni], [capitolato#super[G]],
  
  [*RF12*], [*Suggerimento/automatizzazione azioni di riassortimento e trasferimento tra magazzini*], [capitolato#super[G]],
  [*RF12/01*], [È necessario fornire raccomandazioni per il riassortimento e i trasferimenti], [capitolato#super[G]],
  [*RF12/02*], [L'utente deve approvare le azioni di riassortimento e trasferimento], [capitolato#super[G]],
  [*RF12/03*], [È necessario automatizzare l'esecuzione di tali azioni quando approvate], [capitolato#super[G]],  

  [*RF13*], [*Aggiornamenti in tempo reale su prelievi, ricezioni (ricevimento merci) e trasferimenti*], [capitolato#super[G]],
  [*RF13/01*], [Il sistema deve registrare ogni operazione di inventario], [capitolato#super[G]],
  [*RF13/02*], [Il sistema deve aggiornare immediatamente i dati nel sistema centrale], [capitolato#super[G]],
  
  [*RF14*], [*Gestione aggiornamenti simultanei dell'inventario da magazzini differenti, anche per i singoli magazzini quando ricevono ordini per uno stesso prodotto*], [capitolato#super[G]],
  [*RF14/01*], [Il sistema deve gestire le modifiche concorrenti (in simultanea) ai dati di inventario], [capitolato#super[G]],
  [*RF14/02*], [Il sistema deve implementare meccanismi di controllo delle versioni], [capitolato#super[G]],
  [*RF14/03*], [Il sistema deve risolvere conflitti di aggiornamento], [capitolato#super[G]],
  
  [*RF15*], [*Gestione di ordini#super[G] simultanei per uno stesso prodotto in singoli magazzini*], [analisi dello stato dell'arte],
  [*RF15/01*], [Il sistema deve coordinare gli ordini ricevuti contemporaneamente], [analisi dello stato dell'arte],
  [*RF15/02*], [Il sistema deve assegnare le scorte disponibili in modo equo], [analisi dello stato dell'arte],
  
  [*RF16*], [*Magazzini autonomi come edge nodes, che fanno elaborazioni autonome per ridurre il carico sulla rete*], [capitolato#super[G]],
  [*RF16/01*], [Il sistema deve consentire ai magazzini di operare autonomamente, permettendo operazioni locali sui dati di inventario], [capitolato#super[G]],
  [*RF16/02*], [Il sistema deve eseguire elaborazioni locali per ridurre il carico sulla rete], [capitolato#super[G]],
  [*RF16/03*], [Il sistema deve sincronizzare periodicamente con il sistema centrale], [capitolato#super[G]],
  
  [*RF17*], [*Magazzini gestiti da servizi distribuiti*], [capitolato#super[G]],
  [*RF17/01*], [È necessario distribuire le funzionalità del sistema su più servizi], [capitolato#super[G]],
  [*RF17/02*], [È necessario garantire la resilienza e la scalabilità del sistema], [capitolato#super[G]],
  
  [*RF18*], [*Operazioni di inventario indipendenti ma sincronizzate centralmente*], [capitolato#super[G]],
  [*RF18/01*], [Il magazzino locale deve operare tramite inserimento, modifica, trasferimento, prelievo merci, e aggiornando il magazzino in primo luogo localmente], [capitolato#super[G]],
  [*RF18/02*], [Le modifiche devono essere sincronizzate con il sistema centrale], [capitolato#super[G]],
  
  [*RF19*], [*Progettazione architetturale ben documentata, presentata con diagrammi a blocchi e derivata da analisi dei requisiti e del contesto distribuito*
  ], [capitolato#super[G]],

  [*RFD01*], [*Gestione della variabilità della domanda e tempi di consegna con modelli predittivi*], [capitolato#super[G]],
  [*RFD01/01*], [Il sistema deve prevedere la domanda futura per ciascun prodotto], [capitolato#super[G]],
  [*RFD01/02*], [Il sistema deve pianificare riassortimenti in base alle previsioni], [capitolato#super[G]],
  [*RFD01/03*], [Il sistema deve attivare meccanismi preventivi per evitare esaurimenti], [capitolato#super[G]],

  [*RFD02*], [*Riassortimento predittivo tramite analisi dei dati storici, con previsione della domanda per ciascun prodotto considerando stagionalità e tendenze di consumo, per determinare quando e quanto riassortire le scorte, riducendo il rischio di esaurimento o sovrastoccaggio*], [capitolato#super[G]],
  [*RFD02/01*], [Il sistema deve analizzare dati storici di vendita e di consegna], [capitolato#super[G]],
  [*RFD02/02*], [Il sistema deve applicare modelli statistici per prevedere la domanda, identificando pattern stagionali e tendenze di consumo], [capitolato#super[G]],
  [*RFD02/03*], [Il sistema deve adattare le strategie di approvvigionamento in base alle previsioni], [capitolato#super[G]],
  [*RFD02/04*], [Il sistema deve ottimizzare i livelli di scorte per ridurre il rischio di esaurimento o sovrastoccaggio], [capitolato#super[G]],

  //DA VERIFICARE INSIEME
  [*RFD03*], [*Interfaccia grafica per la visualizzazione e gestione delle scorte, con dashboard centralizzata per monitorare le scorte in tempo reale*], [capitolato#super[G]],
  [*RFD03/01*], [Il sistema deve fornire un'interfaccia grafica intuitiva per gli utenti], [capitolato#super[G]],
  [*RFD03/02*], [Il sistema deve visualizzare le informazioni sulle scorte in tempo reale], [capitolato#super[G]],
  [*RFD03/03*], [Il sistema deve consentire agli utenti di gestire le scorte e le operazioni di inventario tramite l'interfaccia grafica], [capitolato#super[G]],

  //Requisiti Funzionali opzionali
  [*RFO01*], [*Integrazione con sistemi di notifica per eventi rilevanti, come il raggiungimento dei livelli minimi di scorte, l'approvazione dei trasferimenti di merci, con alert configurabili in base a regole definite e supporto a più canali di comunicazione (e-mail, SMS, dashboard interna)*], [capitolato#super[G]],
  [*RFO01/01*], [È necessario supporto per la generazione di notifiche automatiche], [capitolato#super[G]],
  [*RFO01/02*], [È prevista una notifica per il raggiungimento dei livelli minimi di scorte], [capitolato#super[G]],
  [*RFO01/03*], [È prevista una notifica per approvazione e/o rifiuto dei trasferimenti di merci], [capitolato#super[G]],
  [*RFO01/04*], [Il sistema deve notificare le parti interessate delle modifiche ai dati di inventario], [capitolato#super[G]],
  [*RFO01/05*], [Il sistema deve notificare eventuali cambi di stato dell'ordine], [capitolato#super[G]],
  [*RFO01/06*], [Il sistema deve notificare l'impossibilità di evasione di un ordine], [capitolato#super[G]],
  [*RFO01/07*], [Il sistema deve notificare la carenza di scorte], [capitolato#super[G]],
  [*RFO01/08*], [Gli alert#super[G] sono configurabili in base a regole definite dall'utente (o dall'amministratore)], [capitolato#super[G]],
  [*RFO01/09*], [È previsto l'invio di notifiche tramite email e/o SMS], [capitolato#super[G]],
  [*RFO01/10*], [È prevista la visualizzazione delle notifiche sulla dashboard interna del sistema], [capitolato#super[G]],
  
  [*RFO02*], [*Implementazione di meccanismi di autorizzazione e autenticazione, inclusa la gestione di ruoli e permessi differenziati per operatori, supervisori e amministratori*], [capitolato#super[G]],
  [*RFO02/01*], [Il sistema prevede l'implementazione dell'autenticazione#super[G] per l'accesso al sistema], [capitolato#super[G]],
  [*RFO02/02*], [È prevista la possibilità di autenticazione a due fattori (2FA#super[G])], [capitolato#super[G]],
  [*RFO02/03*], [Il sistema prevede il controllo completo per gli amministratori], [capitolato#super[G]],
  [*RFO02/04*], [Il sistema prevede l'autorizzazione a convalidare trasferimenti o ad approvare modifiche per i supervisori], [capitolato#super[G]],
  [*RFO02/05*], [Il sistema prevede l'accesso limitato alle operazioni di base per gli operatori], [capitolato#super[G]],
  
  [*RFO03*], [*Backup regolare dei dati, con il sistema centrale incaricato di gestire l'integrità e la conciliazione dei dati, mantenendo copie locali per ogni magazzino e permettendo il ripristino completo dei sistemi in caso di necessità*], [capitolato#super[G]],
  [*RFO03/01*], [Il sistema centrale esegue verifiche periodiche sui dati distribuiti], [capitolato#super[G]],
  [*RFO03/02*], [Il sistema prevede meccanismi di conciliazione per dati incoerenti], [capitolato#super[G]],
  [*RFO03/03*], [Ogni nodo mantiene una copia locale dei propri dati come backup#super[G]], [capitolato#super[G]],
  [*RFO03/04*], [I dati locali possono essere utilizzati per operazioni anche in caso di disconnessione dal centrale], [capitolato#super[G]],
  [*RFO03/05*], [Il sistema prevede il ripristino dei dati da backup centralizzati], [capitolato#super[G]],
  [*RFO03/06*], [Il sistema prevede il ripristino delle copie locali in caso di guasto del nodo#super[G]], [capitolato#super[G]],
  [*RFO03/07*], [Il sistema prevede una verifica dell'integrità#super[G] post-ripristino], [capitolato#super[G]],

)
#align(center)[_Tabella #tabella_counter: Requisiti funzionali_]

== Requisiti di Sicurezza
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),

  [*RS01*], [*Cifratura end-to-end per tutti i dati scambiati*], [capitolato#super[G]],
  [*RS01/01*], [Il sistema deve garantire la cifratura dei dati durante tutta la comunicazione tra client#super[G], microservizi e sistema centrale#super[G]], [capitolato#super[G]],
  [*RS01/02*], [Il sistema deve utilizzare protocolli#super[G] sicuri per la trasmissione], [capitolato#super[G]],
  [*RS01/03*], [Il sistema deve proteggere i dati sensibili#super[G] sia in transito che in riposo], [capitolato#super[G]],
  [*RS01/04*], [Il sistema deve assicurare che la cifratura#super[G] sia attiva per tutte le API#super[G] e i canali di comunicazione], [capitolato#super[G]],

  [*RS02*], [*Monitoraggio continuo per rilevare tentativi di accesso non autorizzati o attività sospette*], [capitolato#super[G]],
  [*RS02/01*], [Il sistema deve implementare sistemi di monitoraggio#super[G] centralizzato], [capitolato#super[G]],
  [*RS02/02*], [Il sistema deve rilevare e segnalare attività anomale, accessi non autorizzati e tentativi di intrusione#super[G]], [capitolato#super[G]],
  [*RS02/03*], [Il sistema deve registrare i log#super[G] degli accessi e delle operazioni rilevanti], [capitolato#super[G]],
  [*RS02/04*], [Il sistema deve inviare allarmi in tempo reale in caso di comportamento sospetto], [capitolato#super[G]],
  
//Requisiti di Sicurezza opzionali
  [*RSO01*], [*Implementare l'autenticazione tra microservizi*], [capitolato#super[G]],
  [*RSO01/01*], [Il sistema deve garantire che solo i microservizi autorizzati possono comunicare tra loro], [capitolato#super[G]],
  [*RSO01/02*], [È previsto l'utilizzo di tecnologie di autenticazione tra microservizi], [capitolato#super[G]],
  [*RSO01/03*], [È necessario cifrare le comunicazioni tra i microservizi, anche all'interno della rete#super[G] interna], [capitolato#super[G]],
  [*RSO01/04*], [È necessario isolare i microservizi in base alle loro funzioni per limitare l'accesso], [capitolato#super[G]],
  [*RSO01/05*], [È necessario monitorare e gestire le dipendenze tra microservizi per individuare eventuali vulnerabilità#super[G] esterne], [capitolato#super[G]],

  [*RSO02*], [*Backup regolari, ridondanza e piani di ripristino in caso di attacchi o malfunzionamenti*], [capitolato#super[G]],
  [*RSO02/01*], [Il sistema prevede di eseguire backup periodici dei dati e della configurazione del sistema], [capitolato#super[G]],
  [*RSO02/02*], [Il sistema prevede la ridondanza#super[G] dei dati (su cloud e in replica locale)], [capitolato#super[G]],
  [*RSO02/03*], [Il sistema prevede la definizione di un piano di ripristino#super[G] operativo con test regolari di recovery#super[G]], [capitolato#super[G]],
  
  [*RSO03*], [*Assicurare che l'autenticazione sia robusta tramite MFA e certificati crittografici*], [capitolato#super[G]],
  [*RSO03/01*], [È necessario abilitare MFA#super[G] (autenticazione a più fattori) per tutti gli utenti con privilegi], [capitolato#super[G]],
  [*RSO03/02*], [È necessario utilizzare certificati digitali#super[G] per autenticare utenti e dispositivi], [capitolato#super[G]],
  [*RSO03/03*], [È necessario consentire l'accesso solo da dispositivi e utenti autorizzati e riconosciuti], [capitolato#super[G]],
  [*RSO03/04*], [È necessario assicurare l'integrità dei dati scambiati tramite firme digitali#super[G] o hashing#super[G]], [capitolato#super[G]],
  
)
#align(center)[_Tabella #tabella_counter: Requisiti di sicurezza_]



== Requisiti non Funzionali
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),

  [*RnF01*], [*Test unitari per garantire la correttezza delle funzioni sviluppate, anche dopo modifiche*], [capitolato#super[G]],
  [*RnF01/01*], [Il sistema deve verificare automaticamente il corretto comportamento delle singole funzioni], [capitolato#super[G]],
  [*RnF01/02*], [I test devono essere eseguiti dopo ogni modifica al codice], [capitolato#super[G]],
  [*RnF01/03*], [I test devono essere ripetibili e facilmente estendibili], [capitolato#super[G]],

  [*RnF02*], [*Percentuale minima di copertura del codice*], [capitolato#super[G]],
  [*RnF02/01*], [La percentuale di copertura del codice#super[G], concordata con M31, è da rispettare costantemente durante tutto lo sviluppo], [capitolato#super[G]],
  [*RnF02/02*], [Il sistema deve monitorare automaticamente la copertura del codice con strumenti dedicati], [capitolato#super[G]],

  [*RnF03*], [*Esecuzione automatica dei test*], [capitolato#super[G]],
  [*RnF03/01*], [I test devono essere eseguiti automaticamente tramite pipeline CI/CD#super[G]], [capitolato#super[G]],
  [*RnF03/02*], [È prevista una notifica immediata in caso di fallimento dei test], [capitolato#super[G]],
  [*RnF03/03*], [Il sistema deve prevedere automatismi in grado di impedire il rilascio in produzione se i test falliscono], [capitolato#super[G]],

  [*RnF04*], [*Test book per documentare*], [capitolato#super[G]],
  [*RnF04/01*], [Deve esserci un elenco completo dei casi di test], [capitolato#super[G]],
  [*RnF04/02*], [È prevista una descrizione chiara per ogni test, con tutti i passaggi eseguiti], [capitolato#super[G]],
  [*RnF04/03*], [Deve essere presente una lista di risultati attesi, comparata ai risultati effettivi], [capitolato#super[G]],
  [*RnF04/04*], [Devono essere specificati i criteri di validazione dei test], [capitolato#super[G]],
  [*RnF04/05*], [Deve essere presente lo storico aggiornato dei tesi superati e falliti], [capitolato#super[G]],

  [*RnF05*], [*Sistema scalabile orizzontalmente; Microservizi modulari e distribuibili in più istanze cloud*], [capitolato#super[G]],
  [*RnF05/01*], [Ogni magazzino può aumentare o diminuire risorse in base al carico], [capitolato#super[G]],
  [*RnF05/02*], [Il comportamento di un magazzino non deve compromettere gli altri], [capitolato#super[G]],
  [*RnF05/03*], [I microservizi devono essere modulari#super[G]], [capitolato#super[G]],
  [*RnF05/04*], [I microservizi devono poter essere distribuiti in più istanze in ambiente cloud], [capitolato#super[G]],
  [*RnF05/05*], [Deve esserci supporto all'orchestrazione#super[G] tramite strumenti (es. Kubernetes)], [capitolato#super[G]],

  [*RnF06*], [*Versionamento tramite Git*], [capitolato#super[G]],
  [*RnF06/01*], [È previsto l'utilizzo di branch#super[G] per nuove funzionalità, bugfix#super[G] e refactoring#super[G]], [capitolato#super[G]],
  [*RnF06/02*], [Devono essere ben definite le strategie di merge#super[G]/rebase#super[G]], [capitolato#super[G]],
  [*RnF06/03*], [I commit#super[G] devono essere frequenti e descrittivi], [capitolato#super[G]],
  [*RnF06/04*], [Le modifiche devono essere tracciabili nel tempo], [capitolato#super[G]],
)
#align(center)[_Tabella #tabella_counter: Requisiti non funzionali_]

== Tracciamento dei casi d'uso