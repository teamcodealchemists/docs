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

#let versione = "0.1.3"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

  [0.1.3],
  [23/05/2025],
  [A. Shu],
  [N. Moretto],
  [Completamento della documentazione dei casi d'uso],

  [0.1.2],
  [22/05/2025],
  [A. Shu],
  [N. Moretto],
  [Aggiunta i casi d'uso fino al UC 10.5],


  [0.1.1],
  [13/05/2025],
  [N. Bolzon],
  [N. Moretto],
  [Modifica dei requisiti#super[G] sulla base delle osservazioni dei progettisti#super[G].],

  [0.1.0],
  [17/04/2025],
  [N. Moretto],
  [S. Marana],
  [Aggiunta descrizione glossario#super[G], descrizione requisiti#super[G] e aggiunta di tutti i requisiti#super[G]],

  
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

/* SEZIONE 1 - Introduzione */
= Introduzione
== Scopo del documento
#v(0.5cm)
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


/*
Il documento qui redatto serve per fornire una panoramica quanto piu' possibile dettagliata del prodotto#super[G] preso in considerazione, meglio descritto al punto 1.2. All' interno È possibile trovare in particolare, la descrizione delle richieste, come si È previsto di implementarle, dal punto di vista architetturale e tecnologico, tutti i riferimenti normativi e informativi utili, i casi d'uso del prodotto#super[G] dettagliati, e una lista dei diversi requisti 
*/



/* NOTA IMPORTANTE: Nelle slide di Tullio, Analisi dei requisiti#super[G] - T05, alla slide 22 viene mostrato un possibile indice per questo documento, che segue lo standard ISO/IEC/IEEE 29148:2018 */


== Descrizione del prodotto#super[G]
#v(0.5cm)

Il progetto ha l'obiettivo di sviluppare un sistema intelligente per la gestione distribuita dell'inventario#super[G] in una rete di magazzini geograficamente separati. In scenari logistici complessi, come quelli che prevedono la cooperazione tra più sedi operative, è fondamentale garantire disponibilità continua delle scorte#super[G], ridurre i tempi di inattività e ottimizzare il flusso di materiali.

Il sistema dovrà permettere di rilevare in tempo reale situazioni critiche, come carenze di prodotto#super[G] in una sede e surplus in un'altra, intervenendo automaticamente o suggerendo azioni correttive di trasferimento#super[G] o riassortimento#super[G]. Sarà inoltre in grado di gestire eventi imprevisti, come l'indisponibilità temporanea di un magazzino, garantendo la continuità operativa attraverso un bilanciamento intelligente delle risorse nei magazzini vicini.

Una delle componenti chiave sarà la *visibilità centralizzata e in tempo reale* di tutte le scorte#super[G] distribuite. Il sistema offrirà funzionalità avanzate per il monitoraggio#super[G], la sincronizzazione e l'aggiornamento dell'inventario#super[G], supportando decisioni rapide e affidabili.

Sarà adottata *un'architettura#super[G] scalabile a microservizi#super[G]*, che garantisca alta disponibilità, interoperabilità tra i nodi#super[G] della rete, e gestione efficiente del carico, anche in presenza di numerose richieste simultanee. Ogni nodo#super[G] della rete – cioè ciascun magazzino – potrà operare in modo autonomo, mantenendo però sincronizzazione con un sistema centrale tramite servizi#super[G] cloud.

Il progetto prevede anche *l'integrazione di modelli predittivi* per il riassortimento#super[G], sfruttando dati storici, pattern di consumo e stagionalità per anticipare la domanda e ridurre il rischio di esaurimento scorte#super[G]. M31 supporterà il progetto fornendo un dataset pubblico e una figura tecnica di riferimento per l'analisi dei dati e lo sviluppo dei modelli.

L'obiettivo finale è realizzare una *piattaforma robusta e flessibile* che migliori la resilienza e l'efficienza dell'intera rete logistica, assicurando precisione, tempestività e scalabilità#super[G] nelle operazioni di gestione dell'inventario#super[G].

=== Architettura#super[G]

=== Funzionalità

=== Scelte tecnologiche

== Analisi dello stato dell'arte
#v(0.5cm)
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

== Il Glossario#super[G]
#v(0.5cm)

In questo documento potrebbero essere presenti parole#super[G] e terminologie complesse, che potrebbero non essere chiare a tutti, anche in relazione al contesto in cui vengono usate. Per questo motivo, È stato creato un glossario#super[G], che contiene le definizioni di alcune parole#super[G] e termini utilizzati nel documento.

Le parole#super[G] che possiedono un riferimento al glossario #super[G]vengono evidenziate come segue: *parola#super[G]*#super[G].


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

= Casi d'uso del prodotto

== Introduzione

#pagebreak()
== Lista dei Casi d'uso
=== - UC 1: Autenticazione#super[G]
#label("uc-1")
#image("assets/Casi d'uso-UC1 - Autenticazione.drawio.png")
- *Attore Principale* : Utente
- *Precondizione* :
  - Il Sistema è attivo, in modalità online o offline. 
  - L’Utente non è autenticato nel Sistema.
- *Postcondizione* :
  - L’Utente ha eseguito l’accesso al Sistema.    Autenticandosi si ottiene i permessi di Supervisione Globale o Supervisore Locale sulla base del ruolo associato alle credenziali.
- *Scenario principale* :
  - #link(label("uc-1.1"))[L’Utente inserisce lo Username → UC 1.1] 
  - #link(label("uc-1.2"))[L’Utente inserisce la Password → UC 1.2]
- *Scenari alternativi* :
  - #link(label("uc-2"))[L’Utente inserisce lo Username o la Password errati → UC 2]
- *Inclusioni* :
  - #link(label("uc-1.1"))[UC 1.1]
  - #link(label("uc-1.2"))[UC 1.2]
  - #link(label("uc-20.3"))[UC 20.3]
- *Estensioni* :
  - #link(label("uc-2"))[UC 2]
  - #link(label("uc-20.2"))[UC 20.2]

- *Trigger* : 
  - L’Utente vuole autenticarsi per accedere al Sistema. 
#pagebreak()
==== - UC 1.1: Inserimento Username
#label("uc-1.1")

- *Attore Principale* : Utente
- *Precondizione* :
  - Il Sistema è attivo, in modalità online o offline.
  - L’Utente non è autenticato nel Sistema.
  - L’Utente vuole autenticarsi per accedere al sistema.
  - Il Sistema non riconosce lo Username inserito dall’Utente.
- *Postcondizione* :
  - Il Sistema riceve lo Username con il quale l’Utente vuole autenticarsi per accedere al Sistema.

- *Scenario principale* :
  - L’Utente inserisce il proprio Username.
  - L’Utente inserisce la Password.
- *Trigger* : 
  - L’Utente vuole autenticarsi per accedere al Sistema.
==== - UC 1.2: Inserimento Password
#label("uc-1.2")
- *Attore Principale* : Utente
- *Precondizione* :
  - Il Sistema è attivo, in modalità online o offline.
  - L’Utente non è autenticato nel Sistema.
  - L’Utente vuole autenticarsi per accedere al sistema.
  - Il Sistema non riconosce lo Username inserito dall’Utente.
- *Postcondizione* :
  - Il Sistema riceve la Password con la quale l’Utente vuole autenticarsi per accedere al Sistema.
- *Scenario principale* :
  - L’Utente inserisce la propria Password.
- *Trigger* : 
  - L’Utente vuole autenticarsi per accedere al Sistema.

#pagebreak() 
=== - UC 2: Autenticazione#super[G] non riuscita
#label("uc-2")
#image("assets/Casi d'uso-UC-2.drawio.png")
- *Attore Principale* : Utente
- *Precondizione* :
  - Il Sistema è attivo, in modalità online o offline.
  - L’Attore Principale non è autenticato nel Sistema.
  - L’Attore Principale ha inserito, in fase di autenticazione#super[G], uno Username o una Password errata.
- *Postcondizione* :
  - Il Sistema annulla l’autenticazione#super[G].
  - Il Sistema mostra a schermo circa l’errore di autenticazione#super[G].
- *Scenario principale* :
  - L’Utente inserisce lo Username. 
  - L’Utente inserisce la Password.
- *Scenari alternativi* :
  - Il Sistema ha ricevuto Username e Password, ma le credenziali sono risultate errate.
- *Inclusioni* :
  - #link(label("uc-20.3"))[UC 20.3]
- *Estensioni* :
  - #link(label("uc-20.4"))[UC 20.4]
=== - UC 3: Logout
#label("uc-3")
#image("assets/Casi d'uso-UC-3.drawio.png")
- *Attore Principale*: Utente
- *Precondizioni*: 
  - Il Sistema è attivo.
  - L’Attore Principale è autenticato nel Sistema.
- *Postcondizioni*: 
  - L’Utente viene disconnesso.
  - Le funzionalità riservate non sono più accessibili fino a nuova autenticazione#super[G] (login).
-  *Scenario principale*:
  - L’Utente clicca su “Logout” o seleziona l’opzione di disconnessione.
  - Il Sistema termina la sessione dell’Utente.
  - Il Sistema mostra la schermata iniziale o di login.
- *Inclusioni*:
  - #link(label("uc-20.3"))[UC 20.3]
- *Estensioni* : 
  - #link(label("uc-1"))[UC 1 - Autenticazione#super[G] (per rientrare)] 
- *Trigger*: 
  - Utente vuole uscire dal sistema.

=== - UC 4: Rilevamento carenza scorte#super[G]
#label("uc-4")
#image("assets/Casi d'uso-UC4.drawio.png")
- *Attore Principale* : Supervisore Locale, Supervisore Globale, Sistema
- *Precondizioni* : 
  - Il Sistema è attivo, in modalità online o offline.
  - Le Soglie minime per i prodotti#super[G] sono definite nel Sistema.
- *Postcondizioni* : 
  - I Supervisori sono notificati della carenza di scorte#super[G]. L’evento è tracciato.
- *Scenario principale* :
  - Il Sistema monitora le scorte#super[G] periodicamente.
  - Il Sistema verifica se qualche scorta#super[G] è inferiore alla soglia minima.
  - Il Sistema, se rileva una carenza, genera un evento e invia una notifica ai Supervisori.
  - I Supervisori accedono al sistema per visualizzare le carenze.
- *Scenari alternativi* :
  - La soglia minima non è definita → il Sistema salta il controllo per quel prodotto#super[G] e genera un avviso di configurazione mancante.
  - L’accesso dei Supervisori non è disponibile → il Sistema registra comunque l’evento e invia un’email/sms.
- *Inclusioni* :
  - #link(label("uc-4.1"))[UC 4.1]
  - #link(label("uc-4.2"))[UC 4.2]
- *Estensioni* :
  - #link(label("uc-4.3"))[UC 4.3]
  - #link(label("uc-4.4"))[UC 4.4]
  - #link(label("uc-13"))[UC 13]

==== - UC 4.1: Monitoraggio#super[G] continuo delle scorte#super[G]
#label("uc-4.1")
- *Attore Principale* : Sistema
- *Precondizioni* : 
  - Il Sistema è attivo, in modalità online o offline.
  - Il Database delle giacenze è disponibile.
- *Postcondizioni* : 
  - Il rilevamento aggiornato delle risorse è stato effettuato.
- *Scenario principale* :
  - Il Sistema interroga il database o riceve input aggiornati.
  - Il Sistema analizza i dati relativi alle giacenze.
  - Il Sistema passi i dati aggiornati al modulo di identificazione carenza → #link(label("uc-4.2"))[UC 4.2]
- *Scenari alternativi* :
  - Il database è temporaneamente non accessibile → il Sistema tenta nuovamente dopo un intervallo definito..
- *Estensioni* :
  - #link(label("uc-4.1.1"))[UC 4.1.1]
- *Trigger* :
  - Timer interno al sistema oppure evento schedulato.

===== - UC 4.1.1: Errore nel caricamento dei dati scorte#super[G]
#label("uc-4.1.1")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - Il Sistema tenta di accedere ai dati scorte#super[G].
  - Il database risponde con errore.
  - Il Sistema ritenta l’operazione. Se fallisce, notifica il fallimento.
- *Inclusioni* : 
  - #link(label("uc-4.1"))[UC 4.1]
- *Trigger* : 
  - Fallimento nel recupero dei dati.
#pagebreak()
==== - UC 4.2: Identificazione carenza scorte#super[G]
#label("uc-4.2")
- *Attore Principale* : Sistema
- *Precondizioni* : 
  - Il Sistema è attivo, in modalità online o offline.
  - Sono disponibili dati aggiornati sulle giacenze e soglie minime.
- *Postcondizioni* : 
  - Per ogni prodotto#super[G] sotto soglia, è presente un evento nel log#super[G] e una notifica inviata almeno a un supervisore disponibile.
- *Scenario principale* :
  - Il Sistema confronta la quantità disponibile con la soglia minima.
  - Se la quantità è sotto soglia, registra un evento di carenza.
  - Notifica i Supervisori e aggiorna il log#super[G] degli eventi.
- *Scenari alternativi* :
  - Il database è temporaneamente non accessibile → il Sistema tenta nuovamente dopo un intervallo definito.
- *Estensioni* : 
  - #link(label("uc-4.2.1"))[UC 4.2.1]
  - #link(label("uc-4.2.2"))[UC 4.2.2]
  - #link(label("uc-4.2.3"))[UC 4.2.3]
- *Trigger* : 
  - Invocazione da #link(label("uc-4.1"))[UC 4.1]
    
===== - UC 4.2.1: Gestione fallimento notifica supervisori
#label("uc-4.2.1")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - Invio notifica fallisce.
  - Il Sistema tenta canale alternativo.
  - Se tutti falliscono, registra un errore e allerta un amministratore#super[G].
- *Inclusioni* : 
  - #link(label("uc-4.2"))[UC 4.2]
- *Trigger* : 
  - Invio notifica fallito.    
===== - UC 4.2.2: Mancata definizione soglia minima
#label("uc-4.2.2")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - La soglia per un prodotto#super[G] è mancante.
  - Il prodotto#super[G] viene ignorato temporaneamente.
  - Il Sistema registra l’anomalia nei log#super[G].
- *Inclusioni* : 
  - #link(label("uc-4.2"))[UC 4.2]
#pagebreak()
===== - UC 4.2.3: Log#super[G] di sistema pieno o non scrivibile
#label("uc-4.2.3")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - Il Sistema tenta la scrittura del log#super[G].
  - L’operazione fallisce (ad esempio: spazio pieno).
  - Viene generata una notifica tecnica.
- *Inclusioni* : 
  - #link(label("uc-4.2"))[UC 4.2]
- *Trigger* : 
  - Fallimento nella scrittura del log#super[G].
==== - UC 4.3: Accesso ai dettagli della carenza non riuscito
#label("uc-4.3")
- *Attore Principale* : Supervisore Locale, Supervisore Globale.
- *Scenario principale* :
  - Il Supervisore tenta di visualizzare l’evento.
  - Il Sistema non riesce a caricare i dati.
  - Il Sistema mostra un messaggio di errore.
- *Inclusioni* : 
  - #link(label("uc-4.1"))[UC 4.1]
- *Trigger* : 
  - Tentativo di accesso ai dettagli.
==== - UC 4.4: Supervisore non disponibile
#label("uc-4.4")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - Il Sistema tenta di inviare la notifica.
  - L’account del supervisore non è disponibile.
  - Tenta di avvisare un supervisore alternativo.
- *Inclusioni* : 
  - #link(label("uc-4.1"))[UC 4.1]
- *Trigger* : 
  - Supervisore non raggiungibile/disponibile.
=== - UC 5: Trasferimento#super[G] di scorte#super[G] tra magazzini
#label("uc-5")
#image("assets/Casi d'uso-UC5.drawio.png")
- *Attore Principale* : Supervisore Locale, Supervisore Globale, Sistema
- *Precondizioni* :
  - Il Sistema è attivo, in modalità online o offline.
  - L’Utente è autenticato con i permessi necessari (Supervisore Locale o Globale).
  - Sono presenti almeno due magazzini registrati. Entrambi (origine e destinazione) sono attivi nel sistema.
- *Postcondizioni* :
  - L’inventario#super[G] globale viene aggiornato in entrambi i magazzini.
  - La richiesta viene registrata e tracciata nel Sistema.
- *Scenario Principale* :
  - Il Supervisore richiede un trasferimento#super[G] tra magazzini → #link(label("uc-5.1"))[UC 5.1]
  - Il sistema verifica la disponibilità delle scorte#super[G] nel magazzino di origine → #link(label("uc-5.2"))[UC 5.2]
  - Se la verifica è positiva, il sistema aggiorna l’inventario#super[G] di origine e destinazione → #link(label("uc-5.3"))[UC 5.3]
  - Il sistema genera un ID di tracciamento del trasferimento#super[G] → #link(label("uc-5.4"))[UC 5.4]
  - Lo stato del trasferimento#super[G] viene aggiornato in tempo reale fino al completamento → #link(label("uc-5.5"))[UC 5.5]
- *Scenario Alternativo* :
  - Le scorte#super[G] richieste non sono disponibili → il sistema blocca la richiesta e notifica l’errore.
  - Il tracciamento in tempo reale fallisce → il sistema registra aggiornamenti asincroni.
- *Inclusioni* :
  - #link(label("uc-5.1"))[UC 5.1]
  - #link(label("uc-5.2"))[UC 5.2]
  - #link(label("uc-5.3"))[UC 5.3]
  - #link(label("uc-5.4"))[UC 5.4]
  - #link(label("uc-5.5"))[UC 5.5]
- *Estensioni* :
  - #link(label("uc-5.6"))[UC 5.6]
  - #link(label("uc-5.7"))[UC 5.7]
  - #link(label("uc-5.8"))[UC 5.8]
- *Trigger* :
  - Il Supervisore avvia una richiesta di trasferimento#super[G].

==== - UC 5.1: Invio richiesta di trasferimento#super[G]
#label("uc-5.1")
- *Attore Principale* : Supervisore Locale, Supervisore Generale, Sistema
- *Precondizioni* :
  - Supervisore è autenticato.
  - I magazzini selezionati esistono nel sistema.
- *Postcondizioni* :
  - Una richiesta formale di trasferimento#super[G] è inviata al sistema.
- *Scenario Principale* :
  - Il supervisore seleziona magazzino di origine e destinazione.
  - Inserisce i prodotti#super[G] e le quantità da trasferire.
  - Invia la richiesta.
  - Il sistema la registra e passa alla fase di validazione#super[G].
==== - UC 5.2: Validazione#super[G] disponibilità scorte#super[G]
#label("uc-5.2")
- *Attore Principale* : Sistema
- *Precondizioni* :
  - È stata inviata una richiesta di trasferimento#super[G].
- *Postcondizioni* :
  - Le quantità richieste sono validate o rifiutate.
- *Scenario Principale* :
  - Il sistema recupera i dati dell’inventario#super[G] del magazzino di origine.
  - Confronta la quantità richiesta con quella disponibile.
  - Se la disponibilità è sufficiente, prosegue con il trasferimento#super[G].
- *Scenari Alternativi* :
  - Scorte#super[G] non sufficienti → il Sistema blocca la richiesta e notifica l’errore.
  - Il Supervisore può modificare la quantità o annullare l’operazione.
==== - UC 5.3: Aggiornamento inventario#super[G] di entrambi i magazzini
#label("uc-5.3")
- *Attore Principale* : Sistema
- *Precondizioni* :
  - La disponibilità delle scorte#super[G] è stata validata.
- *Postcondizioni* :
  - L’inventario#super[G] del magazzino di origine viene decrementato.
  - L’inventario#super[G] del magazzino di destinazione viene incrementato.
- *Scenario Principale* :
  - Il sistema decrementa le quantità dal magazzino di origine.
  - In parallelo o al completamento, incrementa le quantità nel magazzino di destinazione.
  - Registra l’operazione.
#pagebreak()
==== - UC 5.4: Tracciamento del trasferimento#super[G] dei prodotti#super[G]
#label("uc-5.4")
- *Attore Principale* : Sistema
- *Precondizioni* :
  - La disponibilità delle scorte#super[G] è stata validata.
- *Postcondizioni* :
  - L’inventario#super[G] del magazzino di origine viene decrementato.
  - L’inventario#super[G] del magazzino di destinazione viene incrementato.
- *Scenario Principale* :
  - Il sistema decrementa le quantità dal magazzino di origine
  - In parallelo o al completamento, incrementa le quantità nel magazzino di destinazione.
  - Registra l’operazione.
- *Estensioni* :
  - #link(label("uc-5.8"))[UC 5.8]
==== - UC 5.5: Aggiornamento stato del trasferimento#super[G]
#label("uc-5.5")
- *Attore Principale* : Sistema, Supervisore
- *Precondizioni* :
  - Il trasferimento#super[G] è in corso.
- *Postcondizioni* :
  - Lo stato viene aggiornato fino a “Completato” o “Fallito”.
- *Scenario Principale* :
  - Il sistema aggiorna lo stato mano a mano che il processo avanza (es. preparazione, transito, consegnato…).
  - Eventuali anomalie vengono registrate e notificate.
  - Al completamento, lo stato è impostato su “Completato”.
- *Estensioni* :
  - #link(label("uc-5.7"))[UC 5.7]
==== - UC 5.6: Annullamento richiesta di trasferimento#super[G]
#label("uc-5.6")
- *Attore Principale* : Supervisore Globale, Supervisore Locale.
- *Precondizioni* :
  - Esiste una richiesta di trasferimento#super[G] non ancora completata (in corso).
- *Postcondizioni* :
  - Il trasferimento#super[G] viene annullato e lo stato aggiornato a “Annullato”.
  - Non viene eseguita alcuna modifica agli inventari#super[G] (se non già applicata).
- *Scenario Principale* :
  - Il supervisore seleziona un trasferimento#super[G] in stato "In attesa" o "In transito".
  - Il supervisore "Annulla".
  - Il sistema conferma l’intenzione.
  - Il sistema aggiorna lo stato a “Annullato”.
  - Eventuali risorse prenotate (es. veicoli, operatori) vengono liberate.
#pagebreak()
==== - UC 5.7: Notifica automatica esito trasferimento#super[G]
#label("uc-5.7")
- *Attore Principale* : Sistema, Supervisore Globale, Supervisore Locale
- *Precondizioni* :
  - Il trasferimento#super[G] ha cambiato stato (es. da “In transito” a “Consegnato”).
- *Postcondizioni* :
  - L’utente supervisore riceve una notifica con lo stato aggiornato.
- *Scenario Principale* :
  - Il sistema monitora il cambiamento dello stato
  - Quando il trasferimento#super[G] passa a “Consegnato” o “Fallito”, il sistema invia una notifica.
  - Il supervisore riceve una notifica o un alert#super[G] in dashboard#super[G].
- *Trigger* :
  - Il sistema rileva una modifica di stato rilevante.
==== - UC 5.8: Registrazione storico trasferimenti#super[G]
#label("uc-5.8")
- *Attore Principale* : Sistema
- *Precondizioni* :
  - Il trasferimento#super[G] è stato registrato e ha un ID.
- *Postcondizioni* :
  - I dati vengono salvati in archivio storico che può essere consultato.
- *Scenario Principale* :
  - Al termine del trasferimento#super[G], il sistema raccoglie tutti i dati associati.
  - Salva il record in un archivio storico.
  - Il record è consultabile da reportistica o cruscotti.
- *Trigger* :
  - Completamento del trasferimento#super[G].
#pagebreak()
=== - UC 6: Gestione scorte#super[G] minime necessarie
#label("uc-6")
#image("assets/Casi d'uso-UC6.drawio.png")
- *Attori Principali* : Sistema, Supervisore Locale, Supervisore. Globale
- *Precondizioni* :
  - Il Sistema è attivo e in esecuzione periodica o su richiesta.
  - L’utente ha accesso al sistema come supervisore.
  - L’inventario#super[G] dei prodotti#super[G] è già stato inizializzato.
- *Postcondizioni* :
  - Le scorte#super[G] minime sono definite, calcolate e viene attivato un monitoraggio#super[G] costante.
- *Scenario principale* :
  - Il supervisore accede al sistema.
  - Definisce manualmente i livelli minimi per ciascun prodotto#super[G] → #link(label("uc-6.1"))[UC 6.1]
  - Il sistema calcola dinamicamente i livelli minimi suggeriti → #link(label("uc-6.2"))[UC 6.2]
  - Il sistema monitora in tempo reale le scorte#super[G] rispetto al minimo → #link(label("uc-6.3"))[UC 6.3]
  - Se necessario, vengono suggerite o attivate azioni correttive → #link(label("uc-6.4"))[UC 6.4], #link(label("uc-6.5"))[UC 6.5]
- *Scenari alternativi* :
  - Mancanza dati minimi configurati per alcuni prodotti#super[G].
  - Il Sistema notifica l’anomalia al Supervisore Globale.
- *Inclusioni* :
  - #link(label("uc-6.1"))[UC 6.1]
  - #link(label("uc-6.2"))[UC 6.2]
  - #link(label("uc-6.3"))[UC 6.3]
  - #link(label("uc-7"))[UC 7]
- *Estensioni* :
  - #link(label("uc-6.4"))[UC 6.4]
  - #link(label("uc-6.5"))[UC 6.5]
- *Trigger* :
  - Ciclo schedulato automatico.
  - Richiesta esplicita da parte del Supervisore.
  - Inizializzazione o modifica delle soglie.
  - Cambiamenti nell’inventario#super[G] (arrivi, trasferimenti#super[G], ordini#super[G], …).

==== - UC 6.1: Definizione manuale del livello minimo di scorte#super[G]
#label("uc-6.1")
- *Attori Principali* : Supervisore Locale, Supervisore Globale.
- *Precondizioni* :
  - Il prodotto#super[G] è registrato nel sistema.
  - L’utente ha i permessi per la modifica.
- *Postcondizioni* :
  - Il livello minimo viene salvato nel sistema.
- *Scenario principale* :
  - Il supervisore seleziona un prodotto#super[G].
  - Inserisce la soglia minima desiderata.
  - Il sistema salva il valore nel database.
- *Scenari alternativi* :
  - Il supervisore inserisce una soglia non valida.
  - Il sistema mostra un errore a schermo.
==== - UC 6.2: Calcolo automatico del livello minimo di scorte#super[G]
#label("uc-6.2")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - Sono disponibili dati storici di consumo per il prodotto#super[G].
- *Postcondizioni* :
  - Viene calcolata una soglia minima suggerita (basata su media o modelli previsionali).
- *Scenario principale* :
  - Il sistema analizza i dati di vendita e consumo.
  - Applica una formula (es. media giornaliera…).
  - Salva il livello suggerito.
- *Scenari alternativi* :
  - Mancanza di dati.
  - Viene proposta una soglia di default.
==== - UC 6.3: Monitoraggio#super[G] scorte#super[G] minime
#label("uc-6.3")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - I livelli minimi sono definiti o calcolati.
  - L’inventario#super[G] è aggiornato.
- *Postcondizioni* :
  - Il sistema rileva eventuali scorte#super[G] sotto la soglia e può generare estensioni.
- *Scenario principale* :
  - Il sistema confronta costantemente scorte#super[G] attuali e soglie minime.
  - Quando rileva un prodotto#super[G] sotto soglia → #link(label("uc-6.4"))[UC 6.4], #link(label("uc-6.5"))[UC 6.5]
- *Estensioni* :
  - #link(label("uc-6.4"))[UC 6.4]
  - #link(label("uc-6.5"))[UC 6.5]
#pagebreak()
==== - UC 6.4: Suggerimento azioni di riassortimento#super[G]
#label("uc-6.4")
- *Attori Principali* : Sistema, Supervisore Locale, Supervisore. Globale
- *Precondizioni* :
  - Il sistema ha rilevato scorte#super[G] inferiori alla soglia minima.
- *Postcondizioni* :
  - Il sistema propone un riassortimento#super[G] (da fornitore o trasferimento#super[G] interno).
- *Scenario principale* :
  - Il sistema identifica un prodotto#super[G] sotto soglia.
  - Propone:
    - Riassortimento#super[G] da fornitore.
    - Trasferimento#super[G] da altro magazzino.
  - Il supervisore approva o modifica il suggerimento.
==== - UC 6.5: Notifica superamento soglia critica
#label("uc-6.5")
- *Attori Principali* : Sistema, Supervisore Locale, Supervisore. Globale
- *Precondizioni* :
  - Le scorte#super[G] di un prodotto#super[G] sono scese sotto un livello critico predefinito (ancora più basso della soglia minima).
- *Postcondizioni* :
  - L’utente riceve una notifica urgente.
- *Scenario principale* :
  - Il sistema rileva che il livello critico è stato superato.
  - Invia una notifica urgente al supervisore.
  - Può forzare la priorità del riassortimento#super[G].
#pagebreak()
=== - UC 7: Bilanciamento scorte#super[G] tra magazzini
#label("uc-7")
#image("assets/Casi d'uso-UC7.drawio.png")
- *Attori Principali* : Sistema, Supervisore Globale.
- *Precondizioni* :
  - Il Sistema dispone di dati aggiornati sui livelli di sicurezza delle scorte#super[G].
  - Sono definiti i criteri di bilanciamento.
- *Postcondizioni* :
  - Il sistema ha valutato la distribuzione delle scorte#super[G].
  - Sono state proposte o avviati i trasferimenti#super[G] o altre azioni correttive.
- *Scenario principale* :
  - Il Sistema analizza la distribuzione delle scorte#super[G] → #link(label("uc-7.1"))[UC 7.1]
  - Identifica eventuali squilibri → #link(label("uc-7.2"))[UC 7.2]
  - Effettua trasferimenti#super[G] → #link(label("uc-7.3"))[UC 7.3]
  - Valuta se automatizzare il riassortimento#super[G] → #link(label("uc-7.4"))[UC 7.4]
  - Verifica che i livelli minimi di sicurezza siano rispettati → #link(label("uc-4"))[UC 4]
- *Scenari alternativi* :
  - Le proposte di trasferimento#super[G] violano i livelli minimi → scartate.
  - Il Supervisore richiede intervento manuale → sistema non automatizza.
- *Inclusioni* :
  - #link(label("uc-7.1"))[UC 7.1]
  - #link(label("uc-7.2"))[UC 7.2]
  - #link(label("uc-7.3"))[UC 7.3]
  - #link(label("uc-7.4"))[UC 7.4]
  - #link(label("uc-4"))[UC 4]
- *Estensioni* :
  - #link(label("uc-7.5"))[UC 7.5]
  - #link(label("uc-7.6"))[UC 7.6]
- *Trigger* :
  - Attivazione programmata.
  - Supervisore Globale fa richiesta esplicita.
#pagebreak()
==== - UC 7.1: Analisi distribuzione delle scorte#super[G]
#label("uc-7.1")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - I dati di inventario#super[G] sono disponibili e aggiornati.
- *Postcondizioni* :
  - Il sistema ha ottenuto una mappa o lista della distribuzione per prodotto#super[G].
- *Scenario principale* :
  - Il Sistema raccoglie dati da tutti i magazzini.
  - Analizza le quantità e il fabbisogno previsto.
  - Elabora un report con la situazione attuale.
- *Trigger* :
  - Inizio processo di bilanciamento
==== - UC 7.2: Identificazione squilibri tra magazzini
#label("uc-7.2")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - è disponibile il risultato dell’analisi → #link(label("uc-7.1"))[UC 7.1]
- *Postcondizioni* :
  - Viene individuata una lista di squilibri significativi.
- *Scenario principale* :
  - Il Sistema confronta i livelli di stock tra magazzini.
  - Applica regole predefinite per identificare squilibri.
  - Memorizza gli esiti per successive valutazioni.
==== - UC 7.3: Effettuazione di trasferimenti#super[G] per bilanciare
#label("uc-7.3")
- *Attori Principali* : Sistema, Supervisore Locale.
- *Precondizioni* :
  - è necessario spostare scorte#super[G] tra magazzini per bilanciare.
- *Postcondizioni* :
  - Il sistema ha generato o richiesto l’esecuzione di un trasferimento#super[G] interno.
- *Scenario principale* :
  - Il Sistema genera una richiesta di trasferimento#super[G].
  - Invia la richiesta ai Supervisori coinvolti.
  - Il trasferimento#super[G] viene pianificato e tracciato.
==== - UC 7.4: Automatizzazione del riassortimento#super[G]
#label("uc-7.4")
- *Attori Principali* : Sistema, Supervisore Globale.
- *Precondizioni* :
  - Il Supervisore ha autorizzato l’automazione oppure è prevista da policy.
- *Postcondizioni* :
  - Il riassortimento#super[G] è stato avviato automaticamente.
- *Scenario principale* :
  - Il Sistema verifica i criteri per l’automazione.
  - Se i criteri sono rispettati, genera l’ordine di riassortimento#super[G].
  - Aggiorna lo stato operativo.
- *Scenari alternativi* :
  - Non tutti i criteri sono soddisfatti → Il Sistema richiede approvazione manuale.
==== - UC 7.5: Notifica proposta di bilanciamento
#label("uc-7.5")
- *Attori Principali* : Sistema, Supervisore Globale.
- *Precondizioni* :
  - Una proposta è stata generata.
- *Postcondizioni* :
  - Il Supervisore riceve notifica e può approvare o rifiutare.
- *Scenario principale* :
  - Il Sistema crea il dettaglio della proposta.
  - Invia notifica al Supervisore Globale.
  - Attende conferma o rifiuto.
- *Inclusioni* :
  - #link(label("uc-7.3"))[UC 7.3]
==== - UC 7.6: Fallimento trasferimento#super[G] interno
#label("uc-7.6")
- *Attori Principali* : Sistema, Supervisore Locale.
- *Precondizioni* :
  - Un trasferimento#super[G] interno è stato programmato.
- *Postcondizioni* :
  - Il sistema registra il fallimento e notifica il Supervisore.
- *Scenario principale* :
  - Il trasferimento#super[G] non avviene per motivi tecnici o logistici.
  - Il sistema rileva il problema.
  - Registra l’errore e invia una notifica al Supervisore Locale.
- *Inclusioni* :
  - #link(label("uc-4"))[UC 4]
#pagebreak()
=== - UC 8: Gestione suggerimenti per riassortimento#super[G] e trasferimento#super[G]
#label("uc-8")
#image("assets/Casi d'uso-UC8 .drawio.png")
- *Attori Principali* : Sistema, Supervisore Locale, Supervisore. Globale
- *Precondizioni* :
  - Il sistema ha dati aggiornati sulle scorte#super[G] e sui livelli minimi.
  - Il supervisore è autenticato.
- *Postcondizioni* :
  - Le raccomandazioni sono state analizzate, approvate o rifiutate.
- *Scenario principale* :
  - Il sistema rileva condizioni che richiedono un riassortimento#super[G] o trasferimento#super[G] (es. soglia minima superata).
  - Il sistema genera raccomandazioni per azioni correttive → #link(label("uc-8.1"))[UC 8.1]
  - Il supervisore visualizza i suggerimenti
  - Le azioni vengono avviate → #link(label("uc-8.2"))[UC 8.2]
- *Inclusioni* :
  - #link(label("uc-8.1"))[UC 8.1]
- *Estensioni* :
  - #link(label("uc-8.2"))[UC 8.2]
- *Trigger* :
  - Superamento soglia minima o squilibrio tra magazzini.
#pagebreak()
==== - UC 8.1: Generazione suggerimenti automatici
#label("uc-8.1")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - I dati sulle scorte#super[G] e soglie minime sono aggiornati.
- *Postcondizioni* :
  - Il sistema propone azioni di riassortimento#super[G] o trasferimento#super[G].
- *Scenario principale* :
  - Il sistema rileva prodotti#super[G] con scorte#super[G] sotto la soglia.
  - Verifica magazzini alternativi o fornitori.
  - Genera un suggerimento di trasferimento#super[G] o riassortimento#super[G].
  - Salva la proposta per approvazione.
- *Scenari alternativi* :
  - Nessuna azione consigliabile → Il sistema non genera suggerimenti.
==== - UC 8.2: Esecuzione delle azioni
#label("uc-8.2")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - Il sistema ha individuato una proposta di riassortimento#super[G] o trasferimento#super[G].
- *Postcondizioni* :
  - Il sistema avvia automaticamente l’azione (es. invia ordine#super[G] o richiesta di trasferimento#super[G]).
- *Scenario principale* :
  - Il sistema ha individuato una proposta di riassortimento#super[G] o trasferimento#super[G].
  - In caso di trasferimento#super[G] → genera richiesta tra magazzini.
  - In caso di riassortimento#super[G] → invia ordine#super[G] al fornitore.
  - Aggiorna lo stato del suggerimento come “In esecuzione”.
#pagebreak()
=== - UC 9: Individuazione di magazzini offline
#label("uc-9")
#image("assets/Casi d'uso-UC9.drawio.png")
- *Attori Principali*: Sistema, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema è operativo e tutti i magazzini sono registrati.
  - Le connessioni sono attive o monitorabili.
- *Postcondizioni*:
  - Lo stato di connettività#super[G] di ciascun magazzino è aggiornato.
  - Eventuali disconnessioni sono rilevate e notificate.
- *Scenario principale*:
  - Il sistema esegue periodicamente controlli di connettività#super[G] → #link(label("uc-9.1"))[UC 9.1]
  - In caso di disconnessione, il sistema genera una segnalazione → #link(label("uc-9.2"))[UC 9.2]
  - Lo stato di un magazzino viene aggiornato come offline, online, non operativo, operativo → #link(label("uc-9.3"))[UC 9.3]
  - Se un magazzino torna online, lo stato viene aggiornato e le operazioni riprendono normalmente.
  - Se la disconnessione ha bloccato suggerimenti di riassortimento#super[G], viene eventualmente attivato nuovamente il flusso → #link(label("uc-8"))[UC 8]
- *Inclusioni*:
  - #link(label("uc-9.1"))[UC 9.1]
  - #link(label("uc-9.3"))[UC 9.3]
- *Estensioni*:
  - #link(label("uc-9.2"))[UC 9.2]
  - #link(label("uc-8"))[UC 8] (attivato quando magazzino torna operativo).
- *Trigger*:
  - Pianificazione temporizzata del controllo.
  - Cambiamento improvviso dello stato di rete.
  - Rientro online di un nodo#super[G]/magazzino.
#pagebreak()
==== - UC 9.1: Controllo periodico della connettività#super[G]
#label("uc-9.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - I magazzini sono registrati nel sistema.
  - La rete è parzialmente o totalmente attiva.
- *Postcondizioni*:
  - Lo stato di connessione viene aggiornato (o viene attivata un'estensione).
- *Scenario principale*:
  - Il sistema effettua un ping o heartbeat a ogni magazzino.
  - Attende la risposta per un periodo massimo definito.
  - Se la risposta non arriva → attiva #link(label("uc-9.2"))[UC 9.2]
  - Se la risposta è positiva → stato “online”.
- *Estensioni*:
  - #link(label("uc-9.2"))[UC 9.2]
  - #link(label("uc-11"))[UC 11]
==== - UC 9.2: Generazione notifica di disconnessione
#label("uc-9.2")
- *Attori Principali*: Sistema, Supervisore Locale / Globale.
- *Precondizioni*:
  - Un magazzino non ha risposto alla verifica#super[G] di connettività#super[G].
- *Postcondizioni*:
  - Il sistema invia una notifica dell’anomalia.
  - Lo stato del magazzino è aggiornato a “offline”.
- *Scenario principale*:
  - Il sistema rileva che il magazzino non risponde.
  - Crea una notifica di disconnessione.
  - Invia la notifica ai supervisori abilitati.
  - Aggiorna lo stato del magazzino in “offline”.
==== - UC 9.3: Aggiornamento stato del magazzino
#label("uc-9.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema ha eseguito un controllo o ha ricevuto un evento dallo stato operativo del nodo#super[G].
- *Postcondizioni*:
  - Lo stato del magazzino viene aggiornato e reso visibile ai supervisori.
- *Scenario principale*:
  - Il sistema rileva o riceve una variazione di stato (manuale o automatica).
  - Classifica il magazzino come:
    - Online: connesso e funzionante.
    - Offline: disservizio di rete = non connesso.
    - Operativo: abilitato a svolgere tutte le funzioni.
    - Non operativo: disservizio fisico (es. da manutenzione o guasti).
  - Mostra lo stato aggiornato nell’interfaccia supervisori.
- *Estensioni*:
  - #link(label("uc-8"))[UC 8] → se magazzino torna online.
=== - UC 10: Gestione dei disservizi
#label("uc-10")
#image("assets/Casi d'uso-UC10.drawio.png")
- *Attori Principali*: Sistema, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema è attivo.
  - I magazzini sono registrati.
  - È abilitato il monitoraggio#super[G] continuo.
- *Postcondizioni*:
  - Il disservizio viene classificato (offline o non operativo).
  - Lo stato del magazzino viene aggiornato.
  - Se necessario, viene attivato un trasferimento#super[G] di scorte#super[G] a magazzini vicini.
- *Scenario principale*:
  - Il sistema monitora costantemente i magazzini → #link(label("uc-10.1"))[UC 10.1]
  - Un magazzino risulta non raggiungibile o guasto
  - Il sistema classifica il disservizio:
    - Se di rete → #link(label("uc-10.3"))[UC 10.3]
    - Se fisico → #link(label("uc-10.2"))[UC 10.2]
  - Se un magazzino offline diventa non operativo → #link(label("uc-10.4"))[UC 10.4]
  - Se il magazzino è non operativo, il sistema attiva il trasferimento#super[G] di scorte#super[G] → #link(label("uc-10.5"))[UC 10.5]
  - Supervisori sono informati via notifica.
- *Inclusioni*:
  - #link(label("uc-10.1"))[UC 10.1]
- *Estensioni*:
  - #link(label("uc-10.2"))[UC 10.2]
  - #link(label("uc-10.3"))[UC 10.3]
  - #link(label("uc-10.4"))[UC 10.4]
  - #link(label("uc-10.5"))[UC 10.5]
- *Trigger*:
  - Eventi di guasto, disconnessione, o cambio di stato.
==== - UC 10.1: Monitoraggio#super[G] stato operativo
#label("uc-10.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema è attivo.
  - I magazzini inviano segnali periodici.
- *Postcondizioni*:
  - Stato aggiornato come operativo/non operativo/offline.
- *Scenario principale*:
  - Il sistema verifica#super[G] connettività#super[G] e integrità#super[G] dei nodi#super[G].
  - Se fallisce uno dei due controlli → attiva estensione #link(label("uc-10.2"))[UC 10.2] o #link(label("uc-10.3"))[UC 10.3]
- *Estensioni*:
  - #link(label("uc-10.2"))[UC 10.2]
  - #link(label("uc-10.3"))[UC 10.3]

==== - UC 10.2: Rilevamento disservizio fisico
#label("uc-10.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Ricevuti segnali di guasto hardware o software critico.
- *Postcondizioni*:
  - Stato magazzino impostato a non operativo.
  - Supervisori informati.
- *Scenario principale*:
  - Il sistema riceve un errore hardware o di servizio locale.
  - Aggiorna lo stato del magazzino in non operativo.
  - Notifica il disservizio.
==== - UC 10.3: Rilevamento disservizio di rete
#label("uc-10.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Magazzino non risponde ai ping o segnali di rete.
- *Postcondizioni*:
  - Stato aggiornato a offline.
- *Scenario principale*:
  - Il sistema rileva assenza di connessione.
  - Imposta lo stato a offline.
  - Avvia monitoraggio#super[G] continuato.
#pagebreak()
==== - UC 10.4: Transizione da offline a non operativo
#label("uc-10.4")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Un magazzino è già offline.
  - Si rileva successivamente un errore hardware.
- *Postcondizioni*:
  - Stato aggiornato a non operativo.
- *Scenario principale*:
  - Magazzino è offline → #link(label("uc-10.3"))[UC 10.3]
  - Viene rilevato un guasto hardware in parallelo.
  - Il sistema aggiorna lo stato a non operativo.
  - Attiva trasferimento#super[G] scorte#super[G] → #link(label("uc-10.5"))[UC 10.5]
- *Inclusioni*:
  - #link(label("uc-10.3"))[UC 10.3]
- *Estensioni*:
  - #link(label("uc-10.5"))[UC 10.5]
==== - UC 10.5: Attivazione trasferimento#super[G] emergenziale
#label("uc-10.5")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Un magazzino è non operativo.
  - Altri magazzini hanno disponibilità di scorte#super[G].
- *Postcondizioni*:
  - Le scorte#super[G] sono riposizionate presso i magazzini vicini.
- *Scenario principale*:
  - Il sistema valuta le scorte#super[G] nei magazzini circostanti.
  - Determina quantità e priorità dei prodotti#super[G] da trasferire.
  - Attiva un flusso di trasferimento#super[G] automatizzato → #link(label("uc-5"))[UC 5]
  - Aggiorna lo stato e l’inventario#super[G] di origine/destinazione.
- *Estensioni*:
  - #link(label("uc-5"))[UC 5]
=== - UC 11: Gestione magazzino che torna online
#label("uc-11")
#image("assets/Casi d'uso-UC11.drawio.png")
- *Attori Principali*: Sistema, Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il magazzino è stato precedentemente segnalato come offline.
  - Il sistema è attivo e in ascolto di segnali di ritorno online.
- *Postcondizioni*:
  - Il magazzino è marcato come online e operativo.
  - I dati locali sono sincronizzati con il sistema centrale.
  - Eventuali conflitti di dati sono gestiti.
- *Scenario principale*:
  - Il sistema rileva che il magazzino è tornato online → #link(label("uc-11.1"))[UC 11.1]
  - Avvia la sincronizzazione dei dati → #link(label("uc-11.2"))[UC 11.2]
  - Verifica#super[G] eventuali conflitti tra dati locali e cloud → #link(label("uc-11.3"))[UC 11.3]
  - Aggiorna lo stato del magazzino a "operativo".
  - Notifica ai supervisori.
- *Inclusioni*:
  - #link(label("uc-11.1"))[UC 11.1]
  - #link(label("uc-11.2"))[UC 11.2]
- *Estensioni*:
  - #link(label("uc-11.3"))[UC 11.3]
  - #link(label("uc-9.2"))[UC 9.2]
  - #link(label("uc-14.3"))[UC 14.3]
- *Trigger*:
  - Il sistema riceve un segnale dal magazzino.
==== - UC 11.1: Rilevamento ritorno online
#label("uc-11.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il magazzino era offline.
  - Il sistema monitora attivamente la rete.
- *Postcondizioni*:
  - Il sistema identifica il ritorno online del magazzino.
  - Stato aggiornato a "online".
- *Scenario principale*:
  - Il sistema riceve un segnale.
  - Valida che la comunicazione è stabile.
  - Aggiorna lo stato del magazzino.
==== - UC 11.2: Sincronizzazione dati inventario#super[G]
#label("uc-11.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il magazzino è tornato online.
  - Sono disponibili dati locali modificati.
- *Postcondizioni*:
  - I dati di inventario#super[G] sono sincronizzati tra magazzino e cloud.
  - Conflitti (se presenti) sono rilevati → gestiti in #link(label("uc-11.3"))[UC 11.3]
- *Scenario principale*:
  - Il sistema accede ai dati locali di inventario#super[G].
  - Confronta con il cloud.
  - Sincronizza i dati coerenti.
  - Se ci sono conflitti → invoca #link(label("uc-11.3"))[UC 11.3]
- *Estensioni*:
  - #link(label("uc-11.3"))[UC 11.3]
  - #link(label("uc-14.3"))[UC 14.3]
==== - UC 11.3: Risoluzione conflitti di dati
#label("uc-11.3")
- *Attori Principali*: Sistema, eventualmente Supervisore Locale.
- *Precondizioni*:
  - Sono stati rilevati conflitti nei dati durante la sincronizzazione.
- *Postcondizioni*:
  - I dati sono risolti secondo politiche predefinite o approvazione supervisore.
  - Il magazzino ha inventario#super[G] aggiornato e coerente.
- *Scenario principale*:
  - Il sistema analizza la natura dei conflitti (es. scorte#super[G]diverse, timestamp).
  - Applica una strategia:
    - priorità temporale.
    - priorità cloud.
    - intervento supervisore.
  - Aggiorna l’inventario#super[G] finale.
  - Registra conflitto e risoluzione nel log#super[G].
- *Scenario alternativo*:
  - Il sistema non riesce a risolvere automaticamente.
  - Convalida manuale dati da parte del supervisore.
=== - UC 12: Monitoraggio#super[G] centralizzato delle scorte#super[G]
#label("uc-12")
#image("assets/Casi d'uso-UC12.drawio.png")
- *Attori Principali*: Sistema, Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - Il sistema è online.
  - I microservizi#super[G] di inventario#super[G] dei magazzini sono sincronizzati. con il cloud
- *Postcondizioni*:
  - Il supervisore visualizza in tempo reale le scorte#super[G] di tutti i magazzini.
- *Scenario principale*:
  - Il Supervisore accede al sistema.
  - Il Sistema interroga il microservizio#super[G] cloud per i dati aggregati delle scorte#super[G].
  - Il Sistema mostra la dashboard#super[G] con i livelli di inventario#super[G] per ciascun magazzino.
  - Il Supervisore analizza la situazione e può intervenire con azioni gestionali (es. riassortimento#super[G], trasferimento#super[G]).
- *Scenari alternativi*:
  - Il sistema segnala l’indisponibilità temporanea dei dati per un magazzino offline → #link(label("uc-9"))[UC 9]
- *Inclusioni*:
  - #link(label("uc-12.1"))[UC 12.1]
  - #link(label("uc-12.2"))[UC 12.2]
- *Estensioni*:
  - #link(label("uc-9.1"))[UC 9.1]
  - #link(label("uc-9.3"))[UC 9.3]
  - #link(label("uc-11"))[UC 11]
- *Trigger*:
  - Il supervisore accede alla dashboard#super[G] di monitoraggio#super[G] centralizzato.
#pagebreak()
==== - UC 12.1: Visualizzazione dashboard#super[G] scorte#super[G] distribuite
#label("uc-12.1")
- *Attori Principali*: Supervisore Globale, Supervisore Locale.
- *Precondizioni*:
  - L’utente è autenticato con ruolo autorizzato.
- *Postcondizioni*:
  - La dashboard#super[G] è aggiornata e visibile.
- *Scenario principale*:
  - L’utente accede alla sezione “Monitoraggio#super[G] Scorte#super[G]”.
  - Il sistema presenta una dashboard#super[G] con livelli per ogni magazzino.
  - L’utente può filtrare, ordinare e consultare i dati.

==== - UC 12.2: Interrogazione microservizio#super[G] cloud inventario#super[G]
#label("uc-12.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - I microservizi#super[G] locali sono sincronizzati con il microservizio#super[G] cloud.
- *Postcondizioni*:
  - I dati aggiornati delle scorte#super[G] sono ottenuti.
- *Scenario principale*:
  - Il sistema invia una richiesta al database del microservizio#super[G] cloud.
  - Riceve i dati aggiornati delle scorte#super[G] per tutti i magazzini.
  - Aggiorna la dashboard#super[G] centralizzata.

==== - UC 12.3: Notifica automatica in caso di soglia critica raggiunta
#label("uc-12.3")
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - I livelli minimi di scorta#super[G] sono stati definiti (vedi UC 6.1).
  - La dashboard#super[G] è attiva (UC 12.1) e il sistema ha accesso ai dati aggiornati (UC 12.2).
- *Postcondizioni*:
  - Il supervisore riceve una notifica in tempo reale relativa al magazzino e al prodotto#super[G] che ha superato la soglia critica.
- *Scenario principale*:
  - Il sistema monitora in background i dati di scorta#super[G] provenienti dal microservizio#super[G] cloud.
  - Rileva che per un determinato prodotto#super[G] in un magazzino la quantità è scesa sotto la soglia critica.
  - Il sistema genera una notifica contenente:
    - Nome del prodotto#super[G].
    - Quantità residua.
    - Magazzino interessato.
    - Data e ora del rilevamento.
  - La notifica viene mostrata in tempo reale nella dashboard#super[G] del supervisore (oppure invio SMS/Email).
- *Inclusioni*:
  - #link(label("uc-6.1"))[UC 6.1]
  - #link(label("uc-12.2"))[UC 12.2]
- *Estensioni*:
  - #link(label("uc-12"))[UC 12]
- *Trigger*:
  - Il sistema rileva che la scorta#super[G] attuale di un prodotto#super[G] è pari o inferiore alla soglia minima definita.
=== - UC 13: Mantenimento livelli di sicurezza scorte#super[G]
#label("uc-13")
#image("assets/Casi d'uso-UC13.drawio.png")
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Esistono richieste di riassortimento#super[G] o trasferimento#super[G] in sospeso.
  - I livelli di sicurezza delle scorte#super[G] sono stati definiti → #link(label("uc-6.1"))[UC 6.1]
  - Le soglie temporali di attesa sono state definite → #link(label("uc-13.1"))[UC 13.1]
- *Postcondizioni*:
  - Il sistema rileva il superamento della soglia temporale massima e avvia azioni correttive → #link(label("uc-13.2"))[UC 13.2]
- *Scenario principale*:
  - Il sistema monitora costantemente le scorte#super[G] in ciascun magazzino → #link(label("uc-4"))[UC 4]
  - Se rileva che le scorte#super[G] sono inferiori alla soglia minima:
    - Verifica se sono già in arrivo ordini#super[G] o trasferimenti#super[G].
    - Se un’azione di riassortimento#super[G] è già pianificata, il sistema:
      - Controlla se il tempo stimato di arrivo supera la soglia definita → #link(label("uc-13.1"))[UC 13.1]
      - Se la soglia è superata:
        - Il sistema attiva azioni correttive (es. invio nuovo ordine#super[G], richiesta trasferimento#super[G] interno) → #link(label("uc-13.2"))[UC 13.2]
- *Scenari alternativi*:
  - Tempo stimato viene aggiornato da un supervisore:
    - Il sistema rivaluta la soglia in base al nuovo tempo.
  - Il magazzino è non operativo:
    - Attiva trasferimento#super[G] emergenziale verso magazzini vicini → #link(label("uc-10.5"))[UC 10.5]
- *Inclusioni*:
  - #link(label("uc-4"))[UC 4]
  - #link(label("uc-6.1"))[UC 6.1]
  - #link(label("uc-13.1"))[UC 13.1]
- *Estensioni*:
  - #link(label("uc-13.2"))[UC 13.2]
  - #link(label("uc-10.5"))[UC 10.5]
- *Trigger*:
  - Tempo trascorso da una richiesta supera la soglia massima.
==== - UC 13.1: Definizione soglia temporale massima
#label("uc-13.1")
- *Attori Principali*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Accesso al sistema e ai parametri configurabili.
- *Postcondizioni*:
  - Ogni categoria di richiesta ha una soglia temporale definita.
- *Scenario principale*:
  - Il supervisore accede alla sezione di configurazione.
  - Seleziona una categoria di richiesta (riassortimento#super[G] o trasferimento#super[G]).
  - Imposta il valore di soglia in ore/giorni.
  - Conferma la modifica e il sistema salva il valore.
- *Scenari alternativi*:
  - Valore non valido:
    - Il sistema notifica l’errore e richiede correzione.
==== - UC 13.2: Attivazione azioni correttive
#label("uc-13.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Una richiesta attiva ha superato la soglia massima → rilevato da #link(label("uc-13"))[UC 13]
- *Postcondizioni*:
  - Il sistema invia una nuova richiesta o avvia un trasferimento#super[G] alternativo.
- *Scenario principale*:
  - Il sistema identifica la richiesta che ha superato la soglia.
  - Verifica la disponibilità di altri magazzini per soddisfare la richiesta.
  - Genera una nuova richiesta di trasferimento#super[G] o approvvigionamento#super[G].
  - Notifica il supervisore dell’intervento.
- *Scenari alternativi*:
  - Nessun magazzino disponibile:
    - Il sistema invia una notifica di allerta al supervisore.
  - Magazzino non operativo → estende #link(label("uc-10.5"))[UC 10.5]
- *Inclusioni*:
  - #link(label("uc-5"))[UC 5]
  - #link(label("uc-8.1"))[UC 8.1]
=== - UC 14: Gestione delle prestazioni sotto carico
#label("uc-14")
#image("assets/Casi d'uso-UC14.drawio.png", width:75%)
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema è operativo e riceve richieste da più magazzini/dispositivi.
- *Postcondizioni*:
  - Le richieste sono gestite efficientemente; il sistema mantiene performance accettabili.
- *Scenario principale*:
  - Il sistema rileva un aumento nel carico di lavoro.
  - Viene attivato il bilanciamento del carico tra i servizi#super[G] → #link(label("uc-14.1"))[UC 14.1]
  - Il sistema monitora in tempo reale l’utilizzo delle risorse → #link(label("uc-14.2"))[UC 14.2]
  - Se necessario, attiva meccanismi di scaling automatico o gestione dinamica delle risorse → #link(label("uc-14.3"))[UC 14.3]
  - Il sistema mantiene le performance al di sopra delle soglie minime.
- *Scenari alternativi*:
  - Il monitoraggio#super[G] rileva un “collo di bottiglia”:
    - Il sistema notifica il Supervisore Globale → #link(label("uc-14.4"))[UC 14.4]
  - Il sistema non riesce a gestire dinamicamente il carico:
    - Si attiva un fallback su risorse di backup#super[G] → #link(label("uc-14.5"))[UC 14.5]
- *Inclusioni*:
  - #link(label("uc-14.1"))[UC 14.1]
  - #link(label("uc-14.2"))[UC 14.2]
  - #link(label("uc-14.3"))[UC 14.3]
  - #link(label("uc-15"))[UC 15] → se le scritture simultanee impattano le prestazioni
- *Estensioni*:
  - #link(label("uc-14.4"))[UC 14.4]
  - #link(label("uc-14.5"))[UC 14.5]
- *Trigger*:
  - Aumento significativo del carico o numero di richieste simultanee.
==== - UC 14.1: Bilanciamento del carico
#label("uc-14.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema è in condizioni di carico elevato.
- *Postcondizioni*:
  - Le richieste sono distribuite efficientemente.
- *Scenario principale*:
  - Il sistema rileva che un nodo#super[G] o servizio#super[G] è sovraccarico.
  - Identifica nodi#super[G] disponibili con risorse libere.
  - Ridistribuisce dinamicamente le richieste verso nodi#super[G] meno carichi.
==== - UC 14.2: Monitoraggio#super[G] in tempo reale delle risorse
#label("uc-14.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema è attivo.
- *Postcondizioni*:
  - Stato aggiornato delle risorse è disponibile per decisioni di bilanciamento.
- *Scenario principale*:
  - Il sistema raccoglie metriche sulle risorse di sistema (hardware, software).
  - Elabora i dati e rileva eventuali sovraccarichi o anomalie.
  - Salva le metriche per analisi successive.

==== - UC 14.3: Gestione dinamica delle risorse
#label("uc-14.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - È in corso un monitoraggio#super[G] attivo delle risorse.
- *Postcondizioni*:
  - Le risorse sono riallocate o scalate dinamicamente.
- *Scenario principale*:
  - Il sistema rileva utilizzo eccessivo delle risorse.
  - Valuta possibili azioni correttive (scaling, throttling, code).
  - Applica la strategia ottimale per evitare il degrado delle prestazioni.
==== - UC 14.4: Notifica collo di bottiglia
#label("uc-14.4")
- *Attori Principali*: Sistema, Supervisore Globale.
- *Precondizioni*:
  - Il sistema rileva una congestione persistente.
- *Postcondizioni*:
  - Supervisore viene informato così può intervenire.
- *Scenario principale*:
  - Il sistema identifica una soglia critica superata.
  - Genera una notifica in tempo reale per il Supervisore Globale.
  - La notifica contiene metriche e suggerimenti.
#pagebreak()
==== - UC 14.5: Attivazione fallback su risorse di backup#super[G]
#label("uc-14.5")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema non riesce a ridistribuire efficacemente il carico.
- *Postcondizioni*:
  - Le richieste sono deviate verso risorse di backup#super[G].
- *Scenario principale*:
  - Il sistema valuta che il carico non può essere bilanciato con le risorse attuali.
  - Attiva container#super[G] di backup#super[G] o nodi#super[G] in standby.
  - Le richieste vengono elaborate dai nodi#super[G] di backup#super[G].
#pagebreak()
=== - UC 15: Gestione aggiornamenti simultanei dell’inventario#super[G]
#label("uc-15")
#image("assets/Casi d'uso-UC14.drawio.png", width : 75%)
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Due o più magazzini tentano di aggiornare simultaneamente lo stesso dato di inventario#super[G].
- *Postcondizioni*:
  - Gli aggiornamenti vengono gestiti correttamente, senza perdita o corruzione di dati.
- *Scenario principale*:
  - Due o più magazzini inviano aggiornamenti concorrenti.
  - Il sistema riceve le richieste e ne verifica la concorrenza.
  - Applica un meccanismo di controllo versioni/timestamp → #link(label("uc-15.1"))[UC 15.1]
  - Identifica conflitti, se presenti → #link(label("uc-15.2"))[UC 15.2]
  - Risolve i conflitti secondo una politica definita → #link(label("uc-15.3"))[UC 15.3]
  - Aggiorna correttamente il dato finale e notifica i magazzini coinvolti.
- *Scenari alternativi*:
  - Gli aggiornamenti non sono concorrenti:
    - il sistema li elabora normalmente.
  - Il conflitto non può essere risolto automaticamente:
    - Viene generata una segnalazione al Supervisore Locale → #link(label("uc-15.4"))[UC 15.4]
- *Inclusioni*:
  - #link(label("uc-15.1"))[UC 15.1]
  - #link(label("uc-15.2"))[UC 15.2]
  - #link(label("uc-15.3"))[UC 15.3]
- *Estensioni*:
  - #link(label("uc-15.4"))[UC 15.4]
  - #link(label("uc-11.3"))[UC 11.3]
- *Trigger*:
  - Invio simultaneo di aggiornamenti da più magazzini sullo stesso prodotto#super[G] o voce di inventario#super[G].

==== - UC 15.1: Applicazione controllo versioni o timestamp
#label("uc-15.1")
*Attori Principali*: Sistema
- *Precondizioni*:
  - È in corso un aggiornamento dell’inventario#super[G].
- *Postcondizioni*:
  - Le modifiche sono tracciate con una versione/timestamp.
- *Scenario principale*:
  - Ogni richiesta di aggiornamento include un identificatore temporale o di versione.
  - Il sistema confronta la versione con lo stato attuale dell’inventario#super[G].
  - Salva l’aggiornamento o lo mette in attesa se non coerente.
- *Inclusioni*:
  - #link(label("uc-16.1"))[UC 16.1] → accodamento e gestione simultaneità.
==== - UC 15.2: Identificazione di conflitti di aggiornamento
#label("uc-15.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Sono presenti richieste concorrenti per lo stesso dato.
- *Postcondizioni*:
  - Il conflitto è riconosciuto e pronto per essere gestito.
- *Scenario principale*:
  - Il sistema rileva che due aggiornamenti sono incompatibili o simultanei.
  - Marca il conflitto e prepara un’azione correttiva.
==== - UC 15.3: Risoluzione dei conflitti di aggiornamento
#label("uc-15.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - È stato rilevato un conflitto.
- *Postcondizioni*:
  - Il conflitto è stato risolto e l’inventario#super[G] è stato aggiornato.
- *Scenario principale*:
  - Il sistema applica una politica di risoluzione (es. “vince” ultima modifica).
  - Genera log#super[G] dell’operazione per revisione e tracciabilità.
  - Notifica gli attori coinvolti se necessario.
==== - UC 15.4: Segnalazione conflitto irrisolto
#label("uc-15.4")
- *Attori Principali*: Sistema, Supervisore Locale.
- *Precondizioni*:
  - Il conflitto non può essere risolto automaticamente.
- *Postcondizioni*:
  - Il Supervisore riceve una notifica con i dettagli del conflitto.
- *Scenario principale*:
  - Il sistema rileva che il conflitto richiede l’intervento di un supervisore.
  - Invia una notifica al Supervisore Locale con i dettagli dei tentativi di aggiornamento.
  - Il Supervisore decide come procedere (manualmente o tramite strumenti di amministrazione).
=== - UC 16: Gestione ordini#super[G] simultanei per uno stesso prodotto#super[G]
#label("uc-16")
#image("assets/Casi d'uso-UC16.drawio.png", width : 75%)
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Più richieste di ordine#super[G] per lo stesso prodotto#super[G] arrivano in contemporanea da uno o più magazzini.
- *Postcondizioni*:
  - Gli ordini#super[G] sono processati in modo coordinato e coerente, secondo criteri di assegnazione e priorità.
- *Scenario principale*:
  - Il sistema riceve più ordini#super[G] contemporanei per lo stesso prodotto#super[G].
  - Il sistema verifica la disponibilità attuale delle scorte#super[G] per quel prodotto#super[G].
  - Il sistema attiva il coordinamento tra gli ordini#super[G] simultanei → #link(label("uc-16.1"))[UC 16.1]
  - Il sistema assegna le scorte#super[G] disponibili secondo criteri predefiniti → #link(label("uc-16.2"))[UC 16.2]
  - In caso di conflitto (scorte#super[G] insufficienti), applica una politica di priorità → #link(label("uc-16.3"))[UC 16.3]
  - Aggiorna l’inventario#super[G] e notifica i magazzini interessati.
- *Scenari alternativi*:
  - Le scorte#super[G] sono sufficienti per tutti gli ordini#super[G]:
    - procedere con elaborazione diretta.
  - Nessun criterio di priorità consente la decisione:
    - Estensione di → #link(label("uc-16.4"))[UC 16.4]
- *Inclusioni*:
  - #link(label("uc-16.1"))[UC 16.1]
  - #link(label("uc-16.2"))[UC 16.2]
  - #link(label("uc-16.3"))[UC 16.3]
- *Estensioni*:
  - #link(label("uc-16.4"))[UC 16.4]
  - #link(label("uc-13"))[UC 13] → nel caso in cui esito della gestione ordini#super[G] riduca le scorte#super[G] sotto la soglia critica.
- *Trigger*:
  - Invio simultaneo di più ordini#super[G] per lo stesso prodotto#super[G].
==== - UC 16.1: Coordinamento ordini#super[G] simultanei
#label("uc-16.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema riceve più ordini#super[G] per lo stesso prodotto#super[G] in un breve intervallo di tempo.
- *Postcondizioni*:
  - Gli ordini#super[G] sono messi in coda o raggruppati per una valutazione centralizzata.
- *Scenario principale*:
  - Il sistema identifica gli ordini#super[G] concorrenti.
  - Li inserisce in una struttura di gestione condivisa.
  - Avvia la valutazione di assegnazione.
==== - UC 16.2: Assegnazione delle scorte#super[G] secondo criteri predefiniti
#label("uc-16.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Sono presenti ordini#super[G] concorrenti e scorte#super[G] limitate.
- *Postcondizioni*:
  - Le scorte#super[G] sono assegnate secondo una logica deterministica (es. ordine temporale, località, criticità).
- *Scenario principale*:
  - Il sistema valuta le richieste in base ai criteri impostati (es. priorità geografica, urgenza, data di richiesta).
  - Assegna le scorte#super[G] disponibili agli ordini#super[G] soddisfacibili.
  - Rilascia una risposta di conferma, conferma parziale o rifiuto.
==== - UC 16.3: Applicazione di criteri di priorità
#label("uc-16.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Gli ordini#super[G] sono in conflitto e le scorte#super[G] non bastano.
- *Postcondizioni*:
  - L’ordine prioritario viene soddisfatto.
- *Scenario principale*:
  - Il sistema recupera la configurazione dei criteri di priorità.
  - Ordina gli ordini#super[G] per livello di priorità.
  - Applica le assegnazioni seguendo l’ordine definito.
  - Per tracciabilità scrive le scelte effettuate nel log#super[G].
==== - UC 16.4: Segnalazione ordine#super[G] in conflitto non risolvibile
#label("uc-16.4")
- *Attori Principali*: Sistema, Supervisore Locale
- *Precondizioni*:
  - Il sistema non riesce a decidere l’assegnazione tra ordini#super[G] concorrenti.
- *Postcondizioni*:
  - Un Supervisore prende una decisione manuale.
- *Scenario principale*:
  - Il sistema rileva che i criteri non portano a una decisione univoca.
  - Genera una notifica per il Supervisore Locale.
  - Il Supervisore visualizza i dettagli dei conflitti e decide quale ordine#super[G] soddisfare.
  - Il sistema applica la scelta e aggiorna i dati.
=== - UC 17: Gestione autonoma delle operazioni di magazzino come edge nodes
#label("uc-17")
#image("assets/Casi d'uso-UC17.drawio.png")
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il magazzino è operativo, connesso localmente, anche se non connesso al cloud.
- *Postcondizioni*:
  - Le operazioni sono gestite in locale, con sincronizzazione in cloud quando necessario.
- *Scenario principale*:
  - Il sistema rileva una richiesta di operazione sui dati di inventario#super[G] da parte del magazzino locale.
  - Il sistema valuta se l’operazione può essere gestita in locale.
  - Se sì, esegue l’elaborazione localmente per ridurre il traffico di rete → #link(label("uc-17.1"))[UC 17.1] e #link(label("uc-17.2"))[UC 17.2]
  - Se l’operazione è di scrittura, il sistema attiva la sincronizzazione col cloud → #link(label("uc-17.3"))[UC 17.3]
  - Il sistema aggiorna lo stato delle scorte#super[G] localmente e nel cloud (se necessario).
  - Il Supervisore Locale o Globale può essere notificato di eventuali discrepanze.
- *Scenari alternativi*:
  - L’elaborazione locale non è possibile (es. dati incoerenti o nodo#super[G] non operativo) → #link(label("uc-17.4"))[UC 17.4]
  - Il cloud non è raggiungibile → #link(label("uc-17.5"))[UC 17.5]
- *Inclusioni*:
  - #link(label("uc-17.1"))[UC 17.1]
  - #link(label("uc-17.2"))[UC 17.2]
  - #link(label("uc-17.3"))[UC 17.3]
- *Estensioni*:
  - #link(label("uc-17.4"))[UC 17.4]
  - #link(label("uc-17.5"))[UC 17.5]
- *Trigger*:
  - Richiesta locale di elaborazione o modifica ai dati di inventario#super[G].
==== - UC 17.1: Abilitazione operazioni locali su inventario#super[G]
#label("uc-17.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il magazzino ha una copia locale dell’inventario#super[G].
- *Postcondizioni*:
  - Le operazioni possono essere effettuate localmente.
- *Scenario principale*:
  - Il sistema verifica#super[G] lo stato di aggiornamento locale dei dati.
  - Abilita lettura e scrittura sull’inventario#super[G] locale, se i dati sono coerenti.
==== - UC 17.2: Esecuzione elaborazioni locali
#label("uc-17.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - È attiva la modalità edge computing.
- *Postcondizioni*:
  - I dati sono aggiornati in locale.
- *Scenario principale*:
  - Il sistema riceve una richiesta (es. calcolo disponibilità, assegnazione ordine#super[G]).
  - Esegue l’elaborazione localmente senza coinvolgere il cloud.
  - Restituisce l’esito all’attore interessato (o ad un altro microservizio#super[G]).
==== - UC 17.3: Sincronizzare con il cloud in seguito a operazione di scrittura
#label("uc-17.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - È stata effettuata una modifica locale ai dati (scrittura).
- *Postcondizioni*:
  - Il dato è sincronizzato con il cloud.
- *Scenario principale*:
  - Il sistema intercetta la scrittura effettuata localmente.
  - Invia l’aggiornamento al cloud.
  - Risolve eventuali conflitti tramite logica di controllo versioni o timestamp → #link(label("uc-15.2"))[UC 15.2], #link(label("uc-15.3"))[UC 15.3]
  - Conferma l’avvenuta sincronizzazione.

- *Inclusioni*:
  - #link(label("uc-15.2"))[UC 15.2]
  - #link(label("uc-15.3"))[UC 15.3]

==== - UC 17.4: Delega elaborazione al cloud
#label("uc-17.4")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - L’elaborazione locale fallisce.
- *Postcondizioni*:
  - L’elaborazione viene effettuata sul cloud.
- *Scenario principale*:
  - Il sistema rileva che l’elaborazione locale non è possibile.
  - Reindirizza la richiesta al microservizio#super[G] cloud corrispondente.
  - Il cloud esegue l’elaborazione e restituisce l’esito.
==== - UC 17.5: Sincronizzare posticipata
#label("uc-17.5")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il cloud è irraggiungibile al momento della scrittura locale.
- *Postcondizioni*:
  - I dati saranno sincronizzati alla prima occasione utile.
- *Scenario principale*:
  - Il sistema salva localmente le modifiche in una coda di sincronizzazione.
  - Tenta periodicamente di contattare il cloud.
  - Alla riconnessione, invia le modifiche e gestisce eventuali conflitti.
#pagebreak()
=== - UC 18: Gestione distribuita dei servizi#super[G] per i magazzini
#label("uc-18")
#image("assets/Casi d'uso-UC18.drawio.png", width : 72%)
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale
- *Precondizioni*:
  - Il sistema è attivo e i microservizi#super[G] sono registrati nel sistema di orchestrazione#super[G].
- *Postcondizioni*:
  - Le funzionalità del sistema sono distribuite tra più servizi#super[G] scalabili.
- *Scenario principale*:
  - Il sistema rileva l’esigenza di eseguire un’operazione complessa o distribuita.
  - Determina il microservizio#super[G] o gruppo di microservizi#super[G] adatti a svolgere tale operazione.
  - Inoltra la richiesta ai servizi#super[G] corretti.
  - I microservizi#super[G] comunicano tra loro secondo il protocollo#super[G] definito.
  - Il sistema aggrega le risposte e restituisce il risultato.
  - Eventuali guasti sono gestiti grazie alla resilienza del sistema → #link(label("uc-18.2"))[UC 18.2]
  - Il carico è bilanciato tra i servizi#super[G] → #link(label("uc-18.3"))[UC 18.3], #link(label("uc-14.1"))[UC 14.1]
- *Scenari alternativi*:
  - Un microservizio#super[G] non risponde → #link(label("uc-18.4"))[UC 18.4]
  - La rete è congestionata o rallentata → #link(label("uc-18.4"))[UC 18.4]
- *Inclusioni*:
  - #link(label("uc-18.1"))[UC 18.1]
  - #link(label("uc-18.2"))[UC 18.2]
  - #link(label("uc-18.3"))[UC 18.3]
  - #link(label("uc-14.1"))[UC 14.1]
- *Estensioni*:
  - #link(label("uc-18.4"))[UC 18.4]
  - #link(label("uc-18.5"))[UC 18.5]
- *Trigger*:
  - Avvio del sistema o evento che richiede scalabilità#super[G] oppure resilienza (es. carico aumentato, guasto di un servizio#super[G], …)
==== - UC 18.1: Distribuzione funzionalità su microservizi#super[G]
#label("uc-18.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema è attivo e configurato per la gestione distribuita.
- *Postcondizioni*:
  - Ogni funzionalità viene assegnata a un microservizio#super[G].
- *Scenario principale*:
  - Il sistema analizza le funzionalità richieste.
  - Assegna a ciascun microservizio#super[G] una responsabilità (es. inventario#super[G], ordini#super[G], sincronizzazione).
  - Registra i microservizi#super[G] con i relativi endpoint e capacità.

==== - UC 18.2: Gestione resilienza dei servizi#super[G]
#label("uc-18.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - I microservizi#super[G] sono attivi e comunicano tra loro.
- *Postcondizioni*:
  - Il sistema mantiene attiva l’operatività anche in caso di errore.
- *Scenario principale*:
  - Il sistema monitora la salute dei microservizi#super[G].
  - Se un servizio#super[G] fallisce, attiva un servizio#super[G] di backup#super[G] (failover).
  - Riavvia o sostituisce i servizi#super[G] non funzionanti senza interruzione.
==== - UC 18.3: Gestione scalabilità#super[G] dei servizi#super[G]
#label("uc-18.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il carico sulle risorse è crescente.
- *Postcondizioni*:
  - Il sistema scala dinamicamente i servizi#super[G] per gestire la domanda.
- *Scenario principale*:
  - Il sistema rileva un aumento del carico (RAM, CPU, traffico rete,…).
  - Istanzia nuove repliche dei microservizi#super[G] in esecuzione.
  - Aggiorna il bilanciatore per distribuire correttamente le richieste.
==== - UC 18.4: Failover e resilienza del servizio#super[G]
#label("uc-18.4")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Uno o più servizi#super[G] sono non disponibili.
- *Postcondizioni*:
  - Le operazioni continuano tramite backup#super[G].
- *Scenario principale*:
  - Il sistema rileva l’inattività di un microservizio#super[G].
  - Reindirizza le richieste a un’istanza secondaria o ad altri nodi#super[G].
  - Segnala l’errore e continua le operazioni.
#pagebreak()
==== - UC 18.5: Scalabilità#super[G] automatica dei microservizi#super[G]
#label("uc-18.5")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema è configurato per l’auto-scaling.
- *Postcondizioni*:
  - I microservizi#super[G] aumentano o diminuiscono in base alla richiesta.
- *Scenario principale*:
  - Il sistema misura in tempo reale le risorse utilizzate.
  - Se il carico è alto, crea nuove istanze.
  - Se il carico scende, dismette le istanze in eccesso.
#pagebreak()
=== - UC 19: Monitoraggio#super[G] continuo delle attività di sistema
#label("uc-19")
#image("assets/Casi d'uso-UC19.drawio.png", width : 90%)
- *Attori Principali*: Supervisore Locale, Sistema.
- *Attori Secondari*: Supervisore Globale
- *Precondizioni*:
  - Il magazzino locale è operativo e connesso al sistema centrale o abilitato a operare in locale.
- *Postcondizioni*:
  - Le operazioni di inventario#super[G] vengono eseguite localmente e sincronizzate con il sistema centrale.
- *Scenario principale*:
  - Il Supervisore Locale esegue un’operazione sull’inventario#super[G]: inserimento, modifica o trasferimento#super[G] → #link(label("uc-19.1"))[UC 19.1]
  - Il sistema locale aggiorna l’inventario#super[G] internamente → #link(label("uc-19.2"))[UC 19.2]
  - Il sistema centrale viene notificato dell’operazione.
  - Avviene la sincronizzazione automatica con il cloud → #link(label("uc-11.2"))[UC 11.2]
  - In caso di conflitto con dati centrali, il sistema avvia una procedura di risoluzione → #link(label("uc-11.3"))[UC 11.3]
- *Scenari alternativi*:
  - Connessione al cloud è temporaneamente assente:
    - I dati sono messi in coda e sincronizzati appena disponibile → #link(label("uc-19.3"))[UC 19.3]
  - Il conflitto non è risolvibile automaticamente:
    - Richiede intervento del Supervisore Globale → #link(label("uc-19.4"))[UC 19.4]
- *Inclusioni*:
  - #link(label("uc-19.1"))[UC 19.1]
  - #link(label("uc-19.2"))[UC 19.2]
  - #link(label("uc-11.2"))[UC 11.2]
- *Estensioni*:
  - #link(label("uc-19.3"))[UC 19.3]
  - #link(label("uc-19.4"))[UC 19.4]
  - #link(label("uc-11.3"))[UC 11.3]
- *Trigger*:
  - Inizio di un’operazione locale su inventario#super[G] (inserimento, modifica o trasferimento#super[G]).
==== - UC 19.1: Raccolta log#super[G] e metriche
#label("uc-19.1")
- *Attori Principali*: Supervisore Locale
- *Precondizioni*:
  - Il magazzino locale è disponibile e configurato per operazioni autonome.
- *Postcondizioni*:
  - Un'operazione di inventario#super[G] è completata localmente.
- *Scenario principale*:
  - Il Supervisore Locale seleziona il tipo di operazione (es. inserimento nuovo stock, modifica quantità, trasferimento#super[G] ad altro magazzino).
  - Inserisce i dati necessari.
  - Conferma l’operazione.
  - Il sistema locale registra il cambiamento.
==== - UC 19.2: Analisi eventi anomali
#label("uc-19.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - È stata eseguita un’operazione locale di inventario#super[G].
- *Postcondizioni*:
  - L’inventario#super[G] locale è aggiornato.
- *Scenario principale*:
  - Il sistema riceve la modifica da #link(label("uc-19.1"))[UC 19.1]
  - Aggiorna lo stato locale dell’inventario#super[G].
  - Prepara i dati per la sincronizzazione con il sistema centrale.
==== - UC 19.3: Generazione report periodici
#label("uc-19.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - L’operazione locale è stata effettuata, ma il cloud non è raggiungibile.
- *Postcondizioni*:
  - I dati sono messi in coda per la sincronizzazione successiva.
- *Scenario principale*:
  - Il sistema rileva l’assenza di rete.
  - Memorizza l’operazione in una coda locale.
  - Appena disponibile la connessione, invia i dati al cloud.
==== - UC 19.4: Notifica automatica di eventi critici
#label("uc-19.4")
- *Attori Principali*: Sistema, Supervisore Globale.
- *Precondizioni*:
  - La sincronizzazione ha generato un conflitto non risolvibile automaticamente.
- *Postcondizioni*:
  - Il conflitto è risolto manualmente e i dati sono aggiornati.
- *Scenario principale*:
  - Il sistema notifica un conflitto di aggiornamento.
  - Il Supervisore Globale accede alla dashboard#super[G] di risoluzione.
  - Analizza i dati locali e centrali.
  - Decide quale versione mantenere e conferma la scelta.
  - Il sistema aggiorna i dati in base alla decisione.
=== - UC 20: Gestione sicurezza accessi e autorizzazioni
#label("uc-20")
#image("assets/Casi d'uso-UC20.drawio.png", width : 86%)
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema è operativo.
  - I servizi#super[G] di monitoraggio#super[G] sono attivi.
- *Postcondizioni*:
  - Le attività sospette sono state rilevate, tracciate e notificate.
  - I log#super[G] delle operazioni sono aggiornati.
- *Scenario principale*:
  - Il sistema attiva i moduli di monitoraggio#super[G] centralizzato → #link(label("uc-20.1"))[UC 20.1]
  - Il sistema registra tutti gli accessi (inclusi login/logout) e le operazioni rilevanti → #link(label("uc-20.3"))[UC 20.3]
  - Il sistema analizza in tempo reale il comportamento degli utenti e dei componenti distribuiti.
  - Se viene rilevata un'attività sospetta o anomala:
    - Il sistema genera una notifica per i supervisori.
    - L’attività viene registrata nei log#super[G].
    - I Supervisori possono visualizzare e analizzare i log#super[G] attraverso l'interfaccia.
- *Scenari alternativi*:
  - Il sistema rileva numerosi tentativi di accesso falliti → #link(label("uc-20.4"))[UC 20.4]
  - Il sistema registra accessi da IP non noti o da località insolite → #link(label("uc-20.2"))[UC 20.2]
  - Il Supervisore analizza i log#super[G] in seguito a una notifica → può avviare un’azione correttiva
- *Inclusioni*:
  - #link(label("uc-20.1"))[UC 20.1]
  - #link(label("uc-20.2"))[UC 20.2]
  - #link(label("uc-20.3"))[UC 20.3]
  - #link(label("uc-20.4"))[UC 20.4]
- *Trigger*:
  - Attività da parte di utenti o sistemi (es. login, operazioni sui dati).
  - Tentativi di accesso anomalo.
==== - UC 20.1: Autenticazione#super[G] utenti
#label("uc-20.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Sistema in esecuzione.
- *Postcondizioni*:
  - Monitoraggio#super[G] avviato.
- *Scenario principale*:
  - Il sistema attiva i moduli di monitoraggio#super[G] durante l’avvio.
  - I componenti di rete e autenticazione#super[G] iniziano a comunicare con il modulo centralizzato.
  - Il sistema conferma l’attivazione.
- *Trigger*:
  - Avvio del sistema.
==== - UC 20.2: Autorizzazione operazioni per ruolo
#label("uc-20.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Monitoraggio#super[G] attivo.
- *Postcondizioni*:
  - Attività sospetta rilevata e registrata.
- *Scenario principale*:
  - Il sistema valuta il comportamento degli utenti (frequenza accessi, IP, orari).
  - Identifica pattern anomali.
  - Registra l’evento e genera un allarme.
- *Estensioni*:
  - In caso di accessi anomali → #link(label("uc-1"))[UC 1]
  - In caso di tentativi ripetuti falliti → #link(label("uc-2"))[UC 2]
==== - UC 20.3: Registrazione attività utente
#label("uc-20.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Monitoraggio#super[G] attivo.
- *Postcondizioni*:
  - Log#super[G] aggiornato.
- *Scenario principale*:
  - Il sistema registra ogni login → #link(label("uc-1"))[UC 1]
  - Registra ogni tentativo fallito → #link(label("uc-2"))[UC 2]
  - Registra ogni logout → #link(label("uc-3"))[UC 3]
  - Ogni operazione rilevante viene associata a timestamp, ID utente e contesto.
- *Inclusioni*:
  - #link(label("uc-1"))[UC 1]
  - #link(label("uc-2"))[UC 2]
  - #link(label("uc-3"))[UC 3]
#pagebreak()
==== - UC 20.4: Invio allarmi in tempo reale
#label("uc-20.4")
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Attività anomala rilevata.
- *Postcondizioni*:
  - Supervisore notificato.
- *Scenario principale*:
  - Il sistema rileva un comportamento sospetto.
  - Invio di notifica al supervisore interessato.
  - L’evento viene registrato nel log#super[G].
- *Estensioni*:
  - In caso di eventi critici → #link(label("uc-20.2"))[UC 20.2]
#pagebreak()
=== - UC 21: Backup#super[G] e ripristino#super[G] dati
#label("uc-21")
#image("assets/Casi d'uso-UC21.drawio.png", width : 86%)
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema è attivo e ha accesso a dati storici sulle vendite e alle scorte#super[G] correnti.
  - I moduli predittivi sono correttamente configurati.
- *Postcondizioni*:
  - Sono generate previsioni di domanda.
  - Sono pianificati riassortimenti preventivi per evitare carenze.
- *Scenario principale*:
  - Il sistema raccoglie dati storici di vendita e disponibilità attuale delle scorte#super[G].
  - Il sistema analizza i dati con un modello predittivo (es. machine learning).
  - Il sistema genera una previsione di domanda per ciascun prodotto#super[G].
  - Il sistema pianifica automaticamente i riassortimenti in base alle previsioni.
  - Se un prodotto#super[G] rischia di andare in esaurimento, il sistema attiva azioni preventive (es. proposta d'ordine#super[G] o avviso al supervisore).
  - Il Supervisore Locale/Globale può visualizzare i dati generati e validare eventuali modifiche.
- *Scenari alternativi*:
  - I dati storici sono incompleti:
    - Il sistema utilizza euristiche di fallback → #link(label("uc-21.1"))[UC 21.1]
  - Il Supervisore modifica manualmente le proposte del sistema → #link(label("uc-21.2"))[UC 21.2]
  - Il riassortimento#super[G] automatico non può essere pianificato per problemi logistici:
    - Viene generato un avviso → #link(label("uc-21.3"))[UC 21.3]
- *Inclusioni*:
  - #link(label("uc-21.1"))[UC 21.1]
  - #link(label("uc-21.2"))[UC 21.2]
  - #link(label("uc-21.3"))[UC 21.3]
- *Trigger*:
  - Esecuzione periodica automatica (es. ogni notte o settimanalmente).
  - Modifica importante dello storico o dei pattern di acquisto.

==== - UC 21.1: Backup#super[G] periodico inventario#super[G]
#label("uc-21.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Accesso ai dati storici e alle informazioni correnti sulle scorte#super[G].
- *Postcondizioni*:
  - Previsioni generate per ciascun prodotto#super[G].
- *Scenario principale*:
  - Il sistema raccoglie ed elabora i dati storici e attuali.
  - Il modello predittivo produce una stima della domanda futura.
  - Le previsioni vengono salvate nel sistema.
- *Trigger*:
  - Esecuzione pianificata o evento esterno (es. cambio stagionale).
==== - UC 21.2: Ripristino#super[G] da backup#super[G]
#label("uc-21.2")
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Previsioni disponibili.
- *Postcondizioni*:
  - Riassortimenti pianificati automaticamente.
- *Scenario principale*:
  - Il sistema valuta se le scorte#super[G] previste soddisfano la domanda prevista.
  - Pianifica un riassortimento#super[G] (ordine#super[G] o trasferimento#super[G]).
  - Notifica il Supervisore per conferma o revisione.
- *Scenario alternativo*:
  - Il Supervisore modifica le quantità → aggiornamento dei dati.
- *Inclusioni*:
  - #link(label("uc-21.1"))[UC 21.1]
==== - UC 21.3: Verifica#super[G] integrità#super[G] dati backup#super[G]
#label("uc-21.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Domanda prevista > scorte#super[G] disponibili.
- *Postcondizioni*:
  - Azioni preventive attivate.
- *Scenario principale*:
  - Il sistema rileva un rischio di esaurimento.
  - Verifica le opzioni disponibili: nuovo ordine#super[G], trasferimento#super[G] da altro magazzino, limitazione ordini#super[G].
  - Propone un'azione o la attua automaticamente (se configurato).
  - Notifica il supervisore.
- *Inclusioni*:
  - #link(label("uc-21.1"))[UC 21.1]
- *Estensioni*:
  - #link(label("uc-13"))[UC 13] (per garantire livelli minimi)
  - Possibili casi: #link(label("uc-5"))[UC 5], #link(label("uc-7"))[UC 7]
=== - UC 22: Reportistica e analisi dati
#label("uc-22")
#image("assets/Casi d'uso-UC22.drawio.png", width : 95%)
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Il sistema ha accesso ai dati storici di vendita e consegna.
  - I modelli statistici predittivi sono disponibili e attivi.
  - Le strategie di approvvigionamento#super[G] sono configurabili.
- *Postcondizioni*:
  - Il sistema ha calcolato le previsioni di domanda.
  - Sono state adattate le strategie di approvvigionamento#super[G].
  - Sono stati generati piani di riassortimento#super[G] ottimizzati.
- *Scenario principale*:
  - Il sistema raccoglie e analizza i dati storici di vendita e consegna.
  - Applica modelli statistici per identificare pattern stagionali e tendenze di consumo.
  - Prevede la domanda futura per ciascun prodotto#super[G].
  - Adatta le strategie di approvvigionamento#super[G] in base ai risultati.
  - Calcola i livelli ottimali di scorte#super[G] da mantenere.
  - Genera raccomandazioni o azioni automatiche di riassortimento#super[G].
  - Il Supervisore può visualizzare, approvare o modificare le raccomandazioni.
- *Scenari alternativi*:
  - I dati storici sono incompleti:
    - Il sistema utilizza valori medi o interpolazioni → #link(label("uc-22.1"))[UC 22.1]
  - I modelli predittivi rilevano anomalie nei pattern:
    - L’output viene validato manualmente → #link(label("uc-22.2"))[UC 22.2]
  - Il supervisore impone strategie fisse:
    - Il sistema sospende l’adattamento automatico → #link(label("uc-22.3"))[UC 22.3]
  - Il magazzino è già pieno o sottodimensionato:
    - Il sistema propone misure correttive → #link(label("uc-22.4"))[UC 22.4]
- *Inclusioni*:
  - #link(label("uc-22.1"))[UC 22.1]
  - #link(label("uc-22.2"))[UC 22.2]
  - #link(label("uc-22.3"))[UC 22.3]
  - #link(label("uc-22.4"))[UC 22.4]
- *Trigger*:
  - Pianificazione periodica automatica (es. settimanale/mensile).
  - Attivazione manuale da parte del Supervisore.
  - Modifica nei dati o parametri (es. cambi stagionali, cambi tendenziali).
==== - UC 22.1: Generazione report periodici
#label("uc-22.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Disponibilità dei dati storici.
- *Postcondizioni*:
  - Dati strutturati pronti per la previsione.
- *Scenario principale*:
  - Il sistema raccoglie i dati da magazzini locali e cloud.
  - Elimina outlier e dati incompleti.
  - Aggrega i dati per prodotto#super[G], zona, periodo.
  - Prepara i dataset per l’elaborazione statistica.
- *Trigger*:
  - Esecuzione periodica o richiesta manuale.
==== - UC 22.2: Analisi trend scorte#super[G]
#label("uc-22.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Dataset analizzato disponibile.
- *Postcondizioni*:
  - Previsioni generate per ogni prodotto#super[G].
- *Scenario principale*:
  - Il sistema applica modelli (es. regressione, reti neurali).
  - Identifica stagionalità e trend nei dati.
  - Elabora le previsioni a breve e medio termine.
  - Salva le previsioni nel sistema centrale.
- *Inclusioni*:
  - #link(label("uc-22.1"))[UC 22.1]
#pagebreak()
==== - UC 22.3: Personalizzazione report
#label("uc-22.3")
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Previsioni disponibili.
- *Postcondizioni*:
  - Strategia di riassortimento#super[G] aggiornata.
- *Scenario principale*:
  - Il sistema confronta la previsione con la politica attuale di approvvigionamento#super[G].
  - Valuta lead time, frequenza ordini#super[G] e soglie minime.
  - Suggerisce modifiche o automatizza gli aggiustamenti.
  - Il supervisore può confermare, rifiutare o modificare la proposta.
- *Inclusioni*:
  - #link(label("uc-22.2"))[UC 22.2]
==== - UC 22.4: Ottimizzazione dei livelli di scorte#super[G]
#label("uc-22.4")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Strategia aggiornata e previsione disponibile.
- *Postcondizioni*:
  - Livelli ottimali calcolati e azioni di riassortimento#super[G] pianificate.
- *Scenario principale*:
  - Il sistema determina le soglie ottimali per ciascun prodotto#super[G].
  - Calcola quanto e quando riassortire.
  - Genera automaticamente richieste o suggerimenti.
  - Il supervisore può intervenire o confermare.
- *Inclusioni*:
  - #link(label("uc-22.3"))[UC 22.3]
- *Estensioni*:
  - #link(label("uc-13"))[UC 13] (per garantire sicurezza scorte#super[G]).
=== - UC 23: Gestione notifiche e allarmi
#label("uc-23")
#image("assets/Casi d'uso-UC23.drawio.png", width : 85%)
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - L’utente è autenticato.
  - L’interfaccia utente è accessibile e funzionante.
- *Postcondizioni*:
  - L’utente ha visualizzato e/o modificato le informazioni di inventario#super[G].
  - Eventuali modifiche sono state salvate e propagate al sistema centrale.
  - I dati visualizzati riflettono lo stato aggiornato delle scorte#super[G] in tempo reale.
- *Scenario principale*:
  - Il Supervisore Locale o Globale accede all’interfaccia grafica.
  - Il sistema carica e visualizza in tempo reale le scorte#super[G] disponibili.
  - L’utente esplora il contenuto della dashboard#super[G] e i dati per magazzino/prodotto#super[G].
  - L’utente seleziona un’azione (es. modifica scorte#super[G], trasferimento#super[G], riordino).
  - Il sistema aggiorna l’inventario#super[G] e sincronizza le modifiche con il cloud.
  - L’utente riceve conferma dell’operazione.
- *Scenari alternativi*:
  - La visualizzazione delle scorte#super[G] fallisce:
    - Viene mostrato un messaggio di errore e suggerito il ripristino#super[G] → #link(label("uc-23.2"))[UC 23.2]
  - L’utente non ha i privilegi per alcune operazioni:
    - Alcune funzionalità risultano disabilitate.
  - L’utente annulla un’operazione:
    - Nessuna modifica viene salvata → #link(label("uc-23.3"))[UC 23.3]
- *Inclusioni*:
  - #link(label("uc-1"))[UC 1]
  - #link(label("uc-5"))[UC 5]
  - #link(label("uc-7"))[UC 7]
  - #link(label("uc-8"))[UC 8]
  - #link(label("uc-11"))[UC 11]
- *Estensioni*:
  - #link(label("uc-23.1"))[UC 23.1]
  - #link(label("uc-23.2"))[UC 23.2]
  - #link(label("uc-23.3"))[UC 23.3]
- *Trigger*:
  - Accesso alla dashboard#super[G] da parte di un supervisore.
  - Necessità di aggiornare o monitorare lo stato delle scorte#super[G].
==== - UC 23.1: Configurazione soglie notifiche
#label("uc-23.1")
- *Attori Principali*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Supervisore autenticato.
  - Connessione attiva al sistema.
- *Postcondizioni*:
  - Le scorte#super[G] sono visualizzate in tempo reale.
- *Scenario principale*:
  - Il supervisore accede alla dashboard#super[G].
  - Il sistema recupera i dati di inventario#super[G] aggiornati.
  - Le scorte#super[G] vengono presentate in una vista tabellare/grafica.
  - Il sistema aggiorna i dati ogni X secondi o su richiesta.
- *Inclusioni*:
  - #link(label("uc-11"))[UC 11] (visualizzazione stato magazzino).
==== - UC 23.2: Invio notifiche automatiche
#label("uc-23.2")
- *Attori Principali*: Sistema
- *Attori Secondari*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Connessione instabile o servizi#super[G] non disponibili.
- *Postcondizioni*:
  - Viene notificato il fallimento della visualizzazione.
- *Scenario principale*:
  - Il supervisore accede alla dashboard#super[G].
  - Il sistema tenta di caricare i dati.
  - Si verifica un errore (es. timeout, servizio#super[G] cloud non raggiungibile).
  - Il sistema mostra un messaggio con opzioni di riprova o offline mode.
==== - UC 23.3: Gestione conferma e escalation
#label("uc-23.3")
- *Attori Principali*: Supervisore Locale, Supervisore Globale.
- *Precondizioni*:
  - Supervisore autenticato e dati caricati.
- *Postcondizioni*:
  - Operazione di inventario#super[G] completata.
- *Scenario principale*:
  - Il supervisore seleziona un’operazione (aggiunta, modifica, trasferimento#super[G]).
  - Il sistema mostra un modulo dedicato all’azione scelta.
  - L’utente compila e conferma il modulo.
  - Il sistema salva l’azione e aggiorna lo stato delle scorte#super[G].
  - Il cloud viene sincronizzato con l’operazione effettuata.
- *Inclusioni*:
  - #link(label("uc-5"))[UC 5]
  - #link(label("uc-7"))[UC 7]
  - #link(label("uc-8"))[UC 8]

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
- *R* sta per "#strong[R]equisito";
- *F* sta per "#strong[F]unzionale";
- *S* sta per "#strong[S]icurezza";
- *nF* sta per "#strong[n]on #strong[F]unzionale".

//Aggiungere il fatto di avere vincoli desiderabili: riassortimento#super[G] predittivo, GUI (fonte: riunione con M31)
Alcuni requisiti#super[G] funzionali sono stati definiti come *"desiderabili"*, in quanto non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile.\

Per indicare che un requisito#super[G] è desiderabile, è stato deciso di aggiungere la lettera *"D"* (Desiderabile) al prefisso del requisito#super[G], per indicare che il requisito#super[G] è desiderabile.\ *RFD*, ad esempio, sta per "Requisito#super[G] Funzionale Desiderabile".\

Essendoci presenti anche dei requisiti#super[G] *opzionali*, è stato deciso di aggiungere la lettera *"O"* (Opzionale) al prefisso del requisito#super[G], per indicare che il requisito#super[G] è opzionale.\ *RFO*, ad esempio, sta per "Requisito#super[G] Funzionale Opzionale".\

Inoltre, i requisiti#super[G] forniti dal capitolato#super[G] sono molto generali e non specificano in modo dettagliato le funzionalità richieste.
Per questo motivo, è stato deciso di scomporre i requisiti#super[G] in requisiti#super[G] più specifici, cioè chi deve fare cosa, e in che modo.\
Per indicare che un requisito#super[G] è secondario, è stato deciso di aggiungere la dicitura *"/nr"* al codice#super[G] del requisito#super[G] principale, dove *nr* è il numero progressivo del requisito#super[G] secondario.\

Quindi, la struttura del codice#super[G] di un requisito#super[G] è la seguente:

- RF01: Requisito#super[G] Funzionale principale 01;
- RF01/01: Requisito#super[G] Funzionale secondario 01/01;
- RS01: Requisito#super[G] di Sicurezza principale 01;
- RS01/01: Requisito#super[G] di Sicurezza secondario 01/01;
- RnF01: Requisito#super[G] non Funzionale principale 01;
- RnF01/01: Requisito#super[G] non Funzionale secondario 01/01.

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
    [*Codice*], [*Descrizione*], [*Fonti*]
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

  
  [*RF03*], [*Rilevamento delle scorte#super[G] minime necessarie.*], [capitolato#super[G]],
  [*RF03/01*], [Deve essere possibile poter definire un livello minimo di scorte#super[G] per ciascun prodotto#super[G].], [progettazione],
  [*RF03/02*], [Il sistema deve calcolare le scorte#super[G] minime necessarie per ciascun prodotto#super[G].], [capitolato#super[G]],
  [*RF03/03*], [Il sistema deve monitorare le scorte#super[G] attuali rispetto alle scorte#super[G] minime, ottimizzandone la quantità], [capitolato#super[G].],

  
  [*RF04*], [*Bilanciamento delle scorte#super[G], il più possibile, in ogni magazzino per ridurre i livelli medi di scorte (riassortimento#super[G]).*], [capitolato#super[G]],
  [*RF04/01*], [Il sistema deve analizzare la distribuzione delle scorte#super[G] tra i magazzini.], [capitolato#super[G]],
  [*RF04/02*], [Il sistema deve identificare squilibri nelle scorte#super[G], valutando la distribuzione attuale.], [capitolato#super[G]],
  [*RF04/03*], [Il sistema deve effettuare trasferimenti#super[G] interni per bilanciare le scorte#super[G] e migliorare l'efficienza.], [capitolato#super[G]],
  [*RF04/04*], [Il sistema deve automatizzare il processo di riassortimento#super[G].], [capitolato#super[G]],

  [*RF05*], [*Suggerimento su azioni di riassortimento#super[G] e trasferimento#super[G] tra magazzini.*], [capitolato#super[G]],
  [*RF05/01*], [È necessario fornire raccomandazioni al sistema per il riassortimento#super[G] e i trasferimenti#super[G].], [capitolato#super[G]],

  [*RF06*], [*Individuazione di magazzini offline.*], [capitolato#super[G]],
  [*RF06/01*], [Il sistema deve monitorare la connettività#super[G] di ciascun magazzino.], [capitolato#super[G]],
  [*RF06/02*], [Il sistema deve segnalare tempestivamente eventuali disconnessioni.], [capitolato#super[G]],
  [*RF06/03*], [Il sistema deve correttamente segnalare lo stato del magazzino (offline, online, non operativo, operativo).], [progettazione],

  [*RF07*], [*Gestione dei disservizi.*], [capitolato#super[G]],
  [*RF07/01*], [Il sistema deve determinare i magazzini vicini disponibili.], [capitolato#super[G]],
  [*RF07/02*], [Deve essere definito un disservizio di tipo fisico. Tale disservizio viene segnalato come "non operativo".], [progettazione],
  [*RF07/03*], [Deve essere definito un disservizio di rete. Tale disservizio viene segnalato come "offline".], [progettazione],
  [*RF07/04*], [Gestire il caso in cui un magazzino è offline, e mentre è offline diventa non operativo.], [progettazione],
  [*RF07/05*], [Il sistema deve trasferire scorte#super[G] ai magazzini vicini per sopperire al disservizio nel caso in cui il magazzino è non operativo.], [progettazione],
  
  [*RF08*], [*Gestione magazzino che torna online.*], [capitolato#super[G]],
  [*RF08/01*], [Il sistema deve riconoscere quando un magazzino torna online.], [capitolato#super[G]],
  [*RF08/02*], [Il sistema deve sincronizzare i dati di inventario#super[G] con il cloud.], [capitolato#super[G]],
  [*RF08/03*], [Il sistema deve risolvere eventuali conflitti di dati], [capitolato#super[G].],

  
    [*RF09*], [*Visibilità centrale in tempo reale di tutte le scorte#super[G] distribuite (monitoraggio#super[G] livelli inventario#super[G]), di ogni magazzino (anche indipendentemente).*], [capitolato#super[G]],
  [*RF09/01*], [Il sistema deve fornire una dashboard#super[G] centralizzata per monitorare le scorte#super[G].], [capitolato#super[G]],
  [*RF09/02*], [Il sistema deve interrogare il database di aggregazione del microservizio#super[G] di inventario#super[G] su cloud per avere una visione centralizzata delle scorte#super[G] di ogni magazzino.], [capitolato#super[G]],

  [*RF10*], [*Mantenimento dei livelli di sicurezza delle scorte#super[G] in ogni magazzino in caso di carenze o ritardi.*], [capitolato#super[G]],
  [*RF10/01*], [Definire una soglia temporale massima come tempo stimato di arrivo di una richiesta.], [capitolato#super[G]],
  [*RF10/02*], [In caso di superamento della soglia, il sistema deve attivare delle azioni correttive (es.: invio di nuove richieste).], [capitolato#super[G]],

    [*RF11*], [*Mantenimento di prestazioni elevate anche con carichi elevati di dati e richieste simultanee.*], [capitolato#super[G]],
  [*RF11/01*], [ Il sistema deve implementare un meccanismo di bilanciamento del carico tra i servizi#super[G] per distribuire in modo efficiente le richieste.], [capitolato#super[G]],
  [*RF11/02*], [Il sistema deve monitorare l'utilizzo delle risorse in tempo reale.], [capitolato#super[G]],
  [*RF11/03*], [Il sistema deve gestire le risorse in modo dinamico evitando problemi prestazionali (es. gestione code, scalabilità#super[G] automatica).], [capitolato#super[G]],
  //probabilmente non è necessario, in quanto il sistema deve essere progettato per gestire carichi elevati di dati e richieste simultanee, a livello di codice e di struttura.
  
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

  [*RFD01*], [*Gestione della variabilità della domanda e tempi di consegna con modelli predittivi.*], [capitolato#super[G]],
  [*RFD01/01*], [Il sistema deve prevedere la domanda futura per ciascun prodotto#super[G].], [capitolato#super[G]],
  [*RFD01/02*], [Il sistema deve pianificare riassortimenti#super[G] in base alle previsioni.], [capitolato#super[G]],
  [*RFD01/03*], [Il sistema deve attivare meccanismi preventivi per evitare esaurimenti.], [capitolato#super[G]],

  [*RFD02*], [*Riassortimento#super[G] predittivo tramite analisi dei dati storici, con previsione della domanda per ciascun prodotto#super[G] considerando stagionalità e tendenze di consumo, per determinare quando e quanto riassortire le scorte#super[G], riducendo il rischio di esaurimento o sovrastoccaggio.*], [capitolato#super[G]],
  [*RFD02/01*], [Il sistema deve analizzare dati storici di vendita e di consegna.], [capitolato#super[G]],
  [*RFD02/02*], [Il sistema deve applicare modelli statistici per prevedere la domanda, identificando pattern stagionali e tendenze di consumo], [capitolato#super[G].],
  [*RFD02/03*], [Il sistema deve adattare le strategie di approvvigionamento#super[G] in base alle previsioni.], [capitolato#super[G]],
  [*RFD02/04*], [Il sistema deve ottimizzare i livelli di scorte#super[G] per ridurre il rischio di esaurimento o sovrastoccaggio.], [capitolato#super[G]],
  [*RFD02/05*], [Il sistema deve avere uno storico dei livelli della merce.], [progettazione],

  //DA VERIFICARE INSIEME
  [*RFD03*], [*Interfaccia grafica per la visualizzazione e gestione delle scorte#super[G], con dashboard#super[G] centralizzata per monitorare le scorte#super[G] in tempo reale.*], [capitolato#super[G]],
  [*RFD03/01*], [Il sistema deve fornire un'interfaccia grafica intuitiva per gli utenti.], [capitolato#super[G]],
  [*RFD03/02*], [Il sistema deve visualizzare le informazioni sulle scorte#super[G] in tempo reale.], [capitolato#super[G]],
  [*RFD03/03*], [Il sistema deve consentire agli utenti di gestire le scorte#super[G] e le operazioni di inventario#super[G] tramite l'interfaccia grafica.], [capitolato#super[G]],

  //Requisiti#super[G] Funzionali opzionali
  //commentare se decidiamo di toglierli
  [*RFO01*], [*Integrazione con sistemi di notifica per eventi rilevanti, come il raggiungimento dei livelli minimi di scorte#super[G], l'approvazione dei trasferimenti#super[G] di merci, con alert#super[G] configurabili in base a regole definite e supporto a più canali di comunicazione (e-mail, SMS, dashboard#super[G] interna).*], [capitolato#super[G]],
  [*RFO01/01*], [È necessario supporto per la generazione di notifiche automatiche.], [capitolato#super[G]],
  [*RFO01/02*], [È prevista una notifica per il raggiungimento dei livelli minimi di scorte#super[G].], [capitolato#super[G]],
  [*RFO01/03*], [È prevista una notifica per approvazione e/o rifiuto delle proposte di riassortimento#super[G] predittivo di merci.], [capitolato#super[G]],
  [*RFO01/04*], [Il sistema deve notificare le parti interessate delle modifiche ai dati di inventario#super[G].], [capitolato#super[G]],
  [*RFO01/05*], [Il sistema deve notificare eventuali cambi di stato dell'ordine#super[G].], [capitolato#super[G]],
  [*RFO01/06*], [Il sistema deve notificare l'impossibilità di evasione di un ordine#super[G].], [capitolato#super[G]],
  [*RFO01/07*], [Il sistema deve notificare la carenza di scorte#super[G]], [capitolato#super[G].],
  [*RFO01/08*], [Il sistema deve notificare in caso di soglie critiche di utilizzo delle risorse per il funzionamento del sistema.], [capitolato#super[G]],
  [*RFO01/09*], [Il sistema deve notificare in caso di cambiamento di stato di un magazzino (offline, online, non operativo, operativo).], [progettazione],
  [*RFO01/10*], [Gli alert#super[G] sono configurabili in base a regole definite dall'utente (o dall'amministratore#super[G]).], [capitolato#super[G]],
  [*RFO01/11*], [È previsto l'invio di notifiche tramite email e/o SMS], [capitolato#super[G].],
  [*RFO01/12*], [È prevista la visualizzazione delle notifiche sulla dashboard#super[G] interna del sistema.], [capitolato#super[G]],
  
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

  [*RFO03/07*], [Il sistema prevede una verifica#super[G] dell'integrità#super[G] post-ripristino#super[G].], [capitolato#super[G]],


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
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),


    [*RS01*], [*Autenticazione#super[G] semplice*], [capitolato#super[G]],
  [*RS01/01*], [Il sistema prevede l'implementazione dell'autenticazione#super[G] per l'accesso al sistema stesso.], [capitolato#super[G]],
  [*RS01/02*], [Il sistema deve garantire la protezione dei dati sensibili#super[G] durante il processo di autenticazione#super[G].], [capitolato#super[G]],
  [*RS01/03*], [Il sistema deve prevedere il logout.], [capitolato#super[G]],

  [*RS02*], [*Cifratura#super[G] end-to-end per tutti i dati scambiati.*], [capitolato#super[G]],
  [*RS02/01*], [Il sistema deve garantire la cifratura#super[G] dei dati durante tutta la comunicazione tra client#super[G], microservizi#super[G] e sistema centrale#super[G].], [capitolato#super[G]],
  [*RS02/02*], [Il sistema deve utilizzare protocolli#super[G] sicuri per la trasmissione.], [capitolato#super[G]],
  [*RS02/03*], [Il sistema deve proteggere i dati sensibili#super[G] sia in transito che in riposo.], [capitolato#super[G]],
  [*RS02/04*], [Il sistema deve assicurare che la cifratura#super[G] sia attiva per tutte le API#super[G] e i canali di comunicazione.], [capitolato#super[G]],

  [*RS03*], [*Monitoraggio#super[G] continuo per rilevare tentativi di accesso non autorizzati o attività sospette*], [capitolato#super[G]],
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
    [*Codice*], [*Descrizione*], [*Fonti*]

  ),


  [*RnF01*], [*Test unitari per garantire la correttezza delle funzioni sviluppate, anche dopo modifiche.*], [capitolato#super[G]],
  [*RnF01/01*], [Il sistema deve verificare#super[G] automaticamente il corretto comportamento delle singole funzioni.], [capitolato#super[G]],
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
  [*RnF04/04*], [Devono essere specificati i criteri di validazione#super[G] dei test.], [capitolato#super[G]],

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
    
  [*RnF07*], [*Progettazione architetturale ben documentata, presentata con diagrammi a blocchi e derivata da analisi dei requisiti#super[G] e dal contesto distribuito.*
  ], [capitolato#super[G]],

)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] non funzionali_]
#pagebreak()
== Tracciamento dei casi d'uso