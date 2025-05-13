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
#let versione = "0.1.1"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.1.1],
  [13/05/2025],
  [N. Bolzon],
  [N. Moretto],
  [Modifica dei requisiti#super[G] sulla base delle osservazioni dei progettisti#super[G]],

  [0.1.0],
  [17/04/2025],
  [N. Moretto],
  [S. Marana],
  [Aggiunta descrizione glossario, descrizione requisiti#super[G] e aggiunta di tutti i requisiti#super[G]],
  
  [0.0.2],
  [12/04/2025],
  [M. Dalla Pozza],
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
  title: [#titolo#super[G]],
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

Il presente documento di Analisi dei Requisiti#super[G] ha lo scopo di fornire una panoramica quanto più possibile dettagliata del prodotto#super[G] software da sviluppare. Esso rappresenta un riferimento e una linea guida fondamentale per la progettazione, l'implementazione e il collaudo del sistema, garantendo che il prodotto#super[G] finale soddisfi pienamente le esigenze e le aspettative del committente#super[G].

All'interno del documento sono descritte le richieste del committente#super[G], le modalità previste per la loro implementazione dal punto di vista architetturale e tecnologico, nonché i riferimenti normativi e informativi utili. In particolare, vengono forniti una descrizione approfondita dei Casi d'Uso e una lista completa dei requisiti#super[G] funzionali e non funzionali del sistema.

Questo documento mira a offrire una visione strutturata e completa del sistema software, delineando i bisogni degli utenti in base alle diverse categorie individuate durante l'analisi del capitolato#super[G] e gli incontri con il committente#super[G]. Sono inoltre chiaramente identificati gli attori coinvolti nel sistema e descritte le componenti principali del programma.

Per agevolare la comprensione, verranno utilizzati i Diagrammi dei Casi d'Uso per visualizzare le interazioni tra attori e sistema. I requisiti#super[G] identificati sono classificati come segue:

- *Obbligatori:* irrinunciabili e imprescindibili per il corretto funzionamento del sistema;

- *Desiderabili:* non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile;

- *Opzionali:* relativamente utili oppure contrattabili per un'eventuale implementazione futura.

Il documento è stato redatto dagli Analisti#super[G] del team di progetto ed è rivolto a tutti gli interessati ed in particolare: 

- Il Committente#super[G], che potrà verificare che i requisiti#super[G] siano stati correttamente interpretati e documentati secondo le proprie specifiche;

- Il Team di Progettisti#super[G] e Programmatori#super[G], che utilizzerà il documento come guida per la realizzazione del sistema;

- Il Team di Verificatori#super[G], che lo adotterà come base per la definizione dei casi di test e la verifica del corretto funzionamento del prodotto#super[G].

Potrà inoltre essere consultato da altri soggetti coinvolti nel processo di sviluppo, come Amministratori#super[G] e Responsabili#super[G] di Progetto, al fine di acquisire una comprensione esauriente delle specifiche del sistema.


/*
Il documento qui redatto serve per fornire una panoramica quanto piu' possibile dettagliata del prodotto#super[G] preso in considerazione, meglio descritto al punto 1.2. All' interno È possibile trovare in particolare, la descrizione delle richieste, come si È previsto di implementarle, dal punto di vista architetturale e tecnologico, tutti i riferimenti normativi e informativi utili, i casi d'uso del prodotto#super[G] dettagliati, e una lista dei diversi requisti 
*/



/* NOTA IMPORTANTE: Nelle slide di Tullio, Analisi dei requisiti#super[G] - T05, alla slide 22 viene mostrato un possibile indice per questo documento, che segue lo standard ISO/IEC/IEEE 29148:2018 */

== Descrizione del prodotto#super[G]
#v(0.5cm)

Il progetto ha l'obiettivo di sviluppare un sistema intelligente per la gestione distribuita dell'inventario#super[G] in una rete di magazzini geograficamente separati. In scenari logistici complessi, come quelli che prevedono la cooperazione tra più sedi operative, è fondamentale garantire disponibilità continua delle scorte#super[G], ridurre i tempi di inattività e ottimizzare il flusso di materiali.

Il sistema dovrà permettere di rilevare in tempo reale situazioni critiche, come carenze di prodotto#super[G] in una sede e surplus in un'altra, intervenendo automaticamente o suggerendo azioni correttive di trasferimento#super[G] o riassortimento#super[G]. Sarà inoltre in grado di gestire eventi imprevisti, come l'indisponibilità temporanea di un magazzino, garantendo la continuità operativa attraverso un bilanciamento intelligente delle risorse nei magazzini vicini.

Una delle componenti chiave sarà la *visibilità centralizzata e in tempo reale* di tutte le scorte#super[G] distribuite. Il sistema offrirà funzionalità avanzate per il monitoraggio, la sincronizzazione e l'aggiornamento dell'inventario#super[G], supportando decisioni rapide e affidabili.

Sarà adottata *un'architettura scalabile a microservizi#super[G]*, che garantisca alta disponibilità, interoperabilità tra i nodi#super[G] della rete, e gestione efficiente del carico, anche in presenza di numerose richieste simultanee. Ogni nodo#super[G] della rete – cioè ciascun magazzino – potrà operare in modo autonomo, mantenendo però sincronizzazione con un sistema centrale tramite servizi#super[G] cloud.

Il progetto prevede anche *l'integrazione di modelli predittivi* per il riassortimento#super[G], sfruttando dati storici, pattern di consumo e stagionalità per anticipare la domanda e ridurre il rischio di esaurimento scorte#super[G]. M31 supporterà il progetto fornendo un dataset pubblico e una figura tecnica di riferimento per l'analisi dei dati e lo sviluppo dei modelli.

L'obiettivo finale è realizzare una *piattaforma robusta e flessibile* che migliori la resilienza e l'efficienza dell'intera rete logistica, assicurando precisione, tempestività e scalabilità#super[G] nelle operazioni di gestione dell'inventario#super[G].

=== Architettura

=== Funzionalità

=== Scelte tecnologiche

== Analisi dello stato dell'arte
#v(0.5cm)
Prima di procedere con l'analisi dei requisiti#super[G], è stata effettuata un'analisi dello stato dell'arte, al fine di comprendere le tecnologie e le soluzioni già esistenti nel campo della gestione distribuita, dei microservizi#super[G] e della gestione dei dati.\
Sono stati analizzati diversi articoli, documenti e libri che trattano questi argomenti, al fine di identificare le migliori pratiche e le soluzioni più adatte per il progetto in questione.
Sono stati presi in considerazione anche vari progetti esistesti che utilizzano tecnologie simili, al fine di comprendere le sfide e le opportunità che si presentano in questo campo.\

Dopo un'esaustiva ricerca, sono stati identificati alcuni punti chiave che saranno fondamentali per la progettazione e lo sviluppo di un'ipotesi di architettura del sistema:
- *Microservizi#super[G]:* come richiesto dal capitolato#super[G], il sistema dovrà essere progettato utilizzando un'architettura a microservizi#super[G], che consente di suddividere il sistema in componenti più piccoli e indipendenti, facilitando la scalabilità#super[G] e la manutenibilità del sistema.\
  Ogni microservizio#super[G] dovrebbe avere un proprio database, e può scegliere il proprio stack tecnologico, in modo da garantire la massima flessibilità e indipendenza.\
- *Architettura Event-Driven:* l'architettura del sistema dovrebbe essere basata su eventi, in modo da garantire una comunicazione efficiente tra i microservizi#super[G] e una gestione ottimale delle risorse.\
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
- Valutazione della necessità e della complessità di *API Gateway* e *Service Discovery*.\
  L'API Gateway funge da punto di accesso centrale per le richieste degli utenti e può gestire l'autenticazione#super[G], la registrazione, il bilanciamento del carico e altre funzionalità.\
  La Service Discovery consente ai microservizi#super[G] di trovare e comunicare tra loro in modo dinamico, senza la necessità di configurazioni statiche.

== Il Glossario
#v(0.5cm)
In questo documento potrebbero essere presenti parole#super[G] e terminologie complesse, che potrebbero non essere chiare a tutti, anche in relazione al contesto in cui vengono usate. Per questo motivo, È stato creato un glossario, che contiene le definizioni di alcune parole#super[G] e termini utilizzati nel documento.

Le parole#super[G] che possiedono un riferimento al glossario vengono evidenziate come segue: *parola#super[G]*#super[G].


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

=== Normativi

=== Informativi

= Casi d'uso del prodotto#super[G]

== Introduzione

== Lista dei Casi d'uso

=== U.C.1 Primo Caso d'uso

=== U.C.2 Secondo Caso d'uso

= Requisiti#super[G]
#v(0.5cm)
Verranno ora elencati i requisiti#super[G] del sistema, che sono stati suddivisi in quattro categorie principali: Requisiti#super[G] Funzionali, Requisiti#super[G] di Sicurezza, Requisiti#super[G] non Funzionali e Requisiti#super[G] di Vincolo.

== Classificazione dei requisiti#super[G]
- *Requisiti#super[G] Funzionali:* sono i requisiti#super[G] che definiscono le funzionalità e i comportamenti del sistema. Questi requisiti#super[G] specificano cosa il sistema deve fare e come deve interagire con gli utenti e altri sistemi. I requisiti#super[G] funzionali sono essenziali per garantire che il sistema soddisfi le esigenze degli utenti e raggiunga gli obiettivi prefissati.

- *Requisiti#super[G] di Sicurezza:* sono i requisiti#super[G] che definiscono le misure di sicurezza e protezione dei dati all'interno del sistema. Questi requisiti#super[G] sono fondamentali per garantire la riservatezza, l'integrità#super[G] e la disponibilità delle informazioni trattate dal sistema.

- *Requisiti#super[G] non Funzionali:* sono i requisiti#super[G] che definiscono le caratteristiche qualitative del sistema, come prestazioni, usabilità, affidabilità e manutenibilità. Questi requisiti#super[G] non riguardano direttamente le funzionalità del sistema, ma sono comunque cruciali per garantire un'esperienza utente soddisfacente e un funzionamento efficiente del sistema.

== Fonti dei requisiti#super[G]
Le fonti dei requisiti#super[G] sono i documenti e le informazioni da cui sono stati estratti i requisiti#super[G] stessi, come il capitolato#super[G] d'appalto e le riunioni con il committente#super[G].\
Inoltre, alcuni requisiti#super[G] sono stati derivati dall'analisi allo stato dell'arte e dall'analisi dei casi d'uso.

Tutti i requisiti#super[G] presenteranno la fonte di provenienza.

== Codifica dei requisiti#super[G]
I requisiti#super[G] sono stati codificati in modo da facilitarne la lettura e la comprensione. La codifica è composta da un prefisso che indica il tipo di requisito#super[G], seguito da un numero progressivo.\

I requisiti#super[G] funzionali sono preceduti dal prefisso "RF", i requisiti#super[G] di sicurezza dal prefisso "RS", i requisiti#super[G] non funzionali dal prefisso "RnF" e i requisiti#super[G] di vincolo dal prefisso "RV", dove:
- *R* sta per "#strong[R]equisito"
- *F* sta per "#strong[F]unzionale"
- *S* sta per "#strong[S]icurezza"
- *nF* sta per "#strong[n]on #strong[F]unzionale"

//Aggiungere il fatto di avere vincoli desiderabili: riassortimento#super[G] predittivo, GUI (fonte: riunione con M31)
Alcuni requisiti#super[G] funzionali sono stati definiti come *"desiderabili"*, in quanto non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile.\
Per indicare che un requisito#super[G] è desiderabile, è stato deciso di aggiungere la lettera *"D"* (Desiderabile) al prefisso del requisito#super[G], per indicare che il requisito#super[G] è desiderabile.\ *RFD*, ad esempio, sta per "Requisito#super[G] Funzionale Desiderabile".\

Essendoci presenti anche dei requisiti#super[G] *opzionali*, è stato deciso di aggiungere la lettera *"O"* (Opzionale) al prefisso del requisito#super[G], per indicare che il requisito#super[G] è opzionale.\ *RFO*, ad esempio, sta per "Requisito#super[G] Funzionale Opzionale".\

Inoltre, i requisiti#super[G] forniti dal capitolato#super[G] sono molto generali e non specificano in modo dettagliato le funzionalità richieste.
Per questo motivo, è stato deciso di scomporre i requisiti#super[G] in requisiti#super[G] più specifici, cioè chi deve fare cosa, e in che modo.\
Per indicare che un requisito#super[G] è secondario, è stato deciso di aggiungere la dicitura *"/nr"* al codice#super[G] del requisito#super[G] principale, dove *nr* è il numero progressivo del requisito#super[G] secondario.\

Quindi, la struttura del codice#super[G] di un requisito#super[G] è la seguente:
- RF01: Requisito#super[G] Funzionale principale 01
- RF01/01: Requisito#super[G] Funzionale secondario 01/01
- RS01: Requisito#super[G] di Sicurezza principale 01
- RS01/01: Requisito#super[G] di Sicurezza secondario 01/01
- RnF01: Requisito#super[G] non Funzionale principale 01
- RnF01/01: Requisito#super[G] non Funzionale secondario 01/01

//Scomporre i requisiti#super[G] in requisiti#super[G] più specifici, cioè chi deve fare cosa, e in che modo.\

== Requisiti#super[G] Funzionali
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
    [*Codice#super[G]*], [*Descrizione*], [*Fonti*]
  ),

  [*RF01*], [*Rilevamento di carenza di scorte#super[G] di un magazzino.*], [capitolato#super[G]],
  [*RF01/01*], [Il sistema deve monitorare costantemente le scorte#super[G].], [capitolato#super[G]],
  [*RF01/02*], [Il sistema deve identificare quando le scorte#super[G] scendono sotto una certa soglia.], [capitolato#super[G]],
  
  [*RF02*], [*Trasferimento#super[G] di scorte#super[G] da un magazzino ad un altro.*], [capitolato#super[G]],
  [*RF02/01*], [Il sistema deve consentire l'invio di richieste di trasferimento#super[G] tra magazzini.],[capitolato#super[G]],
  [*RF02/02*], [Il sistema deve validare la disponibilità delle scorte#super[G] nel magazzino di origine.], [capitolato#super[G]],
  [*RF02/03*], [Il sistema deve aggiornare l'inventario#super[G] di entrambi i magazzini coinvolti.], [capitolato#super[G]],
  [*RF02/04*], [Il sistema deve tracciare il trasferimento#super[G] dei prodotti#super[G].], [capitolato#super[G]],
  [*RF02/05*], [Il sistema deve aggiornare lo stato del trasferimento#super[G] in tempo reale.], [capitolato#super[G]],
  
  [*RF03*], [*Rilevamento delle scorte#super[G] minime necessarie e mantenimento.*], [capitolato#super[G]],
  [*RF03/01*], [Deve essere possibile poter definire un livello minimo di scorte#super[G] per ciascun prodotto#super[G].], [progettazione],
  [*RF03/02*], [Il sistema deve calcolare le scorte#super[G] minime necessarie per ciascun prodotto#super[G].], [capitolato#super[G]],
  [*RF03/03*], [Il sistema deve monitorare le scorte#super[G] attuali rispetto alle scorte#super[G] minime, ottimizzandone la quantità], [capitolato#super[G].],
  [*RF03/04*], [Il sistema deve attivare processi di riassortimento#super[G] quando necessario.], [capitolato#super[G]],
  
  [*RF04*], [*Bilanciamento delle scorte#super[G], il più possibile, in ogni magazzino per ridurre i livelli medi di scorte (riassortimento).*], [capitolato#super[G]],
  [*RF04/01*], [Il sistema deve analizzare la distribuzione delle scorte#super[G] tra i magazzini.], [capitolato#super[G]],
  [*RF04/02*], [Il sistema deve identificare squilibri nelle scorte#super[G], valutando la distribuzione attuale.], [capitolato#super[G]],
  [*RF04/03*], [Il sistema deve proporre trasferimenti#super[G] interni per bilanciare le scorte#super[G] e migliorare l'efficienza.], [capitolato#super[G]],
  [*RF04/04*], [Il sistema deve automatizzare il processo di riassortimento#super[G].], [capitolato#super[G]],

  [*RF05*], [*Suggerimento su azioni di riassortimento#super[G] e trasferimento#super[G] tra magazzini.*], [capitolato#super[G]],
  [*RF05/01*], [È necessario fornire raccomandazioni per il riassortimento#super[G] e i trasferimenti#super[G].], [capitolato#super[G]],
  [*RF05/02*], [L'utente deve approvare le azioni di riassortimento#super[G] e trasferimento#super[G].], [capitolato#super[G]],

  [*RF06*], [*Individuazione di magazzini offline.*], [capitolato#super[G]],
  [*RF06/01*], [Il sistema deve monitorare la connettività#super[G] di ciascun magazzino.], [capitolato#super[G]],
  [*RF06/02*], [Il sistema deve segnalare tempestivamente eventuali disconnessioni.], [capitolato#super[G]],

  [*RF07*], [*Riempire magazzini vicini ad uno offline, per sopperire al disservizio.*], [capitolato#super[G]],
  [*RF07/01*], [Il sistema deve determinare i magazzini vicini disponibili.], [capitolato#super[G]],
  [*RF07/02*], [Il sistema deve trasferire scorte#super[G] ai magazzini vicini per sopperire al disservizio.], [capitolato#super[G]],
  
  [*RF08*], [*Gestione magazzino che torna online.*], [capitolato#super[G]],
  [*RF08/01*], [Il sistema deve riconoscere quando un magazzino torna online.], [capitolato#super[G]],
  [*RF08/02*], [Il sistema deve sincronizzare i dati di inventario#super[G] con il cloud.], [capitolato#super[G]],
  [*RF08/03*], [Il sistema deve risolvere eventuali conflitti di dati], [capitolato#super[G].],
  
  [*RF09*], [*Visibilità centrale in tempo reale di tutte le scorte#super[G] distribuite (monitoraggio livelli inventario#super[G]), di ogni magazzino (anche indipendentemente).*], [capitolato#super[G]],
  [*RF09/01*], [Il sistema deve fornire una dashboard#super[G] centralizzata per monitorare le scorte#super[G].], [capitolato#super[G]],
  [*RF09/02*], [Il sistema deve interrogare il database di aggregazione del microservizio#super[G] di inventario#super[G] su cloud per avere una visione centralizzata delle scorte di ogni magazzino.], [capitolato#super[G]],

  [*RF10*], [*Mantenimento dei livelli di sicurezza delle scorte#super[G] in ogni magazzino in caso di carenze o ritardi.*], [capitolato#super[G]],
  [*RF10/01*], [Definire una soglia temporale massima come tempo stimato di arrivo di una richiesta.], [capitolato#super[G]],
  [*RF10/02*], [In caso di superamento della soglia, il sistema deve attivare delle azioni correttive (es.: invio di nuove richieste).], [capitolato#super[G]],

  [*RF11*], [*Mantenimento di prestazioni elevate anche con carichi elevati di dati e richieste simultanee.*], [capitolato#super[G]],
  [*RF11/01*], [ Il sistema deve implementare un meccanismo di bilanciamento del carico tra i servizi#super[G] per distribuire in modo efficiente le richieste.], [capitolato#super[G]],
  [*RF11/02*], [Il sistema deve monitorare l'utilizzo delle risorse in tempo reale (es. memoria, rete, CPU, ...).], [capitolato#super[G]],
  [*RF11/03*], [Il sistema deve gestire le risorse in modo dinamico evitando problemi prestazionali (es. gestione code, scalabilità automatica).], [capitolato#super[G]],
  
  [*RF12*], [*Gestione aggiornamenti simultanei dell'inventario#super[G] da magazzini differenti, anche per i singoli magazzini.*], [capitolato#super[G]],
  [*RF12/01*], [Il sistema deve gestire le modifiche concorrenti (in simultanea) ai dati di inventario#super[G].], [capitolato#super[G]],
  [*RF12/02*], [Il sistema deve implementare meccanismi di controllo delle versioni e/o del timestamp.], [capitolato#super[G]],
  [*RF12/03*], [Il sistema deve risolvere conflitti di aggiornamento], [capitolato#super[G].],
  
  [*RF13*], [*Gestione di ordini#super[G] simultanei per uno stesso prodotto#super[G] in singoli magazzini.*], [analisi dello stato dell'arte],
  [*RF13/01*], [Il sistema deve coordinare gli ordini#super[G] ricevuti contemporaneamente.], [analisi dello stato dell'arte],
  [*RF13/02*], [Il sistema deve assegnare le scorte#super[G] disponibili secondo dei criteri predefiniti.], [analisi dello stato dell'arte],
  [*RF13/03*], [Definire dei criteri di priorità per gli ordini#super[G] in caso di conflitto.], [analisi dello stato dell'arte],
  
  [*RF14*], [*Magazzini autonomi come edge nodes, che fanno elaborazioni autonome per ridurre il carico sulla rete.*], [capitolato#super[G]],
  [*RF14/01*], [Il sistema deve consentire ai magazzini di operare autonomamente, permettendo operazioni locali sui dati di inventario#super[G].], [capitolato#super[G]],
  [*RF14/02*], [Il sistema deve eseguire elaborazioni locali per ridurre il carico sulla rete.], [capitolato#super[G]],
  [*RF14/03*], [Il magazzino locale deve sincronizzarsi con il cloud nel momento in cui avviene un'operazione di scrittura.], [capitolato#super[G]],
  
  [*RF15*], [*Magazzini gestiti da servizi#super[G] distribuiti.*], [capitolato#super[G]],
  [*RF15/01*], [È necessario distribuire le funzionalità del sistema su più servizi#super[G].], [capitolato#super[G]],
  [*RF15/02*], [È necessario garantire la resilienza e la scalabilità#super[G] del sistema.], [capitolato#super[G]],
  
  [*RF16*], [*Operazioni di inventario#super[G] indipendenti ma sincronizzate centralmente.*], [capitolato#super[G]],
  [*RF16/01*], [Il magazzino locale deve operare tramite inserimento, modifica, trasferimento#super[G].], [capitolato#super[G]],
  [*RF16/02*], [Aggiornare il magazzino in primo luogo localmente], [capitolato#super[G]],
  
  [*RF17*], [*Progettazione architetturale ben documentata, presentata con diagrammi a blocchi e derivata da analisi dei requisiti#super[G] e dal contesto distribuito.*
  ], [capitolato#super[G]],

  [*RFD01*], [*Gestione della variabilità della domanda e tempi di consegna con modelli predittivi.*], [capitolato#super[G]],
  [*RFD01/01*], [Il sistema deve prevedere la domanda futura per ciascun prodotto#super[G].], [capitolato#super[G]],
  [*RFD01/02*], [Il sistema deve pianificare riassortimenti#super[G] in base alle previsioni.], [capitolato#super[G]],
  [*RFD01/03*], [Il sistema deve attivare meccanismi preventivi per evitare esaurimenti.], [capitolato#super[G]],

  [*RFD02*], [*Riassortimento#super[G] predittivo tramite analisi dei dati storici, con previsione della domanda per ciascun prodotto#super[G] considerando stagionalità e tendenze di consumo, per determinare quando e quanto riassortire le scorte#super[G], riducendo il rischio di esaurimento o sovrastoccaggio.*], [capitolato#super[G]],
  [*RFD02/01*], [Il sistema deve analizzare dati storici di vendita e di consegna.], [capitolato#super[G]],
  [*RFD02/02*], [Il sistema deve applicare modelli statistici per prevedere la domanda, identificando pattern stagionali e tendenze di consumo], [capitolato#super[G].],
  [*RFD02/03*], [Il sistema deve adattare le strategie di approvvigionamento#super[G] in base alle previsioni.], [capitolato#super[G]],
  [*RFD02/04*], [Il sistema deve ottimizzare i livelli di scorte#super[G] per ridurre il rischio di esaurimento o sovrastoccaggio.], [capitolato#super[G]],

  //DA VERIFICARE INSIEME
  [*RFD03*], [*Interfaccia grafica per la visualizzazione e gestione delle scorte#super[G], con dashboard#super[G] centralizzata per monitorare le scorte#super[G] in tempo reale.*], [capitolato#super[G]],
  [*RFD03/01*], [Il sistema deve fornire un'interfaccia grafica intuitiva per gli utenti.], [capitolato#super[G]],
  [*RFD03/02*], [Il sistema deve visualizzare le informazioni sulle scorte#super[G] in tempo reale.], [capitolato#super[G]],
  [*RFD03/03*], [Il sistema deve consentire agli utenti di gestire le scorte#super[G] e le operazioni di inventario#super[G] tramite l'interfaccia grafica.], [capitolato#super[G]],

  //Requisiti#super[G] Funzionali opzionali
  [*RFO01*], [*Integrazione con sistemi di notifica per eventi rilevanti, come il raggiungimento dei livelli minimi di scorte#super[G], l'approvazione dei trasferimenti#super[G] di merci, con alert#super[G] configurabili in base a regole definite e supporto a più canali di comunicazione (e-mail, SMS, dashboard#super[G] interna).*], [capitolato#super[G]],
  [*RFO01/01*], [È necessario supporto per la generazione di notifiche automatiche.], [capitolato#super[G]],
  [*RFO01/02*], [È prevista una notifica per il raggiungimento dei livelli minimi di scorte#super[G].], [capitolato#super[G]],
  [*RFO01/03*], [È prevista una notifica per approvazione e/o rifiuto dei trasferimenti#super[G] di merci.], [capitolato#super[G]],
  [*RFO01/04*], [Il sistema deve notificare le parti interessate delle modifiche ai dati di inventario#super[G].], [capitolato#super[G]],
  [*RFO01/05*], [Il sistema deve notificare eventuali cambi di stato dell'ordine#super[G].], [capitolato#super[G]],
  [*RFO01/06*], [Il sistema deve notificare l'impossibilità di evasione di un ordine#super[G].], [capitolato#super[G]],
  [*RFO01/07*], [Il sistema deve notificare la carenza di scorte#super[G]], [capitolato#super[G].],
  [*RFO01/08*], [Il sistema deve notificare in caso di soglie critiche di utilizzo delle risorse per il funzionamento del sistema.], [capitolato#super[G]],
  [*RFO01/09*], [Gli alert#super[G] sono configurabili in base a regole definite dall'utente (o dall'amministratore#super[G]).], [capitolato#super[G]],
  [*RFO01/10*], [È previsto l'invio di notifiche tramite email e/o SMS], [capitolato#super[G].],
  [*RFO01/11*], [È prevista la visualizzazione delle notifiche sulla dashboard#super[G] interna del sistema.], [capitolato#super[G]],
  
  [*RFO02*], [*Implementazione di meccanismi di autorizzazione e autenticazione#super[G], inclusa la gestione di ruoli e permessi differenziati per operatori, supervisori e amministratori*#super[G].], [capitolato#super[G]],
  [*RFO02/01*], [È prevista la possibilità di autenticazione#super[G] a due fattori (2FA#super[G]).], [capitolato#super[G]],
  [*RFO02/02*], [Il sistema prevede il controllo completo per gli amministratori#super[G].], [capitolato#super[G]],
  [*RFO02/03*], [Il sistema prevede l'autorizzazione a convalidare trasferimenti#super[G] o ad approvare modifiche per i supervisori.], [capitolato#super[G]],
  [*RFO02/04*], [Il sistema prevede l'accesso limitato alle operazioni di base per gli operatori.], [capitolato#super[G]],
  
  [*RFO03*], [*Backup#super[G] regolare dei dati, con il sistema centrale incaricato di gestire l'integrità#super[G] e la conciliazione dei dati, mantenendo copie locali per ogni magazzino e permettendo il ripristino#super[G] completo dei sistemi in caso di necessità.*], [capitolato#super[G]],
  [*RFO03/01*], [Il sistema centrale esegue verifiche periodiche sui dati distribuiti.], [capitolato#super[G]],
  [*RFO03/02*], [Il sistema prevede meccanismi di conciliazione per dati incoerenti.], [capitolato#super[G]],
  [*RFO03/03*], [Ogni nodo#super[G] mantiene una copia locale dei propri dati come backup#super[G].], [capitolato#super[G]],
  [*RFO03/04*], [I dati locali possono essere utilizzati per operazioni anche in caso di disconnessione dal centrale.], [capitolato#super[G]],
  [*RFO03/05*], [Il sistema prevede il ripristino#super[G] dei dati da backup#super[G] centralizzati.], [capitolato#super[G]],
  [*RFO03/06*], [Il sistema prevede il ripristino#super[G] delle copie locali in caso di guasto del nodo#super[G].], [capitolato#super[G]],
  [*RFO03/07*], [Il sistema prevede una verifica dell'integrità#super[G] post-ripristino#super[G].], [capitolato#super[G]],

)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] funzionali_]

== Requisiti#super[G] di Sicurezza
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
    [*Codice#super[G]*], [*Descrizione*], [*Fonti*]
  ),

  [*RS01*], [*Autenticazione semplice*], [capitolato#super[G]],
  [*RS01/01*], [Il sistema prevede l'implementazione dell'autenticazione#super[G] per l'accesso al sistema stesso.], [capitolato#super[G]],
  [*RS01/02*], [Il sistema deve garantire la protezione dei dati sensibili durante il processo di autenticazione#super[G].], [capitolato#super[G]],
  [*RS01/03*], [Il sistema deve prevedere il logout.], [capitolato#super[G]],

  [*RS02*], [*Cifratura#super[G] end-to-end per tutti i dati scambiati.*], [capitolato#super[G]],
  [*RS02/01*], [Il sistema deve garantire la cifratura#super[G] dei dati durante tutta la comunicazione tra client#super[G], microservizi#super[G] e sistema centrale#super[G].], [capitolato#super[G]],
  [*RS02/02*], [Il sistema deve utilizzare protocolli#super[G] sicuri per la trasmissione.], [capitolato#super[G]],
  [*RS02/03*], [Il sistema deve proteggere i dati sensibili#super[G] sia in transito che in riposo.], [capitolato#super[G]],
  [*RS02/04*], [Il sistema deve assicurare che la cifratura#super[G] sia attiva per tutte le API#super[G] e i canali di comunicazione.], [capitolato#super[G]],

  [*RS03*], [*Monitoraggio continuo per rilevare tentativi di accesso non autorizzati o attività sospette*], [capitolato#super[G]],
  [*RS03/01*], [Il sistema deve implementare sistemi di monitoraggio#super[G] centralizzato.], [capitolato#super[G]],
  [*RS03/02*], [Il sistema deve rilevare e segnalare attività anomale, accessi non autorizzati e tentativi di intrusione#super[G].], [capitolato#super[G]],
  [*RS03/03*], [Il sistema deve registrare i log#super[G] degli accessi e delle operazioni rilevanti.], [capitolato#super[G]],
  [*RS03/04*], [Il sistema deve inviare allarmi in tempo reale in caso di comportamento sospetto.], [capitolato#super[G]],
  
//Requisiti#super[G] di Sicurezza opzionali
  [*RSO01*], [*Implementare l'autenticazione#super[G] tra microservizi#super[G].*], [capitolato#super[G]],
  [*RSO01/01*], [Il sistema deve garantire che solo i microservizi#super[G] autorizzati possono comunicare tra loro.], [capitolato#super[G]],
  [*RSO01/02*], [È previsto l'utilizzo di tecnologie di autenticazione#super[G] tra microservizi#super[G].], [capitolato#super[G]],
  [*RSO01/03*], [È necessario cifrare le comunicazioni tra i microservizi#super[G], anche all'interno della rete#super[G] interna.], [capitolato#super[G]],
  [*RSO01/04*], [È necessario isolare i microservizi#super[G] in base alle loro funzioni per limitare l'accesso.], [capitolato#super[G]],
  [*RSO01/05*], [È necessario monitorare e gestire le dipendenze tra microservizi#super[G] per individuare eventuali vulnerabilità#super[G] esterne.], [capitolato#super[G]],

  [*RSO02*], [*Backup#super[G] regolari, ridondanza#super[G] e piani di ripristino#super[G] in caso di attacchi o malfunzionamenti.*], [capitolato#super[G]],
  [*RSO02/01*], [Il sistema prevede di eseguire backup#super[G] periodici dei dati e della configurazione del sistema.], [capitolato#super[G]],
  [*RSO02/02*], [Il sistema prevede la ridondanza#super[G] dei dati (su cloud e in replica locale).], [capitolato#super[G]],
  [*RSO02/03*], [Il sistema prevede la definizione di un piano di ripristino#super[G] operativo con test regolari di recovery#super[G].], [capitolato#super[G]],
  
  [*RSO03*], [*Assicurare che l'autenticazione#super[G] sia robusta tramite MFA#super[G] e certificati crittografici.*], [capitolato#super[G]],
  [*RSO03/01*], [È necessario abilitare MFA#super[G] (autenticazione#super[G] a più fattori) per tutti gli utenti con privilegi.], [capitolato#super[G]],
  [*RSO03/02*], [È necessario utilizzare certificati digitali#super[G] per autenticare utenti e dispositivi.], [capitolato#super[G]],
  [*RSO03/03*], [È necessario consentire l'accesso solo da dispositivi e utenti autorizzati e riconosciuti.], [capitolato#super[G]],
  [*RSO03/04*], [È necessario assicurare l'integrità#super[G] dei dati scambiati tramite firme digitali#super[G] o hashing#super[G].], [capitolato#super[G]],
  
)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] di sicurezza_]



== Requisiti#super[G] non Funzionali
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
    [*Codice#super[G]*], [*Descrizione*], [*Fonti*]
  ),

  [*RnF01*], [*Test unitari per garantire la correttezza delle funzioni sviluppate, anche dopo modifiche.*], [capitolato#super[G]],
  [*RnF01/01*], [Il sistema deve verificare automaticamente il corretto comportamento delle singole funzioni.], [capitolato#super[G]],
  [*RnF01/02*], [I test devono essere eseguiti dopo ogni modifica al codice#super[G].], [capitolato#super[G]],
  [*RnF01/03*], [I test devono essere ripetibili e facilmente estendibili.], [capitolato#super[G]],

  [*RnF02*], [*Percentuale minima di copertura del codice#super[G].*], [capitolato#super[G]],
  [*RnF02/01*], [La percentuale di copertura del codice#super[G], concordata con M31, è da rispettare costantemente durante tutto lo sviluppo.], [capitolato#super[G]],
  [*RnF02/02*], [Il sistema deve monitorare automaticamente la copertura del codice#super[G] con strumenti dedicati.], [capitolato#super[G]],

  [*RnF03*], [*Esecuzione automatica dei test*], [capitolato#super[G]],
  [*RnF03/01*], [I test devono essere eseguiti automaticamente tramite pipeline CI/CD#super[G].], [capitolato#super[G]],
  [*RnF03/02*], [È prevista una notifica immediata in caso di fallimento dei test.], [capitolato#super[G]],
  [*RnF03/03*], [Il sistema deve prevedere automatismi in grado di impedire il rilascio in produzione se i test falliscono.], [capitolato#super[G]],

  [*RnF04*], [*Test book per documentare.*], [capitolato#super[G]],
  [*RnF04/01*], [Deve esserci un elenco completo dei casi di test.], [capitolato#super[G]],
  [*RnF04/02*], [È prevista una descrizione chiara per ogni test, con tutti i passaggi eseguiti.], [capitolato#super[G]],
  [*RnF04/03*], [Deve essere presente una lista di risultati attesi, comparata ai risultati effettivi.], [capitolato#super[G]],
  [*RnF04/04*], [Devono essere specificati i criteri di validazione dei test.], [capitolato#super[G]],
  [*RnF04/05*], [Deve essere presente lo storico aggiornato dei tesi superati e falliti.], [capitolato#super[G]],

  [*RnF05*], [*Sistema scalabile orizzontalmente; Microservizi#super[G] modulari#super[G] e distribuibili in più istanze cloud.*], [capitolato#super[G]],
  [*RnF05/01*], [Ogni magazzino può aumentare o diminuire risorse in base al carico.], [capitolato#super[G]],
  [*RnF05/02*], [Il comportamento di un magazzino non deve compromettere gli altri.], [capitolato#super[G]],
  [*RnF05/03*], [I microservizi#super[G] devono essere modulari#super[G].], [capitolato#super[G]],
  [*RnF05/04*], [I microservizi#super[G] devono poter essere distribuiti in più istanze in ambiente cloud.], [capitolato#super[G]],
  [*RnF05/05*], [Deve esserci supporto all'orchestrazione#super[G] tramite strumenti (es. Kubernetes).], [capitolato#super[G]],
  [*RnF05/06*], [È necessario garantire la scalabilità#super[G] orizzontale del sistema], [capitolato#super[G].],

  [*RnF06*], [*Versionamento tramite Git.*], [capitolato#super[G]],
  [*RnF06/01*], [È previsto l'utilizzo di branch#super[G] per nuove funzionalità, bugfix#super[G] e refactoring#super[G].], [capitolato#super[G]],
  [*RnF06/02*], [Devono essere ben definite le strategie di merge#super[G]/rebase#super[G].], [capitolato#super[G]],
  [*RnF06/03*], [I commit#super[G] devono essere frequenti e descrittivi.], [capitolato#super[G]],
  [*RnF06/04*], [Le modifiche devono essere tracciabili nel tempo.], [capitolato#super[G]],
)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] non funzionali_]

== Tracciamento dei casi d'uso