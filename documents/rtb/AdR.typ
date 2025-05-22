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
#let versione = "0.1.2"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
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
  [Aggiunta descrizione glossario, descrizione requisiti#super[G] e aggiunta di tutti i requisiti#super[G]],

  [0.0.3],
  [17/04/2025],
  [N. Moretto],
  [S. Marana],
  [Aggiunta descrizione glossario, descrizione requisiti e aggiunta di tutti i requisiti],
  
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

#pagebreak()
== Lista dei Casi d'uso
=== - UC 1: Autenticazione
#label("uc-1")
#image("assets/Casi d'uso-UC1 - Autenticazione.drawio.png")
- *Attore Principale* : Utente
- *Precondizione* :
  - Il Sistema è attivo, in modalità online o offline 
  - L’Utente non è autenticato nel Sistema
- *Postcondizione* :
  - L’Utente ha eseguito l’accesso al Sistema.    Autenticandosi si ottiene i permessi di Supervisione Globale o Supervisore Locale sulla base del ruolo associato alle credenziali
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
  - L’Utente vuole autenticarsi per accedere al Sistema 
#pagebreak()
==== - UC 1.1: Inserimento Username
#label("uc-1.1")

- *Attore Principale* : Utente
- *Precondizione* :
  - Il Sistema è attivo, in modalità online o offline
  - L’Utente non è autenticato nel Sistema
  - L’Utente vuole autenticarsi per accedere al sistema
  - Il Sistema non riconosce lo Username inserito dall’Utente
- *Postcondizione* :
  - Il Sistema riceve lo Username con il quale l’Utente vuole autenticarsi per accedere al Sistema

- *Scenario principale* :
  - L’Utente inserisce il proprio Username
  - L’Utente inserisce la Password
- *Trigger* : 
  - L’Utente vuole autenticarsi per accedere al Sistema
==== - UC 1.2: Inserimento Password
#label("uc-1.2")
- *Attore Principale* : Utente
- *Precondizione* :
  - Il Sistema è attivo, in modalità online o offline
  - L’Utente non è autenticato nel Sistema
  - L’Utente vuole autenticarsi per accedere al sistema
  - Il Sistema non riconosce lo Username inserito dall’Utente
- *Postcondizione* :
  - Il Sistema riceve la Password con la quale l’Utente vuole autenticarsi per accedere al Sistema
- *Scenario principale* :
  - L’Utente inserisce la propria Password
- *Trigger* : 
  - L’Utente vuole autenticarsi per accedere al Sistema

#pagebreak() 
=== - UC 2: Autenticazione non riuscita
#label("uc-2")
#image("assets/Casi d'uso-UC-2.drawio.png")
- *Attore Principale* : Utente
- *Precondizione* :
  - Il Sistema è attivo, in modalità online o offline
  - L’Attore Principale non è autenticato nel Sistema
  - L’Attore Principale ha inserito, in fase di autenticazione, uno Username o una Password errata.
- *Postcondizione* :
  - Il Sistema annulla l’autenticazione
  - Il Sistema mostra a schermo circa l’errore di autenticazione
- *Scenario principale* :
  - L’Utente inserisce lo Username 
  - L’Utente inserisce la Password
- *Scenari alternativi* :
  - Il Sistema ha ricevuto Username e Password, ma le credenziali sono risultate errate
- *Inclusioni* :
  - #link(label("uc-20.3"))[UC 20.3]
- *Estensioni* :
  - #link(label("uc-20.4"))[UC 20.4]
=== - UC 3: Logout
#label("uc-3")
#image("assets/Casi d'uso-UC-3.drawio.png")
- *Attore Principale*: Utente
- *Precondizioni*: 
  - Il Sistema è attivo
  - L’Attore Principale è autenticato nel Sistema
- *Postcondizioni*: 
  - L’Utente viene disconnesso
  - Le funzionalità riservate non sono più accessibili fino a nuova autenticazione (login)
-  *Scenario principale*:
  - L’Utente clicca su “Logout” o seleziona l’opzione di disconnessione
  - Il Sistema termina la sessione dell’Utente
  - Il Sistema mostra la schermata iniziale o di login
- *Inclusioni*:
  - #link(label("uc-20.3"))[UC 20.3]
- *Estensioni* : 
  - #link(label("uc-1"))[UC 1 - Autenticazione (per rientrare)] 
- *Trigger*: 
  - Utente vuole uscire dal sistema

=== - UC 4: Rilevamento carenza scorte
#label("uc-4")
#image("assets/Casi d'uso-UC4.drawio.png")
- *Attore Principale* : Supervisore Locale, Supervisore Globale, Sistema
- *Precondizioni* : 
  - Il Sistema è attivo, in modalità online o offline
  - Le Soglie minime per i prodotti sono definite nel Sistema.
- *Postcondizioni* : 
  - I Supervisori sono notificati della carenza di scorte. L’evento è tracciato.
- *Scenario principale* :
  - Il Sistema monitora le scorte periodicamente.
  - Il Sistema verifica se qualche scorta è inferiore alla soglia minima.
  - Il Sistema, se rileva una carenza, genera un evento e invia una notifica ai Supervisori
  - I Supervisori accedono al sistema per visualizzare le carenze.
- *Scenari alternativi* :
  - La soglia minima non è definita → il Sistema salta il controllo per quel prodotto e genera un avviso di configurazione mancante.
  - L’accesso dei Supervisori non è disponibile → il Sistema registra comunque l’evento e invia un’email/sms
- *Inclusioni* :
  - #link(label("uc-4.1"))[UC 4.1]
  - #link(label("uc-4.2"))[UC 4.2]
- *Estensioni* :
  - #link(label("uc-4.3"))[UC 4.3]
  - #link(label("uc-4.4"))[UC 4.4]
  - #link(label("uc-13"))[UC 13]

==== - UC 4.1: Monitoraggio continuo delle scorte
#label("uc-4.1")
- *Attore Principale* : Sistema
- *Precondizioni* : 
  - Il Sistema è attivo, in modalità online o offline
  - Il Database delle giacenze è disponibile
- *Postcondizioni* : 
  - Il rilevamento aggiornato delle risorse è stato effettuato
- *Scenario principale* :
  - Il Sistema interroga il database o riceve input aggiornati
  - Il Sistema analizza i dati relativi alle giacenze
  - Il Sistema passi i dati aggiornati al modulo di identificazione carenza → #link(label("uc-4.2"))[UC 4.2]
- *Scenari alternativi* :
  - Il database è temporaneamente non accessibile → il Sistema tenta nuovamente dopo un intervallo definito.
- *Estensioni* :
  - #link(label("uc-4.1.1"))[UC 4.1.1]
- *Trigger* :
  - Timer interno al sistema oppure evento schedulato

===== - UC 4.1.1: Errore nel caricamento dei dati scorte
#label("uc-4.1.1")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - Il Sistema tenta di accedere ai dati scorte
  - Il database risponde con errore
  - Il Sistema ritenta l’operazione. Se fallisce, notifica il fallimento.
- *Inclusioni* : 
  - #link(label("uc-4.1"))[UC 4.1]
- *Trigger* : 
  - Fallimento nel recupero dei dati
#pagebreak()
==== - UC 4.2: Identificazione carenza scorte
#label("uc-4.2")
- *Attore Principale* : Sistema
- *Precondizioni* : 
  - Il Sistema è attivo, in modalità online o offline
  - Sono disponibili dati aggiornati sulle giacenze e soglie minime
- *Postcondizioni* : 
  - Per ogni prodotto sotto soglia, è presente un evento nel log e una notifica inviata almeno a un supervisore disponibile
- *Scenario principale* :
  - Il Sistema confronta la quantità disponibile con la soglia minima.
  - Se la quantità è sotto soglia, registra un evento di carenza.
  - Notifica i Supervisori e aggiorna il log degli eventi.
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
  - Invio notifica fallisce
  - Il Sistema tenta canale alternativo
  - Se tutti falliscono, registra un errore e allerta un amministratore
- *Inclusioni* : 
  - #link(label("uc-4.2"))[UC 4.2]
- *Trigger* : 
  - Invio notifica fallito    
===== - UC 4.2.2: Mancata definizione soglia minima
#label("uc-4.2.2")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - La soglia per un prodotto è mancante
  - Il prodotto viene ignorato temporaneamente
  - Il Sistema registra l’anomalia nei log
- *Inclusioni* : 
  - #link(label("uc-4.2"))[UC 4.2]
#pagebreak()
===== - UC 4.2.3: Log di sistema pieno o non scrivibile
#label("uc-4.2.3")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - Il Sistema tenta la scrittura del log
  - L’operazione fallisce (ad esempio: spazio pieno)
  - Viene generata una notifica tecnica
- *Inclusioni* : 
  - #link(label("uc-4.2"))[UC 4.2]
- *Trigger* : 
  - Fallimento nella scrittura del log
==== - UC 4.3: Accesso ai dettagli della carenza non riuscito
#label("uc-4.3")
- *Attore Principale* : Supervisore Locale, Supervisore Globale
- *Scenario principale* :
  - Il Supervisore tenta di visualizzare l’evento
  - Il Sistema non riesce a caricare i dati
  - Il Sistema mostra un messaggio di errore
- *Inclusioni* : 
  - #link(label("uc-4.1"))[UC 4.1]
- *Trigger* : 
  - Tentativo di accesso ai dettagli
==== - UC 4.4: Supervisore non disponibile
#label("uc-4.4")
- *Attore Principale* : Sistema
- *Scenario principale* :
  - Il Sistema tenta di inviare la notifica.
  - L’account del supervisore non è disponibile
  - Tenta di avvisare un supervisore alternativo
- *Inclusioni* : 
  - #link(label("uc-4.1"))[UC 4.1]
- *Trigger* : 
  - Supervisore non raggiungibile/disponibile
=== - UC 5: Trasferimento di scorte tra magazzini
#label("uc-5")
#image("assets/Casi d'uso-UC5.drawio.png")
- *Attore Principale* : Supervisore Locale, Supervisore Globale, Sistema
- *Precondizioni* :
  - Il Sistema è attivo, in modalità online o offline
  - L’Utente è autenticato con i permessi necessari (Supervisore Locale o Globale)
  - Sono presenti almeno due magazzini registrati. Entrambi (origine e destinazione) sono attivi nel sistema
- *Postcondizioni* :
  - L’inventario globale viene aggiornato in entrambi i magazzini
  - La richiesta viene registrata e tracciata nel Sistema
- *Scenario Principale* :
  - Il Supervisore richiede un trasferimento tra magazzini → #link(label("uc-5.1"))[UC 5.1]
  - Il sistema verifica la disponibilità delle scorte nel magazzino di origine → #link(label("uc-5.2"))[UC 5.2]
  - Se la verifica è positiva, il sistema aggiorna l’inventario di origine e destinazione → #link(label("uc-5.3"))[UC 5.3]
  - Il sistema genera un ID di tracciamento del trasferimento → #link(label("uc-5.4"))[UC 5.4]
  - Lo stato del trasferimento viene aggiornato in tempo reale fino al completamento → #link(label("uc-5.5"))[UC 5.5]
- *Scenario Alternativo* :
  - Le scorte richieste non sono disponibili → il sistema blocca la richiesta e notifica l’errore
  - Il tracciamento in tempo reale fallisce → il sistema registra aggiornamenti asincroni
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
  - Il Supervisore avvia una richiesta di trasferimento

==== - UC 5.1: Invio richiesta di trasferimento
#label("uc-5.1")
- *Attore Principale* : Supervisore Locale, Supervisore Generale, Sistema
- *Precondizioni* :
  - Supervisore è autenticato
  - I magazzini selezionati esistono nel sistema
- *Postcondizioni* :
  - Una richiesta formale di trasferimento è inviata al sistema
- *Scenario Principale* :
  - Il supervisore seleziona magazzino di origine e destinazione
  - Inserisce i prodotti e le quantità da trasferire
  - Invia la richiesta
  - Il sistema la registra e passa alla fase di validazione
==== - UC 5.2: Validazione disponibilità scorte
#label("uc-5.2")
- *Attore Principale* : Sistema
- *Precondizioni* :
  - È stata inviata una richiesta di trasferimento
- *Postcondizioni* :
  - Le quantità richieste sono validate o rifiutate
- *Scenario Principale* :
  - Il sistema recupera i dati dell’inventario del magazzino di origine
  - Confronta la quantità richiesta con quella disponibile
  - Se la disponibilità è sufficiente, prosegue con il trasferimento
- *Scenari Alternativi* :
  - Scorte non sufficienti → il Sistema blocca la richiesta e notifica l’errore
  - Il Supervisore può modificare la quantità o annullare l’operazione
==== - UC 5.3: Aggiornamento inventario di entrambi i magazzini
#label("uc-5.3")
- *Attore Principale* : Sistema
- *Precondizioni* :
  - La disponibilità delle scorte è stata validata
- *Postcondizioni* :
  - L’inventario del magazzino di origine viene decrementato
  - L’inventario del magazzino di destinazione viene incrementato
- *Scenario Principale* :
  - Il sistema decrementa le quantità dal magazzino di origine
  - In parallelo o al completamento, incrementa le quantità nel magazzino di destinazione
  - Registra l’operazione
#pagebreak()
==== - UC 5.4: Tracciamento del trasferimento dei prodotti
#label("uc-5.4")
- *Attore Principale* : Sistema
- *Precondizioni* :
  - La disponibilità delle scorte è stata validata
- *Postcondizioni* :
  - L’inventario del magazzino di origine viene decrementato
  - L’inventario del magazzino di destinazione viene incrementato
- *Scenario Principale* :
  - Il sistema decrementa le quantità dal magazzino di origine
  - In parallelo o al completamento, incrementa le quantità nel magazzino di destinazione
  - Registra l’operazione
- *Estensioni* :
  - #link(label("uc-5.8"))[UC 5.8]
==== - UC 5.5: Aggiornamento stato del trasferimento
#label("uc-5.5")
- *Attore Principale* : Sistema, Supervisore
- *Precondizioni* :
  - Il trasferimento è in corso
- *Postcondizioni* :
  - Lo stato viene aggiornato fino a “Completato” o “Fallito”
- *Scenario Principale* :
  - Il sistema aggiorna lo stato mano a mano che il processo avanza (es. preparazione, transito, consegnato…)
  - Eventuali anomalie vengono registrate e notificate
  - Al completamento, lo stato è impostato su “Completato”
- *Estensioni* :
  - #link(label("uc-5.7"))[UC 5.7]
==== - UC 5.6: Annullamento richiesta di trasferimento
#label("uc-5.6")
- *Attore Principale* : Supervisore Globale, Supervisore Locale
- *Precondizioni* :
  - Esiste una richiesta di trasferimento non ancora completata (in corso)
- *Postcondizioni* :
  - Il trasferimento viene annullato e lo stato aggiornato a “Annullato”
  - Non viene eseguita alcuna modifica agli inventari (se non già applicata)
- *Scenario Principale* :
  - Il supervisore seleziona un trasferimento in stato "In attesa" o "In transito"
  - Il supervisore "Annulla"
  - Il sistema conferma l’intenzione
  - Il sistema aggiorna lo stato a “Annullato”
  - Eventuali risorse prenotate (es. veicoli, operatori) vengono liberate
#pagebreak()
==== - UC 5.7: Notifica automatica esito trasferimento
#label("uc-5.7")
- *Attore Principale* : Sistema, Supervisore Globale, Supervisore Locale
- *Precondizioni* :
  - Il trasferimento ha cambiato stato (es. da “In transito” a “Consegnato”)
- *Postcondizioni* :
  - L’utente supervisore riceve una notifica con lo stato aggiornato
- *Scenario Principale* :
  - Il sistema monitora il cambiamento dello stato
  - Quando il trasferimento passa a “Consegnato” o “Fallito”, il sistema invia una notifica
  - Il supervisore riceve una notifica o un alert in dashboard
- *Trigger* :
  - Il sistema rileva una modifica di stato rilevante
==== - UC 5.8: Registrazione storico trasferimenti
#label("uc-5.8")
- *Attore Principale* : Sistema
- *Precondizioni* :
  - Il trasferimento è stato registrato e ha un ID
- *Postcondizioni* :
  - I dati vengono salvati in archivio storico che può essere consultato
- *Scenario Principale* :
  - Al termine del trasferimento, il sistema raccoglie tutti i dati associati
  - Salva il record in un archivio storico
  - Il record è consultabile da reportistica o cruscotti
- *Trigger* :
  - Completamento del trasferimento
#pagebreak()
=== - UC 6: Gestione scorte minime necessarie
#label("uc-6")
#image("assets/Casi d'uso-UC6.drawio.png")
- *Attori Principali* : Sistema, Supervisore Locale, Supervisore Globale
- *Precondizioni* :
  - Il Sistema è attivo e in esecuzione periodica o su richiesta
  - L’utente ha accesso al sistema come supervisore
  - L’inventario dei prodotti è già stato inizializzato
- *Postcondizioni* :
  - Le scorte minime sono definite, calcolate e viene attivato un monitoraggio costante
- *Scenario principale* :
  - Il supervisore accede al sistema
  - Definisce manualmente i livelli minimi per ciascun prodotto → #link(label("uc-6.1"))[UC 6.1]
  - Il sistema calcola dinamicamente i livelli minimi suggeriti → #link(label("uc-6.2"))[UC 6.2]
  - Il sistema monitora in tempo reale le scorte rispetto al minimo → #link(label("uc-6.3"))[UC 6.3]
  - Se necessario, vengono suggerite o attivate azioni correttive → #link(label("uc-6.4"))[UC 6.4], #link(label("uc-6.5"))[UC 6.5]
- *Scenari alternativi* :
  - Mancanza dati minimi configurati per alcuni prodotti
  - Il Sistema notifica l’anomalia al Supervisore Globale
- *Inclusioni* :
  - #link(label("uc-6.1"))[UC 6.1]
  - #link(label("uc-6.2"))[UC 6.2]
  - #link(label("uc-6.3"))[UC 6.3]
  - #link(label("uc-7"))[UC 7]
- *Estensioni* :
  - #link(label("uc-6.4"))[UC 6.4]
  - #link(label("uc-6.5"))[UC 6.5]
- *Trigger* :
  - Ciclo schedulato automatico
  - Richiesta esplicita da parte del Supervisore
  - Inizializzazione o modifica delle soglie
  - Cambiamenti nell’inventario (arrivi, trasferimenti, ordini, …)

==== - UC 6.1: Definizione manuale del livello minimo di scorte
#label("uc-6.1")
- *Attori Principali* : Supervisore Locale, Supervisore Globale
- *Precondizioni* :
  - Il prodotto è registrato nel sistema
  - L’utente ha i permessi per la modifica
- *Postcondizioni* :
  - Il livello minimo viene salvato nel sistema
- *Scenario principale* :
  - Il supervisore seleziona un prodotto
  - Inserisce la soglia minima desiderata
  - Il sistema salva il valore nel database
- *Scenari alternativi* :
  - Il supervisore inserisce una soglia non valida
  - Il sistema mostra un errore a schermo
==== - UC 6.2: Calcolo automatico del livello minimo di scorte
#label("uc-6.2")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - Sono disponibili dati storici di consumo per il prodotto
- *Postcondizioni* :
  - Viene calcolata una soglia minima suggerita (basata su media o modelli previsionali)
- *Scenario principale* :
  - Il sistema analizza i dati di vendita e consumo
  - Applica una formula (es. media giornaliera…)
  - Salva il livello suggerito
- *Scenari alternativi* :
  - Mancanza di dati
  - Viene proposta una soglia di default
==== - UC 6.3: Monitoraggio scorte minime
#label("uc-6.3")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - I livelli minimi sono definiti o calcolati
  - L’inventario è aggiornato
- *Postcondizioni* :
  - Il sistema rileva eventuali scorte sotto la soglia e può generare estensioni
- *Scenario principale* :
  - Il sistema confronta costantemente scorte attuali e soglie minime
  - Quando rileva un prodotto sotto soglia → #link(label("uc-6.4"))[UC 6.4], #link(label("uc-6.5"))[UC 6.5]
- *Estensioni* :
  - #link(label("uc-6.4"))[UC 6.4]
  - #link(label("uc-6.5"))[UC 6.5]
#pagebreak()
==== - UC 6.4: Suggerimento azioni di riassortimento
#label("uc-6.4")
- *Attori Principali* : Sistema, Supervisore Locale, Supervisore Globale
- *Precondizioni* :
  - Il sistema ha rilevato scorte inferiori alla soglia minima
- *Postcondizioni* :
  - Il sistema propone un riassortimento (da fornitore o trasferimento interno)
- *Scenario principale* :
  - Il sistema identifica un prodotto sotto soglia
  - Propone:
    - Riassortimento da fornitore
    - Trasferimento da altro magazzino
  - Il supervisore approva o modifica il suggerimento
==== - UC 6.5: Notifica superamento soglia critica
#label("uc-6.5")
- *Attori Principali* : Sistema, Supervisore Locale, Supervisore Globale
- *Precondizioni* :
  - Le scorte di un prodotto sono scese sotto un livello critico predefinito (ancora più basso della soglia minima)
- *Postcondizioni* :
  - L’utente riceve una notifica urgente
- *Scenario principale* :
  - Il sistema rileva che il livello critico è stato superato
  - Invia una notifica urgente al supervisore
  - Può forzare la priorità del riassortimento
#pagebreak()
=== - UC 7: Bilanciamento scorte tra magazzini
#label("uc-7")
#image("assets/Casi d'uso-UC7.drawio.png")
- *Attori Principali* : Sistema, Supervisore Globale
- *Precondizioni* :
  - Il Sistema dispone di dati aggiornati sui livelli di sicurezza delle scorte
  - Sono definiti i criteri di bilanciamento
- *Postcondizioni* :
  - Il sistema ha valutato la distribuzione delle scorte
  - Sono state proposte o avviati i trasferimenti o altre azioni correttive
- *Scenario principale* :
  - Il Sistema analizza la distribuzione delle scorte → #link(label("uc-7.1"))[UC 7.1]
  - Identifica eventuali squilibri → #link(label("uc-7.2"))[UC 7.2]
  - Effettua trasferimenti → #link(label("uc-7.3"))[UC 7.3]
  - Valuta se automatizzare il riassortimento → #link(label("uc-7.4"))[UC 7.4]
  - Verifica che i livelli minimi di sicurezza siano rispettati → #link(label("uc-4"))[UC 4]
- *Scenari alternativi* :
  - Le proposte di trasferimento violano i livelli minimi → scartate
  - Il Supervisore richiede intervento manuale → sistema non automatizza
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
  - Attivazione programmata
  - Supervisore Globale fa richiesta esplicita
#pagebreak()
==== - UC 7.1: Analisi distribuzione delle scorte
#label("uc-7.1")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - I dati di inventario sono disponibili e aggiornati
- *Postcondizioni* :
  - Il sistema ha ottenuto una mappa o lista della distribuzione per prodotto
- *Scenario principale* :
  - Il Sistema raccoglie dati da tutti i magazzini
  - Analizza le quantità e il fabbisogno previsto
  - Elabora un report con la situazione attuale
- *Trigger* :
  - Inizio processo di bilanciamento
==== - UC 7.2: Identificazione squlibri tra magazzini
#label("uc-7.2")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - è disponibile il risultato dell’analisi → #link(label("uc-7.1"))[UC 7.1]
- *Postcondizioni* :
  - Viene individuata una lista di squilibri significativi
- *Scenario principale* :
  - Il Sistema confronta i livelli di stock tra magazzini
  - Applica regole predefinite per identificare squilibri
  - Memorizza gli esiti per successive valutazioni
==== - UC 7.3: Effettuazione di trasferimenti per bilanciare
#label("uc-7.3")
- *Attori Principali* : Sistema, Supervisore Locale
- *Precondizioni* :
  - è necessario spostare scorte tra magazzini per bilanciare
- *Postcondizioni* :
  - Il sistema ha generato o richiesto l’esecuzione di un trasferimento interno
- *Scenario principale* :
  - Il Sistema genera una richiesta di trasferimento
  - Invia la richiesta ai Supervisori coinvolti
  - Il trasferimento viene pianificato e tracciato
==== - UC 7.4: Automatizzazione del riassortimento
#label("uc-7.4")
- *Attori Principali* : Sistema, Supervisore Globale
- *Precondizioni* :
  - Il Supervisore ha autorizzato l’automazione oppure è prevista da policy
- *Postcondizioni* :
  - Il riassortimento è stato avviato automaticamente
- *Scenario principale* :
  - Il Sistema verifica i criteri per l’automazione
  - Se i criteri sono rispettati, genera l’ordine di riassortimento
  - Aggiorna lo stato operativo
- *Scenari alternativi* :
  - Non tutti i criteri sono soddisfatti → Il Sistema richiede approvazione manuale
==== - UC 7.5: Notifica proposta di bilanciamento
#label("uc-7.5")
- *Attori Principali* : Sistema, Supervisore Globale
- *Precondizioni* :
  - Una proposta è stata generata
- *Postcondizioni* :
  - Il Supervisore riceve notifica e può approvare o rifiutare
- *Scenario principale* :
  - Il Sistema crea il dettaglio della proposta
  - Invia notifica al Supervisore Globale
  - Attende conferma o rifiuto
- *Inclusioni* :
  - #link(label("uc-7.3"))[UC 7.3]
==== - UC 7.6: Fallimento trasferimento interno
#label("uc-7.6")
- *Attori Principali* : Sistema, Supervisore Locale
- *Precondizioni* :
  - Un trasferimento interno è stato programmato
- *Postcondizioni* :
  - Il sistema registra il fallimento e notifica il Supervisore
- *Scenario principale* :
  - Il trasferimento non avviene per motivi tecnici o logistici
  - Il sistema rileva il problema
  - Registra l’errore e invia una notifica al Supervisore Locale
- *Inclusioni* :
  - #link(label("uc-4"))[UC 4]
#pagebreak()
=== - UC 8: Gestione suggerimenti per riassortimento e trasferimento
#label("uc-8")
#image("assets/Casi d'uso-UC8 .drawio.png")
- *Attori Principali* : Sistema, Supervisore Locale, Supervisore Globale
- *Precondizioni* :
  - Il sistema ha dati aggiornati sulle scorte e sui livelli minimi
  - Il supervisore è autenticato
- *Postcondizioni* :
  - Le raccomandazioni sono state analizzate, approvate o rifiutate
- *Scenario principale* :
  - Il sistema rileva condizioni che richiedono un riassortimento o trasferimento (es. soglia minima superata)
  - Il sistema genera raccomandazioni per azioni correttive → #link(label("uc-8.1"))[UC 8.1]
  - Il supervisore visualizza i suggerimenti
  - Le azioni vengono avviate → #link(label("uc-8.2"))[UC 8.2]
- *Inclusioni* :
  - #link(label("uc-8.1"))[UC 8.1]
- *Estensioni* :
  - #link(label("uc-8.2"))[UC 8.2]
- *Trigger* :
  - Superamento soglia minima o squilibrio tra magazzini
#pagebreak()
==== - UC 8.1: Generazione suggerimenti automatici
#label("uc-8.1")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - I dati sulle scorte e soglie minime sono aggiornati
- *Postcondizioni* :
  - Il sistema propone azioni di riassortimento o trasferimento
- *Scenario principale* :
  - Il sistema rileva prodotti con scorte sotto la soglia
  - Verifica magazzini alternativi o fornitori
  - Genera un suggerimento di trasferimento o riassortimento
  - Salva la proposta per approvazione
- *Scenari alternativi* :
  - Nessuna azione consigliabile → Il sistema non genera suggerimenti
==== - UC 8.2: Esecuzione delle azioni
#label("uc-8.2")
- *Attori Principali* : Sistema
- *Precondizioni* :
  - Il sistema ha individuato una proposta di riassortimento o trasferimento
- *Postcondizioni* :
  - Il sistema avvia automaticamente l’azione (es. invia ordine o richiesta di trasferimento)
- *Scenario principale* :
  - Il sistema ha individuato una proposta di riassortimento o trasferimento
  - In caso di trasferimento → genera richiesta tra magazzini
  - In caso di riassortimento → invia ordine al fornitore
  - Aggiorna lo stato del suggerimento come “In esecuzione”
#pagebreak()
=== - UC 9: Individuazione di magazzini offline
#label("uc-9")
#image("assets/Casi d'uso-UC9.drawio.png")
- *Attori Principali*: Sistema, Supervisore Locale, Supervisore Globale
- *Precondizioni*:
  - Il sistema è operativo e tutti i magazzini sono registrati
  - Le connessioni sono attive o monitorabili
- *Postcondizioni*:
  - Lo stato di connettività di ciascun magazzino è aggiornato
  - Eventuali disconnessioni sono rilevate e notificate
- *Scenario principale*:
  - Il sistema esegue periodicamente controlli di connettività → #link(label("uc-9.1"))[UC 9.1]
  - In caso di disconnessione, il sistema genera una segnalazione → #link(label("uc-9.2"))[UC 9.2]
  - Lo stato di un magazzino viene aggiornato come offline, online, non operativo, operativo → #link(label("uc-9.3"))[UC 9.3]
  - Se un magazzino torna online, lo stato viene aggiornato e le operazioni riprendono normalmente
  - Se la disconnessione ha bloccato suggerimenti di riassortimento, viene eventualmente attivato nuovamente il flusso → #link(label("uc-8"))[UC 8]
- *Inclusioni*:
  - #link(label("uc-9.1"))[UC 9.1]
  - #link(label("uc-9.3"))[UC 9.3]
- *Estensioni*:
  - #link(label("uc-9.2"))[UC 9.2]
  - #link(label("uc-8"))[UC 8] (attivato quando magazzino torna operativo)
- *Trigger*:
  - Pianificazione temporizzata del controllo
  - Cambiamento improvviso dello stato di rete
  - Rientro online di un nodo/magazzino
#pagebreak()
==== - UC 9.1: Controllo periodico della connettività
#label("uc-9.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - I magazzini sono registrati nel sistema
  - La rete è parzialmente o totalmente attiva
- *Postcondizioni*:
  - Lo stato di connessione viene aggiornato (o viene attivata un'estensione)
- *Scenario principale*:
  - Il sistema effettua un ping o heartbeat a ogni magazzino
  - Attende la risposta per un periodo massimo definito
  - Se la risposta non arriva → attiva #link(label("uc-9.2"))[UC 9.2]
  - Se la risposta è positiva → stato “online”
- *Estensioni*:
  - #link(label("uc-9.2"))[UC 9.2]
  - #link(label("uc-11"))[UC 11]
==== - UC 9.2: Generazione notifica di disconnessione
#label("uc-9.2")
- *Attori Principali*: Sistema, Supervisore Locale / Globale
- *Precondizioni*:
  - Un magazzino non ha risposto alla verifica di connettività
- *Postcondizioni*:
  - Il sistema invia una notifica dell’anomalia
  - Lo stato del magazzino è aggiornato a “offline”
- *Scenario principale*:
  - Il sistema rileva che il magazzino non risponde
  - Crea una notifica di disconnessione
  - Invia la notifica ai supervisori abilitati
  - Aggiorna lo stato del magazzino in “offline”
==== - UC 9.3: Aggiornamento stato del magazzino
#label("uc-9.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema ha eseguito un controllo o ha ricevuto un evento dallo stato operativo del nodo
- *Postcondizioni*:
  - Lo stato del magazzino viene aggiornato e reso visibile ai supervisori
- *Scenario principale*:
  - Il sistema rileva o riceve una variazione di stato (manuale o automatica)
  - Classifica il magazzino come:
    - Online: connesso e funzionante
    - Offline: disservizio di rete = non connesso
    - Operativo: abilitato a svolgere tutte le funzioni
    - Non operativo: disservizio fisico (es. da manutenzione o guasti)
  - Mostra lo stato aggiornato nell’interfaccia supervisori
- *Estensioni*:
  - #link(label("uc-8"))[UC 8] → se magazzino torna online
=== - UC 10: Gestione dei disservizi
#label("uc-10")
#image("assets/Casi d'uso-UC10.drawio.png")
- *Attori Principali*: Sistema, Supervisore Locale, Supervisore Globale
- *Precondizioni*:
  - Il sistema è attivo
  - I magazzini sono registrati
  - È abilitato il monitoraggio continuo
- *Postcondizioni*:
  - Il disservizio viene classificato (offline o non operativo)
  - Lo stato del magazzino viene aggiornato
  - Se necessario, viene attivato un trasferimento di scorte a magazzini vicini
- *Scenario principale*:
  - Il sistema monitora costantemente i magazzini → #link(label("uc-10.1"))[UC 10.1]
  - Un magazzino risulta non raggiungibile o guasto
  - Il sistema classifica il disservizio:
    - Se di rete → #link(label("uc-10.3"))[UC 10.3]
    - Se fisico → #link(label("uc-10.2"))[UC 10.2]
  - Se un magazzino offline diventa non operativo → #link(label("uc-10.4"))[UC 10.4]
  - Se il magazzino è non operativo, il sistema attiva il trasferimento di scorte → #link(label("uc-10.5"))[UC 10.5]
  - Supervisori sono informati via notifica
- *Inclusioni*:
  - #link(label("uc-10.1"))[UC 10.1]
- *Estensioni*:
  - #link(label("uc-10.2"))[UC 10.2]
  - #link(label("uc-10.3"))[UC 10.3]
  - #link(label("uc-10.4"))[UC 10.4]
  - #link(label("uc-10.5"))[UC 10.5]
- *Trigger*:
  - Eventi di guasto, disconnessione, o cambio di stato
==== - UC 10.1: Monitoraggio stato operativo
#label("uc-10.1")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Il sistema è attivo
  - I magazzini inviano segnali periodici
- *Postcondizioni*:
  - Stato aggiornato come operativo/non operativo/offline
- *Scenario principale*:
  - Il sistema verifica connettività e integrità dei nodi
  - Se fallisce uno dei due controlli → attiva estensione #link(label("uc-10.2"))[UC 10.2] o #link(label("uc-10.3"))[UC 10.3]
- *Estensioni*:
  - #link(label("uc-10.2"))[UC 10.2]
  - #link(label("uc-10.3"))[UC 10.3]

==== - UC 10.2: Rilevamento disservizio fisico
#label("uc-10.2")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Ricevuti segnali di guasto hardware o software critico
- *Postcondizioni*:
  - Stato magazzino impostato a non operativo
  - Supervisori informati
- *Scenario principale*:
  - Il sistema riceve un errore hardware o di servizio locale
  - Aggiorna lo stato del magazzino in non operativo
  - Notifica il disservizio
==== - UC 10.3: Rilevamento disservizio di rete
#label("uc-10.3")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Magazzino non risponde ai ping o segnali di rete
- *Postcondizioni*:
  - Stato aggiornato a offline
- *Scenario principale*:
  - Il sistema rileva assenza di connessione
  - Imposta lo stato a offline
  - Avvia monitoraggio continuato
#pagebreak()
==== - UC 10.4: Transizione da offline a non operativo
#label("uc-10.4")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Un magazzino è già offline
  - Si rileva successivamente un errore hardware
- *Postcondizioni*:
  - Stato aggiornato a non operativo
- *Scenario principale*:
  - Magazzino è offline → #link(label("uc-10.3"))[UC 10.3]
  - Viene rilevato un guasto hardware in parallelo
  - Il sistema aggiorna lo stato a non operativo
  - Attiva trasferimento scorte → #link(label("uc-10.5"))[UC 10.5]
- *Inclusioni*:
  - #link(label("uc-10.3"))[UC 10.3]
- *Estensioni*:
  - #link(label("uc-10.5"))[UC 10.5]
==== - UC 10.5: Attivazione trasferimento emergenziale
#label("uc-10.5")
- *Attori Principali*: Sistema
- *Precondizioni*:
  - Un magazzino è non operativo
  - Altri magazzini hanno disponibilità di scorte
- *Postcondizioni*:
  - Le scorte sono riposizionate presso i magazzini vicini
- *Scenario principale*:
  - Il sistema valuta le scorte nei magazzini circostanti
  - Determina quantità e priorità dei prodotti da trasferire
  - Attiva un flusso di trasferimento automatizzato → #link(label("uc-5"))[UC 5]
  - Aggiorna lo stato e l’inventario di origine/destinazione
- *Estensioni*:
  - #link(label("uc-5"))[UC 5]
=== - UC 11: Gestione magazzino che torna online
#label("uc-11")

==== - UC 11.1: Rilevamento ritorno online
#label("uc-11.1")

==== - UC 11.2: Sincronizzazione dati inventario
#label("uc-11.2")

==== - UC 11.3: Risoluzione conflitti di dati
#label("uc-11.3")

=== - UC 12: Monitoraggio centralizzato delle scorte
#label("uc-12")

==== - UC 12.1: Visualizzazione dashboard scorte distribuite
#label("uc-12.1")

==== - UC 12.2: Interrogazione microservizio cloud inventario
#label("uc-12.2")

==== - UC 12.3: Notifica automatica in caso di soglia critica raggiunta
#label("uc-12.3")

=== - UC 13: Mantenimento livelli di sicurezza scorte
#label("uc-13")

==== - UC 13.1: Definizione soglia temporale massima
#label("uc-13.1")

==== - UC 13.2: Attivazione azioni correttive
#label("uc-13.2")

=== - UC 14: Gestione delle prestazioni sotto carico
#label("uc-14")

==== - UC 14.1: Bilanciamento del carico
#label("uc-14.1")

==== - UC 14.2: Monitoraggio in tempo reale delle risorse
#label("uc-14.2")

==== - UC 14.3: Gestione dinamica delle risorse
#label("uc-14.3")

==== - UC 14.4: Notifica collo di bottiglia
#label("uc-14.4")

==== - UC 14.5: Attivazione fallback su risorse di backup
#label("uc-14.5")

=== - UC 15: Gestione aggiornamenti simultanei dell’inventario
#label("uc-15")

==== - UC 15.1: Applicazione controllo versioni o timestamp
#label("uc-15.1")

==== - UC 15.2: Identificazione di conflitti di aggiornamento
#label("uc-15.2")

==== - UC 15.3: Risoluzione dei conflitti di aggiornamento
#label("uc-15.3")

==== - UC 15.4: Segnalazione conflitto irrisolto
#label("uc-15.4")

=== - UC 16: Gestione ordini simultanei per uno stesso prodotto
#label("uc-16")

==== - UC 16.1: Coordinamento ordini simultanei
#label("uc-16.1")

==== - UC 16.2: Assegnazione delle scorte secondo criteri predefiniti
#label("uc-16.2")

==== - UC 16.3: Applicazione di criteri di priorità
#label("uc-16.3")

==== - UC 16.4: Segnalazione ordine in conflitto non risolvibile
#label("uc-16.4")

=== - UC 17: Gestione autonoma delle operazioni di magazzino come edge nodes
#label("uc-17")

==== - UC 17.1: Abilitazione operazioni locali su inventario
#label("uc-17.1")

==== - UC 17.2: Esecuzione elaborazioni locali
#label("uc-17.2")

==== - UC 17.3: Sincronizzare con il cloud in seguito a operazione di scrittura
#label("uc-17.3")

==== - UC 17.4: Delega elaborazione al cloud
#label("uc-17.4")

==== - UC 17.5: Sincronizzare posticipata
#label("uc-17.5")

=== - UC 18: Gestione distribuita dei servizi per i magazzini
#label("uc-18")

==== - UC 18.1: Distribuzione funzionalità su microservizi
#label("uc-18.1")

==== - UC 18.2: Gestione resilienza dei servizi
#label("uc-18.2")

==== - UC 18.3: Gestione scalabilità dei servizi
#label("uc-18.3")

=== - UC 19: Monitoraggio continuo delle attività di sistema
#label("uc-19")

==== - UC 19.1: Raccolta log e metriche
#label("uc-19.1")

==== - UC 19.2: Analisi eventi anomali
#label("uc-19.2")

==== - UC 19.3: Generazione report periodici
#label("uc-19.3")

==== - UC 19.4: Notifica automatica di eventi critici
#label("uc-19.4")

=== - UC 20: Gestione sicurezza accessi e autorizzazioni
#label("uc-20")

==== - UC 20.1: Autenticazione utenti
#label("uc-20.1")

==== - UC 20.2: Autorizzazione operazioni per ruolo
#label("uc-20.2")

==== - UC 20.3: Registrazione attività utente
#label("uc-20.3")

==== - UC 20.4: Invio allarmi in tempo reale
#label("uc-20.4")

=== - UC 21: Backup e ripristino dati
#label("uc-21")

==== - UC 21.1: Backup periodico inventario
#label("uc-21.1")

==== - UC 21.2: Ripristino da backup
#label("uc-21.2")

==== - UC 21.3: Verifica integrità dati backup
#label("uc-21.3")

=== - UC 22: Reportistica e analisi dati
#label("uc-22")

==== - UC 22.1: Generazione report periodici
#label("uc-22.1")

==== - UC 22.2: Analisi trend scorte
#label("uc-22.2")

==== - UC 22.3: Personalizzazione report
#label("uc-22.3")

=== - UC 23: Gestione notifiche e allarmi
#label("uc-23")

==== - UC 23.1: Configurazione soglie notifiche
#label("uc-23.1")

==== - UC 23.2: Invio notifiche automatiche
#label("uc-23.2")

==== - UC 23.3: Gestione conferma e escalation
#label("uc-23.3")

=== - UC 24: Integrazione con sistemi esterni
#label("uc-24")

==== - UC 24.1: Sincronizzazione dati con ERP
#label("uc-24.1")

==== - UC 24.2: Interfaccia API per terze parti
#label("uc-24.2")

==== - UC 24.3: Gestione errori di integrazione
#label("uc-24.3")

=== - UC 25: Manutenzione e aggiornamento sistema
#label("uc-25")

==== - UC 25.1: Aggiornamento software
#label("uc-25.1")

==== - UC 25.2: Monitoraggio stato sistema
#label("uc-25.2")

==== - UC 25.3: Intervento manutentivo
#label("uc-25.3")


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

  
    [*RF09*], [*Visibilità centrale in tempo reale di tutte le scorte#super[G] distribuite (monitoraggio livelli inventario#super[G]), di ogni magazzino (anche indipendentemente).*], [capitolato#super[G]],
  [*RF09/01*], [Il sistema deve fornire una dashboard#super[G] centralizzata per monitorare le scorte#super[G].], [capitolato#super[G]],
  [*RF09/02*], [Il sistema deve interrogare il database di aggregazione del microservizio#super[G] di inventario#super[G] su cloud per avere una visione centralizzata delle scorte#super[G] di ogni magazzino.], [capitolato#super[G]],

  [*RF10*], [*Mantenimento dei livelli di sicurezza delle scorte#super[G] in ogni magazzino in caso di carenze o ritardi.*], [capitolato#super[G]],
  [*RF10/01*], [Definire una soglia temporale massima come tempo stimato di arrivo di una richiesta.], [capitolato#super[G]],
  [*RF10/02*], [In caso di superamento della soglia, il sistema deve attivare delle azioni correttive (es.: invio di nuove richieste).], [capitolato#super[G]],

    [*RF11*], [*Mantenimento di prestazioni elevate anche con carichi elevati di dati e richieste simultanee.*], [capitolato#super[G]],
  [*RF11/01*], [ Il sistema deve implementare un meccanismo di bilanciamento del carico tra i servizi#super[G] per distribuire in modo efficiente le richieste.], [capitolato#super[G]],
  [*RF11/02*], [Il sistema deve monitorare l'utilizzo delle risorse in tempo reale.], [capitolato#super[G]],
  [*RF11/03*], [Il sistema deve gestire le risorse in modo dinamico evitando problemi prestazionali (es. gestione code, scalabilità automatica).], [capitolato#super[G]],
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

    [*RS01*], [*Autenticazione#super[G] semplice*], [capitolato#super[G]],
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
    
  [*RnF07*], [*Progettazione architetturale ben documentata, presentata con diagrammi a blocchi e derivata da analisi dei requisiti#super[G] e dal contesto distribuito.*
  ], [capitolato#super[G]],
)
#align(center)[_Tabella #tabella_counter: Requisiti#super[G] non funzionali_]
#pagebreak()
== Tracciamento dei casi d'uso