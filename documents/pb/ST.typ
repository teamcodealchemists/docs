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

#let titolo = "Specifica Tecnica"
#let status = "In redazione"
#let destinatario = "M31"

#let versione = "0.8.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)


#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

  [0.8.0],
  [15/09/2025],
  [A. Shu],
  [],
  [Completata specifica del Microservizio di Inventario Aggregato, Aggiornamento Microservizio di Ordini Aggregato e revisione generale del documento portando aggiornamento dei attributi e metodi mancanti nei microservizi già esistenti, aggiunta immagini mancanti],

  [0.7.0],
  [11/09/2025],
  [S. Speranza],
  [],
  [Completata specifica del Microservizio di Autenticazione],

  [0.6.1],
  [08/09/2025],
  [S. Speranza],
  [],
  [Iniziata specifica del Microservizio di Autenticazione],

  [0.6.0],
  [08/09/2025],
  [S. Speranza],
  [],
  [Completata specifica del Microservizio Ordini],

  [0.5.0],
  [07/09/2025],
  [S. Speranza],
  [],
  [Completata specifica del Microservizio Inventario],

  [0.4.0],
  [30/08/2025],
  [A. Shu],
  [N. Moretto],
  [Aggiunta breve descrizioni sui microservizi (inventario, state, Cloud State, Sistema centralizzato e Routing)],

  [0.3.0],
  [28/08/2025],
  [A. Shu \ N. Bolzon],
  [M. Dalla Pozza],
  [Aggiunta una documentanzione basica del Microservizio Routing, correzioni granulari di stile e uniformità lessicale sulla stesura],

  [0.2.0],
  [27/08/2025],
  [N. Bolzon \ A. Shu],
  [M. Dalla Pozza],
  [Stesura del documento, sezioni Introduzione, Tecnologie, Architettura.],

  [0.1.0],
  [09/08/2025],
  [M. Dalla Pozza],
  [S. Marana],
  [Stesura del documento, sezioni Tecnologie utilizzate e architettura.],

  [0.0.1],
  [30/07/2025],
  [N. Moretto],
  [S. Speranza],
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


= Introduzione
== Scopo del documento
#v(1em)

Il seguente documento ha lo scopo di descrivere dettagliatamente l’architettura del prodotto
software considerato tramite una visione chiara e strutturata delle sue componenti, delle interazioni 
tra di essi e la distribuzione nel sistema.

È un documento tecnico che si rivolge principalmente agli sviluppatori e ai membri del team 
di progetto, ma può essere utile anche per altri stakeholder interessati a comprendere 
le basi tecniche del sistema.

/*
riflette infatti il processo di progettazione e 
  realizzazione del prodotto, garantendo coerenza con il PoC#super[G] e 
  introducendo miglioramenti necessari per la sua evoluzione a un prodotto software completo.\

Il documento di Specifica Tecnica#super[G] funge da riferimento per la progettazione e realizzazione
del prodotto, garantendo coerenza con il Proof of ConceptG (PoCG) iniziale e introducendo
miglioramenti volti a consolidarne la maturità architetturale.
*/

In particolare, il documento si propone di:

- Fornire una descrizione dettagliata dell'architettura logica del sistema, inclusi i componenti principali, le loro interazioni e le tecnologie utilizzate;

- Descrivere le scelte progettuali effettuate e le motivazioni alla base di tali scelte;

- Presentare i design patterns utilizzati e le loro applicazioni nel contesto del progetto;

- Presentare lo stato dei requisiti funzionali implementati, evidenziando quelli completati e quelli ancora in fase di sviluppo;

- Fornire ulteriori dettagli tecnici e progettuali necessari per una migliore comprensione e la manutenzione del sistema;


== Glossario
#v(1em)

Per una corretta comprensione del documento, viene fornito un glossario dei termini utilizzati. Ogni termine è indicato da una "#super[G]" in apice alla parola#super[G].
Per trovare il significato del termine, è possibile consultare il glossario al seguente indirizzo: 
#underline[#link("https://teamcodealchemists.github.io/glossario.html")]\

== Riferimenti
=== Riferimenti normativi
#v(1em)

- *Capitolato#super[G] d'appalto C6 - Gestione di un magazzino distribuito - _M31_*\
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")]

//DA SISTEMARE!!!!
- *Norme di Progetto#super[G] - versione 1.0.0*  \
  #underline[#link("https://teamcodealchemists.github.io/docs/pb/NdP_1.0.0.pdf")]
  \ *Ultimo Accesso:* 27 agosto 2025
  
=== Riferimenti informativi
- *Lezione rovesciata - Documentazione* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/FC1.pdf")]
  \ *Ultimo Accesso:* 1 agosto 2025

- *Regolamento del Progetto Didattico* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")]
  \ *Ultimo Accesso:* 1 agosto 2025

//DA SISTEMARE!!!!
-  *Glossario* \
  #underline[#link("https://teamcodealchemists.github.io/glossario.html")]
  \ *Ultimo Accesso:* 27 agosto 2025


#pagebreak()
= Tecnologie
#v(1em)

Questa sezione ha l’intento di offrire una panoramica delle tecnologie adottate nella progettazione 
del sistema software, esaminando con attenzione le piattaforme, gli strumenti, 
i linguaggi di programmazione, i framework e le risorse tecnologiche impiegate 
durante l’intero ciclo di sviluppo.

Le tecnologie proposte e descritte sono state selezionate dalla necessità di 
sviluppare un sistema centralzizato composto da magazzini distribuiti, 
capitolato di progetto C6#super[G], capace di operare in modo efficiente anche sotto carico, 
variabile e non, mantenendo prestazioni elevate e un'ottima resilienza. 

Il progetto quindi si fonda su una selezione di strumenti avanzati e affidabili, 
scelti per le loro capacità di supportare in maniera efficiente un'architettura in
particolare basata su microservizi, garantendo al contempo la scalabilità, l’affidabilità 
e una gestione semplificata della manutenzione.

Di seguito vengo presentate le tecnologie usate suddivise 
in categorie in base al loro ruolo all'interno dell'architettura: 

- linguaggi di programmazione per lo sviluppo del codice
- strumenti per la comunicazione tra microservizi
- soluzioni per la virtualizzazione e il deployment
- piattaforme per il monitoraggio del sistema.


// ATTENZIONE!!!!!!!!!!!!!!!!!!!! LE VERSIONI SONO TUTTE DA CONTROLLARE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
== Linguaggi di programmazione
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    //table row
    [*Typescript*], [1.24.0], [Linguaggio di programmazione superset di JavaScript, progettato per aggiungere tipizzazione statica e altre funzionalità. Sviluppo di applicazioni scalabili, miglioramento della qualità del codice, utilizzo con framework come Angular, React e Node.js.],
    [*JavaScript*], [1.24.0], [Linguaggio di programmazione interpretato, principalmente utilizzato per il lato client nelle applicazioni web. Sviluppo frontend, dinamismo e interattività delle pagine web, utilizzato con framework come React, Vue.js, Angular.],
    [*YAML*], [1.24.0], [Formato di serializzazione dei dati leggibile dall'uomo, spesso usato per configurazioni. Definizione di file di configurazione, deployment automation, utilizzato con sistemi come Kubernetes, Docker e CI/CD pipelines.],
    [*JSON*], [1.24.0], [Formato di scambio dati basato su testo, semplice e leggero, ampiamente utilizzato per la comunicazione tra server e client. Scambio di dati tra server e applicazioni web, configurazione di API, utilizzato in contesti come RESTful services e architetture microservizi.],
  ),
  caption: [Linguaggi di programmazione.],
)


== Framework
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    //table row
    [*NestJs*], [1.24.0], [Framework per applicazioni Node.js basato su TypeScript, progettato per costruire applicazioni scalabili e modulari. Sviluppo di backend robusti e mantenibili, costruzione di API RESTful, utilizzo con TypeORM, GraphQL, microservizi.]
  ),
  caption: [Frameworks.],
)


== Tecnologie per la gestione dei dati
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    //table row
    [*MongoDB*], [1.24.0], [Database NoSQL orientato ai documenti, progettato per gestire grandi volumi di dati non strutturati o semi-strutturati. Archiviazione flessibile di dati JSON-like, scalabilità orizzontale, ideale per applicazioni web moderne, sistemi distribuiti, e gestione di dati in tempo reale.]

  ),
  caption: [Tecnologie per la gestione dei dati.],
)

//DB
== Tecnologie per la comunicazione e per la messaggistica
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    //table row
    [*NATS*], [1.24.0], [Sistemi di messaggistica leggeri e ad alte prestazioni per la comunicazione asincrona tra microservizi. Gestione di eventi, comunicazione in tempo reale, utilizzato in architetture a microservizi, IoT, e applicazioni distribuite.]
  ),
  caption: [Tecnologie per la comunicazione e per la messaggistica.],
)

//NATS
== Tecnologie per la virtualizzazione
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    //table row
    [*Docker*], [1.24.0], [Piattaforma per la creazione, distribuzione e gestione di container, che permette di isolare applicazioni e dipendenze. Virtualizzazione leggera, gestione di ambienti di sviluppo e produzione, automazione del deployment, utilizzato in DevOps e CI/CD pipelines.]

  ),
  caption: [Tecnologie per la virtualizzazione.],
)

//Docker

== Tecnologie per il monitoraggio dei microservizi
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],

    //table row
    [**], [], []

  ),
  caption: [Tecnologie per il monitoraggio dei microservizi.],
)


//tipo grafana, prometheus, ecc.

== Tecnologie per l'analisi statica
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],
    
    //table row
    [**], [], []

  ),
  caption: [Tecnologie per l'analisi statica.],
)

== Tecnologie per l'analisi dinamica
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],
    
    //table row
    [**], [], []

  ),
  caption: [Tecnologie per l'analisi dinamica.],
)


//dire cosa abbiamo usato per fare i test

== Librerie
#v(1em)

#figure(
  table(
    columns: (1fr, 1fr, 4fr),
    align: center + horizon,
    inset: 8pt,

    // Header row
    [*Tecnologia*], [*Versione*], [*Descrizione*],
    
    //table row
    [**], [], []

  ),
  caption: [Librerie.],
)

= Architettura
#v(1em)

== Architettura Logica 
#v(1em)

Il sistema è stato progettato secondo il modello architetturale esagonale (anche conosciuto come Ports and Adapters), 
che favorisce una netta separazione tra la logica di business centrale e le interazioni con servizi esterni, fonti di dati e interfacce utente. 

Questo approccio assicura modularità, testabilità e indipendenza da tecnologie specifiche.

I tre principi fondamentali su cui si basa L'architettura esagonale sono:

- Indipendenza della logica di business: Il cuore dell'applicazione è separato dai dettagli tecnici esterni.

- Porte e adattatori: Le porte definiscono le interfacce che permettono la comunicazione tra il nucleo centrale e l'esterno, mentre gli adattatori implementano queste interfacce per tecnologie specifiche.

- Sostituibilità delle dipendenze: È possibile sostituire facilmente componenti come database, framework o altre dipendenze senza influenzare la logica di business centrale.

E di conseguenza l'architettura si articola in tre componenti principali:

- Core (Dominio e Logica di Business): Il nucleo dell'applicazione che contiene le regole fondamentali e la logica di business, 
                                       completamente disaccoppiato dalle tecnologie esterne.

- Porte (Ports): Definiscono i punti di accesso e uscita, regolando come il sistema interagisce con l'esterno.

- Adattatori (Adapters): Si occupano di implementare le porte, integrando il sistema con database, servizi esterni e interfacce utente.

Nel contesto di questo modello, le Inbound Ports consentono a componenti esterni di interagire con la logica centrale, mentre le Outbound Ports gestiscono la comunicazione verso i servizi esterni, mantenendo l'astrazione necessaria per preservare l'indipendenza della logica di business. I Services implementano le inbound ports, focalizzandosi esclusivamente sulla logica di dominio senza dipendenze esterne specifiche. Gli Adapters si suddividono in due categorie:

- Input Adapters (o Controllers): Ricevono richieste esterne e le traducono in operazioni comprensibili per il nucleo, invocando le porte in ingresso.

- Output Adapters: Gestiscono la comunicazione con il mondo esterno, traducendo le risposte del nucleo in formati comprensibili dai servizi esterni.

*Motivazioni della Scelta Architetturale*
#v(1em)

La decisione di adottare un'architettura esagonale a microservizi è stata il risultato di un'analisi approfondita dei requisiti del sistema. 
Le principali ragioni che hanno portato a questa scelta includono:

- Scalabilità e manutenibilità: L'adozione di un'architettura a microservizi consente di gestire in modo più efficace la crescita del sistema, 
  sia in termini di utenti che di funzionalità. Ogni microservizio può evolversi indipendentemente, migliorando la manutenibilità complessiva 
  del sistema e riducendo il rischio di impatti sulle altre componenti.

- Flessibilità tecnologica: L'architettura esagonale a microservizi permette l'adozione di tecnologie diverse per ciascun microservizio, 
  garantendo maggiore libertà nelle scelte tecnologiche e consentendo l'uso di soluzioni più adatte per ogni singolo contesto.

- Indipendenza dei team di sviluppo: Ogni microservizio può essere gestito da team separati, che lavorano in parallelo senza 
  interferire con il lavoro degli altri. Questo migliora la produttività e la velocità di sviluppo, con il vantaggio di poter 
  implementare e distribuire nuove funzionalità senza influenzare l'intero sistema.

- Alta disponibilità e resilienza: L'architettura a microservizi consente di distribuire il carico di lavoro e isolare i guasti. 
  In caso di malfunzionamento di un microservizio, l'impatto sul sistema globale è minimo, migliorando la resilienza complessiva.

- Possibilità di evoluzione continua: Adottando un'architettura esagonale con microservizi, è possibile evolvere gradualmente il sistema, 
  aggiungendo nuove funzionalità o migliorando quelle esistenti senza dover riscrivere completamente l'applicazione. 
  Inoltre, è possibile scalare i microservizi in modo indipendente in base al carico di lavoro.

- Adattamento alle esigenze future: L'architettura a microservizi offre la possibilità di integrare facilmente nuove tecnologie, strumenti o piattaforme, senza compromettere la stabilità dell'intero sistema. Ciò consente al sistema di evolvere in modo agile  e rispondere rapidamente alle esigenze del business.

In conclusione, l'architettura esagonale rappresenta una scelta ideale per garantire modularità, sostenibilità a lungo termine e un'elevata capacità di adattamento alle esigenze future del sistema.

== Architettura di deployment
=== Sistema a microservizi

== Design patterns
// Enuncere i design patterns usati, la descrizione e il motivo della scelta
=== (nome pattern)
==== Descrizione del (nome pattern)
==== Motivazioni dell'utilizzo del (nome pattern)

== Microservizi sviluppati
// Schema di tutti i microservizi - introduzione
Ogni microservizio è stato progettato per assolvere a un compito ben definito, 
garantendo un contributo essenziale all’interno del sistema complessivo del progetto e favorendo la collaborazione tra i vari moduli.
L’architettura dei *Microservizi* segue un approccio a casi d’uso e servizi di dominio, con separazione tra logica applicativa, logica di dominio e interfacce di comunicazione esterne.\
I microservizi sviluppati sono:
- *#link(label("Inventory"),"Inventory")*
- *#link(label("State"), "State")*
- *#link(label("Cloud State"), "Cloud State")*
- *#link(label("Orders"), "Orders")*
- *#link(label("Inventory Aggregate"), "Inventory Aggregate")*
- *#link(label("Orders Aggregate"), "Orders Aggregate")*
- *#link(label("Central System"), "Central System (Sistema Centralizzato)")*
- *#link(label("Auth"), "Authentication")*
- *#link(label("Routing"), "Routing")*
//- *#link(label("Inventary Aggreggate"), "Inventary Aggreggate")*
//- *#link(label("Auth"), "Auth")*
Ogni microservizio possiede il proprio file 
- *`*`service* : Contiene la logica applicativa principale, orchestrando i casi d’uso e coordinando le entità di dominio.
- *`*`DTO* : Strutture leggere dedicate allo scambio di dati tra microservizi o verso l’esterno, senza esporre direttamente le entità di dominio.
- *`*`DataMapper* : Componente responsabile della conversione bidirezionale tra entità di dominio e DTO. Garantisce separazione tra logica interna e interfacce esterne.
- *`*`Adapter* : Moduli che implementano le interfacce per la comunicazione esterna (eventi, API, messaggistica). Seguono il pattern Ports & Adapters.
- *`*`Controller* : Punto di ingresso del microservizio per la gestione delle richieste provenienti dall’esterno (es. REST controller, listener di eventi).
- *`*`Repository* : Strato di accesso ai dati per la gestione della persistenza delle entità di dominio.
  - Nota: il _Sistema Centralizzato_ non possiede la repository perchè non ha persistenza locale ma agisce come orchestratore.
- *Domini* : Le entità e i value object che rappresentano il cuore del microservizio. Sono indipendenti dalla tecnologia e descrivono il linguaggio del dominio

/*
=================================================
             MICROSERVIZIO INVENTARIO
=================================================
*/
#pagebreak()
#label("Inventory")
=== Microservizio Inventario (Inventory Service)
// Breve spiegazione + Immagine
#figure(
  image("assets/Inventory.svg", width: 120%),
  caption: [Schema UML - Microservizio Inventario]
)
==== Descrizione del microservizio
Il *Microservizio Inventario* rappresenta il componente responsabile della gestione delle scorte all’interno di un singolo magazzino.
Il suo compito principale è quello di mantenere la coerenza dello stato dei prodotti, verificare la disponibilità rispetto alle soglie minime e
massime configurate e coordinare le operazioni di movimentazione delle quantità.
===== Funzionalità principali
- *Gestione dello stock prodotti*: inserimento, rimozione, aggiornamento e consultazione delle quantità.
- *Verifica disponibilità*: controllo delle soglie di giacenza (minime e massime) e identificazione di eventuali criticità.
- *Gestione richieste ordini*: elaborazione delle richieste provenienti dai magazzini o dal sistema centralizzato per soddisfare ordini cliente.
- *Pubblicazione eventi*: emissione di notifiche verso gli altri microservizi quando avvengono variazioni di stato significative.
- *Interoperabilità*: interazione con microservizi esterni quali:
  - _Sistema Centralizzato_, che coordina gli eventi critici e la logica di alto livello.
  - _Microservizio Ordini_, per validare la disponibilità dei prodotti richiesti.
  - _Inventario Aggregato_, per fornire una vista complessiva delle giacenze multi-magazzino.
==== ProductId
/*
#figure(
  image("", width: 60%),
  caption: [Microservizio Inventario - ProductId]
)
*/

 + Rappresenta l'identificatore univoco del prodotto,
 + Incapsula il campo _id: string_,
 + Espone il metodo _getId()_,
 + È stato isolato per facilitare il confronto tra entità e manterere l'identità coerente anche in fase di serializzazione/deserializzazione _(es. tramite DTO)_, ad esempio per permettere il corretto funzionamento di _removeProduct_.

Descrizione degli attributi della struttura:
 - *id*: string \
  È il codice EAN del prodotto.

Può invocare le seguenti funzioni:
- *getId()*: string \
  Metodo pubblico per ottenere il codice EAN del prodotto.

==== Product
 + Contiene tutti gli attributi modificabili del prodotto: _name, unitPrice, quantity, minThres, maxThres_,
 + I campi _name_ e _unitPrice_ sono modificabili solo dal Supervisore Globale in quanto dati sensibili e che verranno riflessi in tutit i magazzini in caso di modifica,
 + I campi _quantity_, _minThres_, _maxThres_ sono modificabili anche dai Supervisori Locali: tali modifiche non verranno riflesse negli altri magazzini ma riguarderanno solo il magazzino di pertinenza.

 Descrizione degli attributi della struttura:
  - *id*: ProductId \
    Rappresenta l'Id del prodotto.
  - *name*: string \
    Rappresenta il nome del prodotto.
  - *unitPrice*: number \
    Rappresenta il prezzo unitario del prodotto.
  - *quantity*: number \
    È la quantità attualmente disponibile del prodotto.
  - *minThres*: number \
    Soglia minima di sicurezza relativa alla quantità del prodotto.
  - *maxThres*: number \
    Soglia massima di sicurezza relativa alla quantità del prodotto.
  - *quantityReserved*: number \
    È la quantità riservata di quel prodotto. Può essere NULL.

  Può invocare le seguenti funzioni:
  - *addDeltaQuantity(quantity: number)*: void \
    Metodo per sommare o sottrarre una quantità positiva ad un prodotto.
  - *getId()*: ProductId; \
    Restituisce il codice EAN del prodotto.
  - *getName()*: string; \
    Restituisce il nome del prodotto.
  - *getUnitPrice()*: number; \
    Restituisce il prezzo unitario del prodotto.
  - *getQuantity()*: number; \
    Restituisce la quantità disponibile del prodotto.
  - *getMinThres()*: number; \
    Restituisce la soglia minima di sicurezza relativa alla quantità del prodotto.
  - *getMaxThres()*: number; \
    Restituisce la soglia massima di sicurezza relativa alla quantità del prodotto.
  - *setName(name: string)*: void; \
    Restituisce il nome del prodotto.
  - *setUnitPrice(unitPrice: number)*: void; \
    Metodo che permette di modificare il prezzo unitario.
  - *setQuantity(quantity: number)*: void; \
    Metodo per modificare la quantità disponibile del prodotto.
  - *setMinThres(minThres: number)*: void; \
    Metodo per modificare la soglia minima di sicurezza relativa alla quantità del prodotto.
  - *setMaxThres(maxThres: number)*: void; \
    Metodo per modificare la soglia massima di sicurezza relativa alla quantità del prodotto.
  - *getQuantityReserved()*: number \
    Restituisce la quantità riservata del prodotto.
  - *setQuantityReserved(quantityReserved : number)*: void
    Metodo per modificare la quantità riservata del prodotto.

Questa separazione segue i principi della *Domain-Driven Design* (DDD): i DTO vengono convertiti in entità complete (`Product`) già nei livelli più alti (es. nel controller), evitando che il livello *Application Service* debba conoscere i dettagli della rappresentazione dati in entrata/uscita. Si garantisce così la *separazione dei livelli* e una migliore *manutenibilità* del codice.

==== ProductQuantity

+ Rappresenta un oggetto di dominio che associa l'id di un prodotto ad una quantità numerica.
+ Non ha un uso specifico ma è utilizzabile in più contesti.

Descrizione degli attributi della struttura:
- *id*: ProductId
  Rappresenta l'id del prodotto.
- *quantity*: number
  Rappresenta la quantità numerica associata al prodotto.

Può invocare le seguenti funzioni:
- *getId()*: ProductId; \
  Restituisce il codice EAN del prodotto.
- *getQuantity()*: number \
  Restituisce la quantità associata al prodotto.

==== Inventory
+ Rappresenta una lista di prodotti.
+ Usato principalmente per restituire l'intero inventario di un magazzino.

Descrizione degli attributi della struttura:
- *productList*: Product[]
  Rappresenta la lista di prodotti.

Può invocare le seguenti funzioni:
- *getInventory()*: ProductId[]; \
  Restituisce la lista di prodotti.
- *addProductItem(Product)*:  \
  Aggiunge un prodotto nella lista di prodotti.

==== OrderId
+ Rappresenta l'id di un ordine.
+ È incluso anche nel servizio di inventario perché è necessario per mantenere l'assocazione tra un ordine e gli elementi di un ordine nella comunicazione asincrona con il microservizio di Ordini.
+ Il carattere iniziale rappresenta il tipo di ordine. Questo è molto utile per identificare il tipo di ordine per logiche di controllo.

Descrizione degli attributi della struttura:
- *id*: string
Rappresenta l'id di un ordine; il primo carattere rappresenta il tipo di ordine, i rimanenti sono un UUID

Può invocare le seguenti funzioni:
  - getId(): string
  Restituisce l'id dell'ordine
  - getOrderType(): string
  Restituisce il tipo di ordine

==== InventoryService
+ Rappresenta il servizio applicativo responsabile della logica di business relativa alla gestione dell’inventario di un magazzino.
+ Espone operazioni per l’aggiunta, rimozione, modifica e consultazione dei prodotti, oltre a controlli di soglia e disponibilità.
+ Ogni modifica ai prodotti genera un evento che viene propagato al sistema.

Descrizione degli attributi della struttura:
  - *warehouseId*: WarehouseId \
    Identificativo univoco del magazzino a cui appartiene l’inventario gestito dal servizio.

Può invocare le seguenti funzioni:
  - *checkProductExistence(productId: ProductId)*: bool \
    Verifica se un prodotto è presente nell’inventario del magazzino.
  - *checkProductThres(product: Product)*: bool \
    Controlla se la quantità del prodotto rispetta le soglie minime e massime definite.
  - *addProduct(product: Product)*: void \
    Aggiunge un nuovo prodotto all’inventario e pubblica un evento di aggiunta.
  - *removeProduct(productId: ProductId)*: bool \
    Rimuove un prodotto dall’inventario e pubblica un evento di rimozione. Restituisce true se l’operazione è andata a buon fine.
  - *editProduct(product: Product)*: void \
    Modifica i dati di un prodotto già presente e pubblica un evento di modifica.
  - *getProduct(productId: ProductId)*: Product \
    Restituisce il prodotto corrispondente all’Id specificato.
  - *getInventory()*: Inventory \
    Restituisce la lista completa dei prodotti presenti nell’inventario.
  - *getWarehouseId()*: number \
    Restituisce l’identificativo del magazzino.
  - *checkProductAvailability(productQuantities: ProductQuantity[])*: bool \
    Verifica la disponibilità di uno o più prodotti nelle quantità richieste.
  - *addProductQuantity(ProductQuantity)*: void
    Aggiunge una quantità numerica alla quantità disponibile un prodotto.
  - *shipOrder(OrderId, ProductQuantity[])*: void
    Spedisce l'ordine sottraendo le quantità richieste da quelle riservate e pubblica un evento di avvenuta spedizione.
  - *receiveStock(OrderId, ProductQuantity[])*: void
    Processa il ricevimento di merce da parte di un ordine e pubblica un evento di avvenuta ricezione.
  - *reserveStock(OrderId, ProductQuantity[])*: void
    Riserva la merce richiesta da un ordine e pubblica un evento con le quantità riservate.

==== WarehouseId
+ È stato separato da `InventoryService` in quanto l’identificativo del magazzino è necessario principalmente in fase di sincronizzazione sul cloud durante operazioni di modifica, aggiunta o rimozione di prodotti.
+ Non è quindi necessario che il DTO di `InventoryService` contenga sempre l’id del magazzino.

Descrizione degli attributi della struttura:
  - *warehouseId*: number \
    Identificativo univoco del magazzino.

Può invocare le seguenti funzioni:
  - *getId()*: number \
    Restituisce l’identificativo del magazzino.

==== WarehouseIdDTO
Descrizione degli attributi della struttura:
  - *warehouseId*: number \
    Identificativo del magazzino, rappresentato come DTO.

==== OrderIdDTO
Descrizione degli attributi della struttura:
  - *id*: string UUID \
    Identificativo dell'ordine, rappresentato come DTO.

==== ProductIdDTO
Descrizione degli attributi della struttura:
  - *id*: string \
    Identificativo del prodotto, rappresentato come DTO.

==== ProductDTO
Descrizione degli attributi della struttura:
  - *id*: string \
    Identificativo del prodotto, rappresentato come DTO.
  - *name*: string \
    Nome del prodotto, rappresentato come DTO.
  - *unitPrice*: number \
    Prezzo unitario del prodotto, rappresentato come DTO.
  - *quantity*: number \
    Quantità attualmente disponibile del prodotto, rappresentata come DTO.
  - *minThres*: number \
    Soglia minima di sicurezza relativa alla quantità del prodotto, rappresentata come DTO.
  - *maxThres*: number \
    Soglia massima di sicurezza relativa alla quantità del prodotto, rappresentata come DTO.
  - *quantityReserved*: number
    Quantità riservata nel magazzino di un prodotto.
  - *warehouseId*: warehouseIdDTO
    Identificativo del magazzino.

==== InventoryDTO
Descrizione degli attributi della struttura:
 - *productList*: ProductDTO[] \
    Elenco dei prodotti presenti nell’inventario, rappresentato come DTO.

==== BelowMinThresDTO
Descrizione degli attributi della struttura:
 - *id*: string \
    Identificativo del prodotto, rappresentato come DTO.
 - *quantity*: number \
    Quantità attualmente disponibile del prodotto, rappresentata come DTO.
 - *minThres*: number \
    Soglia minima di sicurezza del prodotto, rappresentata come DTO.

==== AboveMaxThresDTO
Descrizione degli attributi della struttura:
 - *id*: string \
    Identificativo del prodotto, rappresentato come DTO.
 - *quantity*: number \
    Quantità attualmente disponibile del prodotto, rappresentata come DTO.
 - *maxThres*: number \
    Soglia massima di sicurezza del prodotto, rappresentata come DTO.

==== ProductQuantityDTO
+ Rappresenta una coppia _(prodotto, quantità)_ utilizzata nei casi d’uso e nella comunicazione tra livelli applicativi.

Descrizione degli attributi della struttura:
 - *productId*: string \
    Identificativo del prodotto, rappresentato come DTO.
 - *quantity*: number \
    Quantità richiesta o disponibile del prodotto, rappresentata come DTO.

==== ProductQuantityArrayDTO
+ Associa un ordine ad un array di coppie _(prodotto, quantità)_, utile per operazioni batch (es. richieste d’ordine).

Descrizione degli attributi della struttura:
  - *orderId*: OrderIdDTO \
    Rappresenta l'id dell'ordine.
 - *productQuantityArray*: ProductQuantityDTO[] \
    Elenco delle quantità dei prodotti, rappresentato come DTO. 

==== DataMapper
+ Classe di utilità che si occupa della conversione tra DTO e oggetti di dominio.
+ Garantisce l’isolamento del dominio dai dettagli di rappresentazione dati (DTO).

Metodi statici:
 - *toDomain(productDTO: ProductDTO)*: Product \
    Converte un DTO ProductDTO nell’entità di dominio _Product_.
 - *toDomain(productIdDTO: ProductIdDTO)*: ProductId \
    Converte un DTO ProductIdDTO nell’oggetto di dominio _ProductId_.
 - *toDomain(inventoryDTO: InventoryDTO)*: Inventory \
    Converte un DTO InventoryDTO nell’oggetto di dominio _Inventory_.
 - *toDTO(product: Product)*: ProductDTO \
    Converte un’entità di dominio Product nel corrispondente _ProductDTO_.
 - *toDTO(productId: ProductId)*: ProductIdDTO \
    Converte un oggetto di dominio ProductId nel corrispondente _ProductIdDTO_.
 - *toDTO(inventory: Inventory)*: InventoryDTO \
    Converte un oggetto di dominio Inventory nel corrispondente _InventoryDTO_.
 - *toDTO(warehouseId: WarehouseId)*: WarehouseIdDTO \
    Converte un oggetto di dominio WarehouseId nel corrispondente _WarehouseIdDTO_.
 - *toBelowMinDTO(product: Product)*: BelowMinThresDTO \
    Converte un’entità Product in BelowMinThresDTO, filtrando i campi non rilevanti _(es. name, unitPrice)_.
 - *toAboveMaxDTO(product: Product)*: AboveMaxThresDTO \
    Converte un’entità Product in AboveMaxThresDTO, filtrando i campi non rilevanti _(es. name, unitPrice)_.
 - *toDTO(productId: ProductId, quantity: number)*: QuantityRequestedDTO \
    Converte una coppia (ProductId, quantità) in un _QuantityRequestedDTO_.

==== ProductAddQuantityUseCase
+ Definisce il caso d’uso relativo all’aggiunta di una quantità a un prodotto già presente nell’inventario.

Metodi:
 - *addQuantity(productQuantityDTO: ProductQuantityDTO)*: void \
    Aggiunge la quantità specificata al prodotto indicato, previa conversione del DTO in _ProductQuantity[]_.

==== OrderRequestUseCase
+ Definisce il caso d’uso relativo alla gestione delle richieste d’ordine _(es. richiesta multiprodotto)_.

Metodi:
  - *orderRequest(productQuantityArrayDTO: ProductQuantityArrayDTO)*: void \
    Gestisce la richiesta iniziale di ordine a partire da un array di coppie _(prodotto, quantità)_.
  - *shipOrderRequest(ProductQuantityArrayDTO)*: void
    Processa l'evento di spedire della merce per un ordine. 
  - *receiveShipment(ProductQuantityArrayDTO)*: void
    Processa l'evento di ricevere della merce per via di un ordine. 


==== InboundEventHandler
+ Responsabile della gestione degli eventi in ingresso _(ad esempio, eventi provenienti da altri servizi o dal cloud)_.
+ Coordina l’invocazione dei casi d’uso applicativi in risposta a tali eventi.

==== NewStockUseCase
+ Definisce il caso d’uso relativo all’aggiunta di un nuovo prodotto all’interno dell’inventario.

Metodi:
 - *newStock(productDTO: ProductDTO)*: void \
    Aggiunge un nuovo prodotto all’inventario, previa conversione del DTO in _Product_.

==== RemoveStockUseCase
+ Definisce il caso d’uso relativo alla rimozione di un prodotto dall’inventario.

Metodi:
 - *removeStock(productIdDTO: ProductIdDTO)*: void \
    Rimuove un prodotto dall’inventario, previa conversione del DTO in _ProductId_.

==== EditStockUseCase
+ Definisce il caso d’uso relativo alla modifica dei dati di un prodotto nell’inventario.

Metodi:
 - *editStock(productDTO: ProductDTO)*: void \
    Modifica uno o più campi di un prodotto esistente, previa conversione del DTO in _Product_.

==== GetProductUseCase
+ Definisce il caso d’uso relativo all’ottenimento di un prodotto specifico dall’inventario.

Metodi:
 - *getProduct(productIdDTO: ProductIdDTO)*: void \
    Restituisce un prodotto a partire dal suo identificativo, previa conversione del DTO in _ProductId_.

==== GetInventoryUseCase
+ Definisce il caso d’uso relativo all’ottenimento della lista completa dei prodotti presenti nell’inventario.

Metodi:
 - *getInventory()*: void \
    Restituisce l’elenco dei prodotti dell’inventario.

Queste interfacce definiscono i *casi d’uso dell’applicazione*, e sono tipicamente implementate da un Application Service (es. `InventoryService`, nel caso del PoC, `inventoryHandler.service`), che coordina la logica e interagisce col dominio.

==== CommandHandler
+ Responsabile della gestione degli eventi in ingresso.
+ Implementa i casi d’uso: NewStockUseCase, EditStockUseCase, RemoveStockUseCase, GetProductUseCase e GetInventoryUseCase.
+ Riceve i DTO dall’esterno, li converte negli oggetti di dominio corrispondenti e li inoltra tramite la relativa chiamata all’InventoryService.
+ In questo modo funge da adattatore di ingresso (Input Port), mantenendo separati i dettagli di trasporto dei dati dalla logica di business.

==== ResultProductAvailabilityPublisher
+ Definisce la porta di uscita per la pubblicazione di eventi dell'esito di riservamento prodotti.
Metodi:
  - *sufficientProductAvailability(OrderId)*: void
    Pubblica un evento per comunicare l'avvenuto riservamento di tutte le quantità richieste per tutti i prodotti di un ordine.

==== OrderStatusEventPublisher
+ Definisce la porta di uscita per la pubblicazione di eventi relativi agli aggiornamenti di stato di un ordine (_e.g._ spedizione)
  - *stockShipped(OrderId)*: void
  Pubblica l'evento di avvenuta spedizione della merce relativa a un ordine.
  - *stockReceived(OrderId)*: void
  Pubblica l'evento di avvenuta ricezione di merce da parte di un ordine in entrata.

==== ReservationPort
+ Definisce la porta di uscita per la pubblicazione di eventi di riservamento prodotti.

Metodi:
 - *reservedQuantities(orderId: OrderId, pq: ProductQuantity[])*: void \
    Pubblica un evento che notifica le quantità di prodotti riservate per un ordine.

==== CriticalThresEventPort
+ Definisce la porta di uscita per la pubblicazione di eventi relativi al superamento delle soglie critiche di inventario.

Metodi:
 - *belowMinThres(product: Product)*: void \
    Pubblica un evento che notifica il superamento della soglia minima di sicurezza per un prodotto.
 - *aboveMaxThres(product: Product)*: void \
    Pubblica un evento che notifica il superamento della soglia massima di sicurezza per un prodotto.

==== StockAddedPort
+ Definisce la porta di uscita per la pubblicazione di eventi di aggiunta di merce nell’inventario.

Metodi:
 - *stockAdded(product: Product, warehouseId: WarehouseId)*: void \
    Pubblica un evento che notifica l’aggiunta di un prodotto all’interno di un magazzino.

==== StockRemovedPort
+ Definisce la porta di uscita per la pubblicazione di eventi di rimozione di merce dall’inventario.

Metodi:
 - *stockRemoved(productId: ProductId, warehouseId: WarehouseId)*: void \
    Pubblica un evento che notifica la rimozione di un prodotto dall’inventario di un magazzino.

==== StockUpdatedPort
+ Definisce la porta di uscita per la pubblicazione di eventi di aggiornamento dei dati di un prodotto.

Metodi:
 - *stockUpdated(product: Product, warehouseId: WarehouseId)*: void \
    Pubblica un evento che notifica la modifica dei dati di un prodotto presente in un magazzino.

==== GetProductPort
+ Definisce la porta di uscita per la pubblicazione di eventi relativi all’ottenimento di un prodotto specifico.

Metodi:
 - *publishProduct(product: Product)*: void \
    Pubblica l’evento che notifica la disponibilità dei dati di un prodotto.

==== GetInventoryPort
+ Definisce la porta di uscita per la pubblicazione di eventi relativi all’ottenimento dell’inventario completo.

Metodi:
- *publishInventory(inventory: Inventory, warehouseId: WarehouseId)*: void \
    Pubblica l’evento che notifica il contenuto dell’inventario di un magazzino.

==== OutboundEventAdapter
+ Adattatore responsabile della gestione degli eventi in uscita.
+ Implementa le interfacce: _CriticalThresEventPort, StockAddedPort, StockRemovedPort, StockUpdatedPort, GetProductPort e GetInventoryPort_.
+ Converte gli oggetti di dominio nei rispettivi DTO prima della pubblicazione degli eventi.

Questi porti rappresentano *eventi di dominio (Output Port)*, utili per notificare modifiche o stati ad altri moduli del sistema.
Tale struttura segue i principi dell’architettura esagonale, garantendo separazione tra:
- valori immutabili e mutabili del dominio,
- entità _(Product)_,
- interfacce di comando ed evento.

Ne deriva una maggiore *testabilità e manutenibilità* del sistema.

==== InventoryRepository
+ Definisce l’interfaccia del repository per la gestione dei prodotti di un inventario.
+ Fornisce metodi per recupero, persistenza e controllo dell’esistenza dei prodotti.

Metodi:
 - *getById(id: ProductId)*: Product | null \
    Restituisce un prodotto a partire dal suo identificativo, oppure null se non esiste.
 - *getAllProducts()*: Inventory \
    Restituisce l’inventario completo del magazzino.
 - *addProduct(product: Product)*: Product \
    Aggiunge un nuovo prodotto all’inventario e restituisce il prodotto inserito.
 - *removeById(id: ProductId)*: boolean \
    Rimuove un prodotto a partire dal suo identificativo e restituisce true se l’operazione ha avuto successo.
 - *updateProduct(editedProduct: Product)*: Product | null \
    Aggiorna i dati di un prodotto esistente e restituisce l’oggetto aggiornato, oppure null se non trovato.
 - *checkProductExistence(id: ProductId)*: bool \
    Verifica l’esistenza di un prodotto nell’inventario del magazzino.

==== InventoryRepositoryImpl
+ Implementazione concreta di InventoryRepository.
+ Si occupa della persistenza dei prodotti (es. database locale o sincronizzazione cloud).
+ Incapsula i dettagli tecnologici, mantenendo il dominio indipendente dalle scelte infrastrutturali.

/*
=================================================
             MICROSERVIZIO STATO
=================================================
*/
#pagebreak()
#label("State")
=== Microservizio State (Warehouse State Service)
#figure(
  image("assets/localState.svg", width: 120%),
  caption: [Schema UML - Microservizio Stato locale]
)
==== Descrizione del microservizio
Il *Microservizio Stato* rappresenta il componente responsabile del monitoraggio e della gestione dello stato di un magazzino.  
Il suo compito principale è quello di rilevare la disponibilità operativa attraverso heartbeat periodici, mantenere aggiornato lo stato corrente e inviare tali informazioni al microservizio *Cloud State*.  

===== Funzionalità principali
- *Gestione heartbeat*: raccolta, validazione e aggiornamento delle informazioni di stato provenienti dal magazzino.
- *Aggiornamento stato*: mantenimento della coerenza delle informazioni sullo stato operativo del magazzino.
- *Trasmissione a Cloud State*: invio degli heartbeat al Cloud State per l’elaborazione e il coordinamento.
- *Interoperabilità*: interazione con microservizi esterni quali:
  - _Cloud State_, per la gestione e il coordinamento degli stati.

==== WarehouseId
 + Rappresenta l'identificatore univoco del magazzino,
 + Incapsula il campo _warehouseId: number_,
 + Espone il metodo _getId()_,
 + È stato isolato per facilitare il confronto tra entità e mantenere l'identità coerente anche in fase di serializzazione/deserializzazione.

Descrizione degli attributi della struttura:
 - *warehouseId*: number \
   È l’identificativo numerico del magazzino.

Può invocare le seguenti funzioni:
- *getId()*: number \
  Metodo pubblico per ottenere l’id del magazzino.

==== WarehouseState
 + Contiene lo stato corrente del magazzino,
 + Può essere utilizzato per monitorare lo stato di presenza del magazzino.

Descrizione degli attributi della struttura:
 - *state*: string \
   Rappresenta lo stato del magazzino.

Può invocare le seguenti funzioni:
 - *getState()*: string \
   Metodo che restituisce lo stato corrente del magazzino.

==== Heartbeat
 + Rappresenta un messaggio periodico di stato inviato dal magazzino,
 + Contiene informazioni temporali e di identificazione del magazzino.

Descrizione degli attributi della struttura:
 - *heartbeatMsg*: string \
   Contenuto del messaggio di stato del magazzino.
 - *timestamp*: DateTime \
   Data e ora di emissione del messaggio.
 - *warehouseId*: WarehouseId \
   Identificativo del magazzino mittente.

Può invocare le seguenti funzioni:
 - *getHeartbeatMsg()*: string \
   Restituisce il messaggio di stato.
 - *getId()*: number \
   Restituisce l’id del magazzino.
 - *getTimestamp()*: DateTime \
   Restituisce la data e l’ora del messaggio.

==== WarehouseStateService
 + Costituisce la logica di business del servizio

Descrizione degli attributi della struttura:
 - *heartbeat*: Heartbeat \
   Rappresenta lo stato corrente del magazzino.

Può invocare le seguenti funzioni:
 - *syncHeartbeat(heartbeat: Heartbeat)*: void \
   Sincronizza lo stato del magazzino con il messaggio ricevuto.
 - *sendHeartBeat(heartbeat: Heartbeat)*: boolean \
   Metodo per inviare il messaggio di stato.
==== WarehouseStateDTO
 + Rappresenta lo stato del magazzino sotto forma di DTO (Data Transfer Object),
 + Utilizzato per il trasporto dei dati tra livelli dell’applicazione.

Descrizione degli attributi della struttura:
 - *state*: string \
   Stato del magazzino.

==== WarehouseIdDTO
 + Rappresenta l’identificativo del magazzino sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *id*: number \
   Identificativo numerico del magazzino.

==== HeartbeatDTO
 + Rappresenta un messaggio di stato del magazzino sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *heartbeatMsg*: string \
   Contenuto del messaggio di stato.
 - *timestamp*: DateTime \
   Data e ora del messaggio.
 - *warehouseId*: WarehouseIdDTO \
   Identificativo del magazzino mittente.

==== DataMapper
 + Gestisce la conversione tra DTO e oggetti di dominio e viceversa.

Può invocare le seguenti funzioni statiche:
 - *toDomain(dto: WarehouseStateDTO): WarehouseState* \
   Converte il DTO dello stato del magazzino in un oggetto di dominio.
 - *toDomain(dto: WarehouseIdDTO): WarehouseId* \
   Converte il DTO dell’id del magazzino in un oggetto di dominio.
 - *toDTO(domain: WarehouseState): WarehouseStateDTO* \
   Converte un oggetto di dominio WarehouseState nel rispettivo DTO.
 - *toDTO(domain: WarehouseId): WarehouseIdDTO* \
   Converte un oggetto di dominio WarehouseId nel rispettivo DTO.
 - *toDTO(domain: Heartbeat): HeartbeatDTO* \
   Converte un oggetto di dominio Heartbeat nel rispettivo DTO.

==== GetStateUseCase
 + Casi d’uso per la gestione dello stato del magazzino.

Può invocare le seguenti funzioni:
 - *getSyncedState(warehouseIdDTO: WarehouseIdDTO): WarehouseStateDTO* \
   Recupera lo stato sincronizzato del magazzino.

==== StateController
 + Gestisce gli eventi in ingresso e coordina i layer sottostanti,
 + Riceve DTO dall’esterno, li converte in oggetti di dominio e invoca il WarehouseStateService.

==== GetStatePort
 + Definisce il contratto per la pubblicazione dello stato del magazzino.

Può invocare le seguenti funzioni:
 - *publishState(state: WarehouseState): void* \
   Pubblica l’evento di avvenuta pubblicazione dello stato del magazzino.

==== SendHeartBeatPort
 + Definisce il contratto per la pubblicazione dei messaggi di stato (heartbeat).

Può invocare le seguenti funzioni:
 - *publishHeartbeat(heartbeat: Heartbeat): void* \
   Dichiarazione del metodo che pubblica l’evento di avvenuta pubblicazione del messaggio di stato del magazzino.

==== StateUpdatedPort
 + Definisce il contratto per la notifica di aggiornamenti dello stato del magazzino.

Può invocare le seguenti funzioni:
 - *stateUpdated(state: WarehouseState): void* \
   Dichiarazione del metodo che pubblica l’evento di avvenuta modifica dello stato del magazzino.

==== StateEventAdapter
 + Gestisce gli eventi in uscita verso altri moduli del sistema,
 + Implementa i metodi di *GetStatePort*, *SendHeartBeatPort* e *StateUpdatedPort*,
 + Converte gli oggetti di dominio nei rispettivi DTO prima della pubblicazione.

==== StateRepository
 + Interfaccia per l’accesso ai dati dello stato del magazzino.

Può invocare le seguenti funzioni:
 - *getState(warehouseId: WarehouseId): WarehouseState* \
   Restituisce lo stato corrente del magazzino.
 - *updateState(state: WarehouseState): boolean* \
   Aggiorna lo stato del magazzino e restituisce true/false a seconda del successo dell’operazione.

==== StateRepositoryImpl

/*
=================================================
             MICROSERVIZIO CLOUD STATE
=================================================
*/
#pagebreak()
#label("Cloud State")
=== Microservizio Cloud State
#figure(
  image("assets/CloudState.svg", width: 120%),
  caption: [Schema UML - Microservizio Cloud State]
)
==== Descrizione del microservizio
Il *Microservizio Cloud State* rappresenta il componente centralizzato responsabile della raccolta, aggregazione e gestione degli stati provenienti dai singoli magazzini.  
Il suo compito principale di mandare eventi ad i stati degli warehouse è ricevere i segnali di heartbeat inviati dal *Microservizio Stato*, mantenere una visione coerente e aggiornata della disponibilità complessiva e renderla disponibile agli altri microservizi che necessitano di queste informazioni.  

===== Funzionalità principali
- *Ricezione heartbeat*: acquisizione dei segnali di stato inviati dai singoli magazzini.
- *Aggregazione stati*: consolidamento delle informazioni per costruire una visione globale del sistema.
- *Aggiornamento stato centralizzato*: mantenimento della coerenza e sincronizzazione degli stati dei magazzini.
- *Consultazione stato aggregato*: esposizione delle informazioni verso microservizi che richiedono lo stato complessivo.
- *Pubblicazione eventi*: invio di notifiche verso i microservizi interessati quando avvengono variazioni di stato.
- *Interoperabilità*: interazione con microservizi esterni quali:
  - _Microservizio Stato_, per ricevere heartbeat e aggiornamenti.
  - _Microservizio Routing_, per ricevere evento per la richiesta dello stato di un magazzino specifico.

==== CloudWarehouseId
 + Rappresenta l’identificatore univoco del magazzino nel cloud,
 + Incapsula il campo _warehouseId: number_,
 + Espone il metodo _getId()_.

Descrizione degli attributi della struttura:
 - *warehouseId*: number \
   Identificativo numerico del magazzino.

Può invocare le seguenti funzioni:
 - *getId()*: number \
   Restituisce l’id del magazzino.

==== CloudWarehouseState
 + Contiene lo stato corrente del magazzino nel cloud.

Descrizione degli attributi della struttura:
 - *state*: string \
   Stato del magazzino.
 - *warehouseId*: CloudWarehouseId \
   Identificativo del magazzino.

Può invocare le seguenti funzioni:
 - *getState()*: string \
   Restituisce lo stato del magazzino.
 - *getId()*: number \
   Restituisce l’id del magazzino.

==== CloudHeartbeat
 + Rappresenta un messaggio periodico di stato inviato dal magazzino al cloud.

Descrizione degli attributi della struttura:
 - *heartbeatMsg*: string \
   Contenuto del messaggio di stato.
 - *timestamp*: DateTime \
   Data e ora del messaggio.
 - *warehouseId*: CloudWarehouseId \
   Identificativo del magazzino mittente.

Può invocare le seguenti funzioni:
 - *getHeartbeatMsg()*: string \
   Restituisce il messaggio di stato.
 - *getId()*: number \
   Restituisce l’id del magazzino.
 - *getTimestamp()*: DateTime \
   Restituisce la data e l’ora del messaggio.

==== CloudStateService
 + Costituisce la logica di business del servizio cloud,
 + Gestisce il controllo, la visualizzazione e l’aggiornamento dello stato del magazzino.

Può invocare le seguenti funzioni:
 - *checkHeartbeat(heartbeat: CloudHeartbeat)*: boolean \
   Controlla lo stato del magazzino tramite il messaggio di heartbeat.
 - *getState(warehouseId: CloudWarehouseId)*: CloudWarehouseState \
   Restituisce lo stato del magazzino selezionato.
 - *updateState(state: CloudWarehouseState)*: boolean \
   Aggiorna lo stato del magazzino.

==== CloudWarehouseStateDTO
 + Rappresenta lo stato del magazzino nel cloud sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *state*: string \
   Stato del magazzino.
 - *warehouseId*: number \
   Identificativo del magazzino.

==== CloudWarehouseIdDTO
 + Rappresenta l’identificativo del magazzino sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *id*: number \
   Identificativo numerico del magazzino.

==== CloudHeartbeatDTO
 + Rappresenta un messaggio di stato del magazzino sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *heartbeatMsg*: string \
   Contenuto del messaggio di stato.
 - *timestamp*: DateTime \
   Data e ora del messaggio.
 - *warehouseId*: CloudWarehouseId \
   Identificativo del magazzino mittente.

==== DataMapper
 + Gestisce la conversione tra DTO e oggetti di dominio e viceversa.

Può invocare le seguenti funzioni statiche:
 - *toDomain(dto: CloudWarehouseStateDTO): CloudWarehouseState* \
   Converte il DTO dello stato del magazzino in oggetto di dominio.
 - *toDomain(dto: CloudWarehouseIdDTO): CloudWarehouseId* \
   Converte il DTO dell’id del magazzino in oggetto di dominio.
 - *toDTO(domain: CloudWarehouseState): CloudWarehouseStateDTO* \
   Converte l’oggetto di dominio CloudWarehouseState nel rispettivo DTO.
 - *toDTO(domain: CloudWarehouseId): CloudWarehouseIdDTO* \
   Converte l’oggetto di dominio CloudWarehouseId nel rispettivo DTO.
 - *toDTO(domain: CloudHeartbeat): CloudHeartbeatDTO* \
   Converte l’oggetto di dominio CloudHeartbeat nel rispettivo DTO.

==== GetStateUseCase
 + Caso d’uso per la richiesta dello stato di un magazzino nel cloud.

Può invocare le seguenti funzioni:
 - *getState(warehouseIdDTO: CloudWarehouseIdDTO): void* \
   Dichiarazione del metodo per richiedere lo stato di un magazzino.

==== HeartbeatReceivedEvent
 + Caso d’uso per la gestione dei messaggi di heartbeat ricevuti.

Può invocare le seguenti funzioni:
 - *syncReceivedHeartbeat(heartbeatDTO: CloudHeartbeatDTO): void* \
   Sincronizza lo stato del magazzino nel cloud.

==== UpdateStateUseCase
 + Caso d’uso per la sincronizzazione delle modifiche dello stato del magazzino.

Può invocare le seguenti funzioni:
 - *updateState(stateDTO: CloudWarehouseStateDTO): void* \
   Sincronizza la modifica dello stato del magazzino nel cloud.

==== CloudStateController
 + Gestisce gli eventi in ingresso,
 + Implementa i metodi di *HeartbeatReceivedEvent*, *UpdateStateUseCase* e *GetStateUseCase*,
 + Riceve i DTO dall’esterno, li converte in oggetti di dominio e li passa al *CloudStateService*.

==== GetStatePort
 + Definisce il contratto per la pubblicazione dello stato del magazzino.

Può invocare le seguenti funzioni:
 - *publishState(state: CloudWarehouseState): void* \
   Pubblica l’evento di avvenuta pubblicazione dello stato del magazzino.

==== CheckHeartBeatPort
 + Definisce il contratto per la pubblicazione dei messaggi di stato (heartbeat).

Può invocare le seguenti funzioni:
 - *publishHeartbeat(heartbeat: CloudHeartbeat): void* \
   Pubblica l’evento di avvenuta pubblicazione del messaggio di stato del magazzino.

==== StateUpdatedPort
 + Definisce il contratto per la notifica di aggiornamenti dello stato del magazzino.

Può invocare le seguenti funzioni:
 - *stateUpdated(state: CloudWarehouseState): void* \
   Pubblica l’evento di avvenuta modifica dello stato del magazzino.

==== StateEventAdapter
 + Gestisce gli eventi in uscita verso altri moduli del sistema,
 + Implementa i metodi di *GetStatePort*, *CheckHeartBeatPort* e *StateUpdatedPort*,
 + Converte gli oggetti di dominio nei rispettivi DTO prima della pubblicazione.

==== CloudStateRepository
 + Interfaccia per l’accesso ai dati dello stato del magazzino nel cloud.

Può invocare le seguenti funzioni:
 - *getState(warehouseId: CloudWarehouseId): CloudWarehouseState* \
   Restituisce lo stato corrente del magazzino.
 - *updateState(state: CloudWarehouseState): boolean* \
   Aggiorna lo stato del magazzino e restituisce true/false a seconda del successo dell’operazione.

==== CloudStateRepositoryImpl

/*
=================================================
             MICROSERVIZIO ORDERS
=================================================
*/
#pagebreak()
#label("Orders")
=== Microservizio Orders
// Breve spiegazione + Immagine
#figure(
  image("assets/Orders.svg", width: 120%),
  caption: [Schema UML - Microservizio Ordini]
)
==== Descrizione del microservizio

Il *Microservizio Ordini* rappresenta il componente responsabile della gestione degli ordini di un magazzino.
Il suo compito principale è quello di orchestrare la gestione degli ordini dal momento in cui sono inseriti al momento in cui la merce arriva a destinazione. Si occupa inoltre di comunicare con il sistema centrale per la richiesta di sopperimento merce questa merce non sia sufficiente per soddsfare un ordine.
===== Funzionalità principali
- *Gestione degli ordini*: inserimento, annullamento, aggiornamento dello stato e consultazione degli ordini di vendita e degli ordini di trasferimento.
- *Saga degli ordini di vendita*: gestisce la saga per la gestione degli ordini di vendita a partire dal momento in cui sono inseriti. Si occupa in particolare di ordinare:
  - Controllo e riservamento di merce nell'inventario locale.
  - Richiedere merce al sistema centrale qualora fosse necessario.
  - Spedizione della merce.
- *Saga degli ordini di trasferimento*: gestisce la saga per la gestione degli ordini di trasferimento a partire dal momento in cui sono inseriti. Si occupa in particolare di ordinare:
  - Controllo e riservamento di merce nell'inventario locale.
  - Spedizione della merce.
  - Tracciatura dell'ordine anche nel magazzino di destinazione.
- *Pubblicazione eventi*: emissione di notifiche verso gli altri microservizi quando avvengono variazioni di stato dell'ordine.
- *Interoperabilità*: interazione con microservizi esterni quali:
  - _Sistema Centralizzato_, che coordina gli eventi critici e la logica di alto livello.
  - _Microservizio Inventario_, per verificare la disponibilità dei prodotti richiesti.
  - _Ordini Aggregato_, per fornire una vista globale degli ordini nell'intero sistema.
  - _Microservizio Ordini_ di altri magazzini, per la gestione di traferimenti interni tra magazzini.

==== OrderId
 + Rappresenta l’identificativo univoco dell’ordine,
 + Incapsula il campo _id: string_,
 + Espone i metodi _getId()_ e _getOrderType()_.

Descrizione degli attributi della struttura:
 - *id*: string \
   Identificativo dell’ordine.

Può invocare le seguenti funzioni:
 - *getId()*: string \
   Restituisce l’id dell’ordine.
 - *getOrderType()*: char \
   Restituisce il tipo di ordine (vendita / trasferimento interno), viene differenziato tramite la prima lettera dell'Id (I o V).

==== `<<enum>>` OrderState
 + Rappresenta lo stato dell’ordine.

Descrizione degli attributi della struttura:
 - *orderState*: string \
   Stato dell’ordine, e lo stato dell'ordine può essere ("PENDING", "PROCESSING", "SHIPPED", "CANCELLED" ,"COMPLETED").

==== ItemId
 + Rappresenta l’identificativo di un prodotto presente nell’ordine.

Descrizione degli attributi della struttura:
 - *id*: string \
   Identificativo del prodotto.

Può invocare le seguenti funzioni:
 - *getId()*: string \
   Restituisce l’id del prodotto.

==== OrderItem
 + Rappresenta in maniera sintetica i prodotti ordinati.

Descrizione degli attributi della struttura:
 - *itemId*: ItemId \
   Identificativo del prodotto.
 - *quantity*: number \
   Quantità ordinata.

Può invocare le seguenti funzioni:
 - *getItemId(): ItemId* \
   Restituisce l’id del prodotto ordinato.
 - *getQuantity(): number* \
   Restituisce la quantità ordinata.
 - *setQuantity(quantity: number): void* \
   Imposta la quantità ordinata per l’item.

==== OrderItemDetail
 + Rappresenta nel dettaglio i prodotti ordinati.

Descrizione degli attributi della struttura:
 - *item*: OrderItem
   Rappresenta l’id del prodotto e la quantità ordinata.
 - *quantityReserved*: number \
   Quantità riservata per l’ordine.
 - *unitPrice*: number \
   Prezzo unitario del prodotto ordinato.

Può invocare le seguenti funzioni:
 - *getItemId(): ItemId* \
   Restituisce l’id del prodotto.
 - *getQuantity(): number* \
   Restituisce la quantità ordinata.
 - *getQuantityReserved(): number* \
   Restituisce la quantità riservata.
 - *getUnitPrice(): number* \
   Restituisce il prezzo unitario.
 - *setQuantity(quantity: number): void* \
   Imposta la quantità ordinata.
 - *setQuantityReserved(quantityReserved: number): void* \
   Imposta la quantità riservata.
 - *setUnitPrice(unitPrice: number): void* \
   Imposta il prezzo unitario.

==== {abstract} Order
 + Classe astratta per ordini di vendita o interni.
 + È stato scelto questo approccio in quanto ci sono due tipi di ordini: gli ordini di vendita e gli ordini interni.

Descrizione degli attributi della struttura:
 - *orderId*: OrderId \
  Rappresenta l’id dell’ordine.
 - *items*: OrderItemDetail[] \
  Rappresenta l’array di prodotti ordinati.
 - *orderState*: OrderState \
  Rappresenta lo stato dell’ordine.
 - *creationDate*: DateTime \
  Rappresenta la data e l’ora della creazione dell’ordine.
 - *warehouseDeparture*: number \
  Rappresenta il magazzino di partenza dell’ordine.

Può invocare le seguenti funzioni:
  - *getOrderId(): OrderId* \
    Restituisce l'id dell'ordine,
  - *getItemsDetail(): OrderItemDetail[]* \
    Restituisce l’array di dettaglio dell'ordine dei prodotti.
  - *getOrderState(): string* \
    Restituisce lo stato dell’ordine.
  - *getCreationDate(): DateTime* \
    Restituisce la data di creazione.
  - *getWarehouseDeparture(): number* \
    Restituisce il magazzino di partenza.
  - *setItemsDetail(items: OrderItemDetail[]): void* \
    Imposta l’array di dettaglio dell'ordine dei prodotti.
  - *setOrderState(orderState: OrderState): void* \
    Imposta lo stato dell’ordine.
  - *setCreationDate(creationDate: DateTime): void* \
    Imposta la data di creazione.
  - *setWarehouseDeparture(warehouseDeparture: number): void* \
    Imposta il magazzino di partenza.

==== SellOrder
 + Classe concreta che rappresenta gli ordini di vendita.

Descrizione degli attributi della struttura:
 - *destinationAddress*: string \
   Rappresenta l’indirizzo di destinazione dell’ordine.
Può invocare le seguenti funzioni:
 - *getDestinationAddress(): string* \
   Restituisce l’indirizzo di destinazione.
 - *setDestinationAddress(address: string): void* \
   Imposta l’indirizzo di destinazione.

==== InternalOrder
 + Classe concreta che rappresenta gli ordini interni, di riassortimento.

Descrizione degli attributi della struttura:
  - *warehouseDestination*: number \
    Rappresenta il magazzino di destinazione dell'ordine di traferimento.
  - *sellOrderReference*: OrderId \
    Rappresenta il riferimento ad un ordine di vendita, per i casi di ordini di traferimento richiesti al sistema centrale da un ordine di vendita

Può invocare le seguenti funzioni:
 - *getWarehouseDestination(): number* \
   Restituisce il magazzino di destinazione.
 - *setWarehouseDestination(warehouseDestination: number): void* \
   Imposta il magazzino di destinazione.

==== Orders
 + Classe che accorpa tutti gli ordini.
 + È utile, ad esempio, per una visualizzazione complessiva degli ordini.

Descrizione degli attributi della struttura:
  - *sellOrders*: SellOrder[]
    Rappresenta l’array degli ordini di vendita.
  - *internalOrders*: InternalOrder[]
    Rappresenta l’array degli ordini interni.

  Può invocare le seguenti funzioni:
  - *getSellOrders(): SellOrder[]* \
    Restituisce gli ordini di vendita.
  - *getInternalOrders(): InternalOrder[]* \
    Restituisce gli ordini interni.
  - *setSellOrders(sellOrders: SellOrder[]): void* \
    Imposta gli ordini di vendita.
  - *setInternalOrders(internalOrders: InternalOrder[]): void* \
    Imposta gli ordini interni.

==== OrderService
 + Logica di business del microservizio ordini.

Può invocare le seguenti funzioni:
  - *checkOrderExistence(OrderId): bool* \
    Verifica l’esistenza dell’ordine.
  - *updateOrderState(OrderId, OrderState): void* \
    Aggiorna lo stato dell’ordine.
  - *createSellOrder(SellOrder): Promise<void>* \
    Crea un nuovo ordine di vendita.
  - *createInternalOrder(order: InternalOrder): Promise<void>* \
    Crea un nuovo ordine interno.
  - *cancelOrder(OrderId): void* \
    Annulla un ordine.
  - *updateReservedStock(OrderId, OrderItem[]): Order* \
    Aggiorna le quantità riservate dopo il controllo magazzino.
  - *updateFullReservedStock(OrderId): Order* \
    PRE: Tutti i prodotti richiesti dall'ordine sono presenti in magazzino con le quantità richieste.
    POST: Aggiorna le quantità riservate dopo il controllo magazzino.
  - *checkReservedQuantityForSellOrder(SellOrder): void* \
    Verifica le quantità riservate per un ordine di vendita.
  - *checkReservedQuantityForInternalOrder(InternalOrder): void* \
    Verifica le quantità riservate per un ordine interno.
  - *shipOrder(OrderId): void* \
    Imposta l’ordine come spedito.
  - *receiveOrder(OrderId): void* \
    Segnala la ricezione dell’ordine.
  - *completeOrder(OrderId): void* \
    Imposta l’ordine come completato.

==== OrderSaga
 + Gestisce le saghe degli ordini.
 + In seguito verrà spiegata nel dettaglio: per ogni tipologia di ordine (di vendita o di trasferimento interno), c’è un diverso modo di procedere, utilizzando eventi e metodi presenti in questo microservizio.

Può invocare le seguenti funzioni:
 - *startSellOrder(orderId: OrderId): void* \
   Esegue la saga per un ordine di vendita.
 - *startInternalOrder(orderId: OrderId): void* \
   Esegue la saga per un ordine interno.

==== OrderIdDTO
 + Rappresenta l’identificativo dell’ordine sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *id*: string \
   Codice identificativo dell’ordine.

==== `<<enum>>` OrderStateDTO
 + Rappresenta lo stato dell’ordine sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *orderState*: string \
   Stato dell’ordine ("PENDING", "PROCESSING", "SHIPPED", "CANCELLED" ,"COMPLETED").

==== OrderItemDTO
 + Rappresenta un prodotto ordinato sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *itemId*: string \
   Identificativo del prodotto.
 - *quantity*: number \
   Quantità ordinata.

==== OrderItemDetailDTO
 + Rappresenta nel dettaglio un prodotto ordinato sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *item*: OrderItemDTO \
   Informazioni sul prodotto ordinato.
 - *quantityReserved*: number \
   Quantità riservata per l’ordine.
 - *unitPrice*: number \
   Prezzo unitario del prodotto ordinato.

==== InternalOrderDTO
 + Rappresenta un ordine interno sotto forma di DTO.

Descrizione degli attributi della struttura:
  - *orderId*: OrderIdDTO \
    Identificativo dell’ordine.
  - *items*: OrderItemDetailDTO[] \
    Array dei prodotti ordinati.
  - *orderState*: OrderStateDTO \
    Stato dell’ordine.
  - *creationDate*: DateTime \
    Data e ora di creazione dell’ordine.
  - *warehouseDeparture*: number \
    Magazzino di partenza.
  - *warehouseDestination*: number \
    Magazzino di destinazione.
  - *sellOrderId*: OrderIdDTO \
    Riferimento a ordine di vendita.
   

==== SellOrderDTO
 + Rappresenta un ordine di vendita sotto forma di DTO.

Descrizione degli attributi della struttura::
 - *orderId*: OrderIdDTO \
   Identificativo dell’ordine.
 - *items*: OrderItemDetailDTO[] \
   Array dei prodotti ordinati.
 - *orderState*: OrderStateDTO \
   Stato dell’ordine.
 - *creationDate*: DateTime \
   Data e ora di creazione.
 - *warehouseDeparture*: number \
   Magazzino di partenza.
 - *destinationAddress*: string \
   Indirizzo di destinazione dell’ordine.

==== OrderQuantityDTO
 + Rappresenta l’ordine con quantità dei prodotti sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *id*: OrderIdDTO \
   Identificativo dell’ordine.
 - *items*: OrderItemDTO[] \
   Array dei prodotti ordinati.

==== OrdersDTO
 + Rappresenta tutti gli ordini aggregati sotto forma di DTO.

Descrizione degli attributi della struttura:
 - *sell*: SellOrderDTO[] \
   Array degli ordini di vendita.
 - *internal*: InternalOrderDTO[] \
   Array degli ordini interni.

==== DataMapper
 + Gestisce la conversione tra DTO e oggetti di dominio e viceversa.

Può invocare le seguenti funzioni:
 - *internalOrderToDomain(dto: InternalOrderDTO): InternalOrder* \
   Converte un DTO InternalOrder in oggetto di dominio.
 - *sellOrderToDomain(dto: SellOrderDTO): SellOrder* \
   Converte un DTO SellOrder in oggetto di dominio.
 - *orderItemToDomain(item: OrderItemDTO): OrderItem* \
   Converte un DTO OrderItem in oggetto di dominio.
 - *orderIdToDomain(orderId: OrderIdDTO): OrderId* \
   Converte un DTO OrderId in oggetto di dominio.
 - *orderStateToDomain(state: OrderStateDTO): OrderState* \
   Converte un DTO OrderState in oggetto di dominio.
 - *orderItemDetailToDomain(dto: OrderItemDetailDTO): OrderItemDetail* \
   Converte un DTO OrderItemDetail in oggetto di dominio.
 - *internalOrderToDTO(order: InternalOrder): InternalOrderDTO* \
   Converte un oggetto di dominio InternalOrder in DTO.
 - *sellOrderToDTO(order: SellOrder): SellOrderDTO* \
   Converte un oggetto di dominio SellOrder in DTO.
 - *orderItemToDTO(order: OrderItem): OrderItemDTO* \
   Converte un oggetto di dominio OrderItem in DTO.
 - *orderIdToDTO(orderId: OrderId): OrderIdDTO* \
   Converte un oggetto di dominio OrderId in DTO.
 - *orderStateToDTO(state: OrderState): OrderStateDTO* \
   Converte un oggetto di dominio OrderState in DTO.
 - *orderItemDetailToDTO(order: OrderItemDetail): OrderItemDetailDTO* \
   Converte un oggetto di dominio OrderItemDetail in DTO.
 - *orderQuantityToDTO(orderId: OrderId, items: OrderItem[]): OrderQuantityDTO* \
   Converte l’OrderId e gli OrderItem in un DTO OrderQuantityDTO.
 - *ordersToDTO(orders: Orders): OrdersDTO* \
   Converte l’oggetto Orders in DTO aggregato.

==== ReservationEventListener
 + Gestisce gli eventi relativi alla richiesta di riservare stock per un ordine.

Può invocare le seguenti funzioni:
  - *sufficientProductAvailability(OrderIdDTO): void* \
    Comunica che tutti i prodotti richiesti da un ordine sono presenti nel magazzino con le quanità richieste.
  - *stockReserved(order: OrderQuantityDTO): void* \
    Comunica la quantità di prodotti riservati dal magazzino per un ordine.

==== SellOrderEventListener
 + Gestisce gli eventi relativi all’aggiunta di ordini di vendita.

Può invocare le seguenti funzioni:
 - *addSellOrder(order: SellOrderDTO): void* \
   Richiede l’aggiunta di un ordine di vendita.

==== InternalOrderEventListener
 + Gestisce gli eventi relativi all’aggiunta di ordini interni.

Può invocare le seguenti funzioni:
 - *addInternalOrder(order: InternalOrderDTO): void* \
   Richiede l’aggiunta di un ordine di trasferimento interno.
 - *addInternalOrderEvent(order: InternalOrderDTO): void* \
   Richiede l’aggiunta di un ordine di trasferimento interno.
==== ShipmentEventListener
 + Gestisce gli eventi di spedizione e ricezione degli ordini.

Può invocare le seguenti funzioni:
 - *waitingForStock(orderId: OrderIdDTO): void* \
   Comunica al magazzino di partenza che il magazzino di destinazione attende la merce.
 - *stockShipped(orderId: OrderIdDTO): void* \
   Comunica che il magazzino ha spedito la merce.
 - *stockReceived(orderId: OrderIdDTO): void* \
   Comunica che il magazzino di destinazione ha ricevuto la merce.
 - *replenishmentReceived(orderId: OrderIdDTO): void* \
   Comunica che il riassortimento è stato completato.

==== UpdateOrderStateUseCase
 + Gestisce l’aggiornamento dello stato degli ordini.

Può invocare le seguenti funzioni:
 - *updateOrderState(orderId: OrderIdDTO, state: OrderStateDTO): void* \
   Richiede l’aggiornamento dello stato di un ordine.
 - *updateOrderStatEvent(orderId: OrderIdDTO, state: OrderStateDTO): void* \
   Richiede l’aggiornamento dello stato di un ordine.

==== OrderStatusEventListener
 + Gestisce gli eventi relativi allo stato finale degli ordini.

Può invocare le seguenti funzioni:
 - *cancelOrder(orderId: OrderIdDTO): void* \
   Richiede la cancellazione di un ordine.
 - *completeOrder(orderId: OrderIdDTO): void* \
   Contrassegna l’ordine come completato.

==== GetOrderStateUseCase
 + Gestisce la richiesta di stato di un ordine.

Può invocare le seguenti funzioni:
 - *getOrderState(orderId: OrderIdDTO): OrderStateDTO* \
   Richiede lo stato corrente dell’ordine.

==== GetOrderUseCase
 + Gestisce la richiesta di visualizzazione di un ordine.

Può invocare le seguenti funzioni:
 - *getOrder(orderId: OrderIdDTO): InternalOrderDTO | SellOrderDTO* \
   Richiede i dettagli di un ordine specifico.

==== GetAllOrderUseCase
 + Gestisce la richiesta di visualizzazione di tutti gli ordini.

Può invocare le seguenti funzioni:
 - *getOrdersCollection(): OrdersDTO* \
   Richiede la lista completa degli ordini.

==== OrdersController
 + Gestisce gli eventi in ingresso e coordina i DTO verso il servizio.

Può invocare le seguenti funzioni:
 - Implementa i metodi di 
  - *ReservationEventListener*, 
  - *SellOrderEventListener*, 
  - *InternalOrderEventListener*,
  - *ShipmentEventListener*,
  - *UpdateOrderStateUseCase*,
  - *OrderStatusEventListener*, 
  - *GetOrderStateUseCase*,
  - *GetOrderUseCase*,
  - *GetAllOrderUseCase*.
 - Converte i DTO in oggetti di dominio e li passa a OrdersService.

==== ReserveStockCommandPublisher
 + Gestisce la pubblicazione di eventi per riservare stock.

Può invocare le seguenti funzioni:
 - *publishReserveStock(orderId: OrderId, items: OrderItem[]): void* \
   Pubblica l’evento di richiesta di riserva prodotti dal magazzino.
 - *publishUpdatedReserveStock(orderId: OrderId, items: OrderItem[]): void* \
   Pubblica l’evento di richiesta di aggiornare i prodotti riservati.
 - *unservedStock(OrderId) : void* \ 
   Pubblica l’evento di mancata disponibilità dei prodotti richiesti perciò richiede di annullare le quantità riservate fin ora.
==== ShipStockCommandPublisher
 + Gestisce la pubblicazione degli eventi di spedizione.

Può invocare le seguenti funzioni:
 - *publishShipment(orderId: OrderId, items: OrderItem[]): void* \
   Pubblica l’evento di spedizione della merce.
 - *receiveShipment(orderId: OrderId, items: OrderItem[], destination: number): void* \
   Pubblica l’evento di ricezione della merce da parte del magazzino di destinazione.

==== RequestStockReplenishmentPublisher
 + Gestisce la pubblicazione degli eventi di riassortimento.

Può invocare le seguenti funzioni:
 - *publishStockRepl(orderId: OrderId, items: OrderItem[]): void* \
   Pubblica l’evento di riassortimento dello stock.

==== OrderUpdateEventPublisher
 + Gestisce la pubblicazione degli eventi di aggiornamento degli ordini.

Può invocare le seguenti funzioni:
 - *orderStateUpdated(order: Order): void* \
   Pubblica l’evento di aggiornamento di un ordine.

==== OrderStatusEventPublisher
 + Gestisce la pubblicazione degli eventi relativi allo stato finale degli ordini.

Può invocare le seguenti funzioni:
 - *orderCancelled(orderId: OrderId, warehouse: number): void* \
   Pubblica l’evento di cancellazione di un ordine.
 - *orderCompleted(orderId: OrderId, warehouse: number): void* \
   Pubblica l’evento di completamento di un ordine.

==== OrderEventPublisher
 + Gestisce la pubblicazione degli ordini interni e di vendita.

Può invocare le seguenti funzioni:
  - *publishInternalOrder (InternalOrder, context: { destination: String, warehouseId:
number = null } ): void* \
    Pubblica l’ordine interno.
  - *publishSellOrder (SellOrder, context: { destination: String, warehouseId: Integer = null } ): void* \
    Pubblica l’ordine di vendita.
==== WaitingStockEventPublisher
 + Gestisce la pubblicazione degli eventi di attesa della merce.

Può invocare le seguenti funzioni:
  - *waitingForStock(orderId: OrderId, warehouseId: number ): void* \
    Pubblica l’ordine di vendita.

==== OutboundEventAdapter
 + Gestisce gli eventi in uscita.

Può invocare le seguenti funzioni:
  - Implementa i metodi di: 
    - ReserveStockCommandPublisher,
    - ShipStockCommandPublisher,
    - RequestStockReplenishmentPublisher,
    - OrderUpdateEventPublisher,
    - OrderStatusEventPublisher,
    - OrderEventPublisher,
    - WaitingStockEventPublisher.
  - Converte gli oggetti di dominio nei rispettivi DTO.

==== OrdersRepository
 + Gestisce l’accesso e la persistenza degli ordini.

Può invocare le seguenti funzioni:
  - *getById(id: OrderId): InternalOrder | SellOrder* \
    Restituisce un ordine tramite id.
  - *getState(id: OrderId): OrderState* \
    Restituisce lo stato di un ordine.
  - *getAllOrders(): Orders* \
    Restituisce tutti gli ordini.
  - *addSellOrder(order: SellOrder): void* \
    Aggiunge un ordine di vendita.
  - *addInternalOrder(order: InternalOrder): void* \
    Aggiunge un ordine interno.
  - *removeById(id: OrderId): bool* \
    Rimuove un ordine e restituisce true/false.
  - *genUniqueId(orderType: string): OrderId*\
    Genera un id univoco per un ordine.
  - *updateOrderState(id: OrderId, state: OrderState): InternalOrder | SellOrder* \
    Aggiorna lo stato di un ordine.
  - *updateReservedStock(orderId: OrderId, items: OrderItem[]): InternalOrder | SellOrder* \
    Aggiorna le quantità riservate per un ordine.
  - *checkReservedQuantityForSellOrder(SellOrder): void* \
    Verifica se le quantità di prodotti riservate per l'ordine di vendita corrispondono a quelle richieste
  - *checkReservedQuantityForInternalOrder(SellOrder): void* \
    Verifica se le quantità di prodotti riservate per l'ordine di trasferiemento corrispondono a quelle richieste


==== OrdersRepositoryImpl


/*
=================================================
        MICROSERVIZIO ORDINE AGGREGATO
=================================================
*/
#pagebreak()
#label("Orders Aggregate")
=== Microservizio Ordine Aggregato
#figure(
  image("assets/CloudOrders.svg", width: 120%),
  caption: [Schema UML - Microservizio Ordine Aggregato]
)
==== Descrizione del microservizio
Il Microservizio Ordini invia eventi al Microservizio Ordini Aggregato, che ha il compito di:
- Ricevere e consolidare dati sugli ordini provenienti da più magazzini.
- Offrire una vista centralizzata dello stato degli ordini.
- Garantire consistenza e tracciabilità nel caso di trasferimenti tra magazzini differenti.
- Offrire dati al sistema centralizzato per risolvere problemi di criticità.
===== Funzionalità principali
- *Aggregazione ordini*: riceve e consolida dati sugli ordini da più magazzini.
- *Gestione dati *: Manda i dati richiesti dal sistema centralizzato per supportarlo al compimento del processo.
==== SyncOrderId
 + Rappresenta l’identificativo dell’ordine sincronizzato.

Descrizione degli attributi della struttura:
 - *id*: string \
   Codice identificativo dell’ordine.

Può invocare le seguenti funzioni:
 - *getId(): string* \
   Restituisce l’id dell’ordine.
 - *getOrderType(): char* \
   Restituisce il tipo di ordine (di vendita / trasferimento interno).

==== `<<enum>>` SyncOrderState
 + Rappresenta lo stato dell’ordine sincronizzato.

Descrizione degli attributi della struttura:
 - *orderState*: string \
   Stato dell’ordine ("PENDING", "PROCESSING", "SHIPPED", "CANCELLED" ,"COMPLETED").

==== SyncItemId
 + Rappresenta l’identificativo del prodotto presente nell’ordine sincronizzato.

Descrizione degli attributi della struttura:
 - *id*: string \
   Codice identificativo del prodotto.

Può invocare le seguenti funzioni:
 - *getId(): string* \
   Restituisce l’id del prodotto.

==== SyncOrderItem
 + Rappresenta un prodotto ordinato in forma semplificata.

Descrizione degli attributi della struttura:
 - *itemId*: SyncItemId \
   Identificativo del prodotto.
 - *quantity*: number \
   Quantità ordinata.

Può invocare le seguenti funzioni:
 - *getItemId(): SyncItemId* \
   Restituisce l’id del prodotto.
 - *getQuantity(): number* \
   Restituisce la quantità ordinata.

==== SyncOrderItemDetail
 + Rappresenta un prodotto ordinato in forma dettagliata.

Descrizione degli attributi della struttura:
 - *item*: SyncOrderItem \
   Informazioni sul prodotto ordinato.
 - *quantityReserved*: number \
   Quantità riservata per l’ordine.
 - *unitPrice*: number \
   Prezzo unitario del prodotto ordinato.

Può invocare le seguenti funzioni:
 - *getItemId(): SyncItemId* \
   Restituisce l’id del prodotto.
 - *getQuantity(): number* \
   Restituisce la quantità ordinata.
 - *getQuantityReserved(): number* \
   Restituisce la quantità riservata.
 - *getUnitPrice(): number* \
   Restituisce il prezzo unitario.

==== {abstract} SyncOrder
 + Classe astratta per gli ordini sincronizzati (vendita e interni).

Descrizione degli attributi della struttura:
 - *orderId*: SyncOrderId \
   Identificativo dell’ordine.
 - *items*: SyncOrderItemDetail[] \
   Array dei prodotti ordinati.
 - *orderState*: SyncOrderState \
   Stato dell’ordine.
 - *creationDate*: DateTime \
   Data e ora di creazione.
 - *warehouseDeparture*: number \
   Magazzino di partenza.

Può invocare le seguenti funzioni:
 - *getItems(): SyncOrderItem[]* \
   Restituisce l’array dei prodotti ordinati.
 - *getOrderState(): string* \
   Restituisce lo stato dell’ordine.
 - *getCreationDate(): DateTime* \
   Restituisce la data di creazione.
 - *getWarehouseDeparture(): number* \
   Restituisce il magazzino di partenza.

==== SyncSellOrder
 + Rappresenta un ordine di vendita sincronizzato.

Descrizione degli attributi della struttura:
 - *destinationAddress*: string \
   Indirizzo di destinazione.

Può invocare le seguenti funzioni:
 - *getDestinationAddress(): string* \
   Restituisce l’indirizzo di destinazione.

==== SyncInternalOrder
 + Rappresenta un ordine interno sincronizzato (riassortimento).

Descrizione degli attributi della struttura:
 - *warehouseDestination*: number \
   Magazzino di destinazione.

Può invocare le seguenti funzioni:
 - *getWarehouseDestination(): number* \
   Restituisce il magazzino di destinazione.

==== SyncOrders
 + Accorpa tutti gli ordini sincronizzati.

Descrizione degli attributi della struttura:
 - *sellOrders*: SyncSellOrder[] \
   Array degli ordini di vendita.
 - *internalOrders*: SyncInternalOrder[] \
   Array degli ordini interni.

Può invocare le seguenti funzioni:
 - *getSellOrders(): SyncSellOrder[]* \
   Restituisce l’array degli ordini di vendita.
 - *getInternalOrders(): SyncInternalOrder[]* \
   Restituisce l’array degli ordini interni.

==== CloudOrderService
 + Logica di business del microservizio Aggregate Orders.

Può invocare le seguenti funzioni:
 - *syncUpdateOrderState(orderId: SyncOrderId, state: SyncOrderState): void* \
   Sincronizza l’aggiornamento dello stato di un ordine.
 - *syncCreateSellOrder(order: SyncSellOrder): Promise`<void>`* \
   Sincronizza la creazione di un ordine di vendita.
 - *syncCreateInternalOrder(order: SyncInternalOrder): Promise`<void>`* \
   Sincronizza la creazione di un ordine interno.
 - *syncCancelOrder(orderId: SyncOrderId): void* \
   Sincronizza la cancellazione di un ordine.
 - *syncUpdateReservedStock(orderId: SyncOrderId, items: SyncOrderItem[]): SyncOrder* \
   Sincronizza l’aggiornamento delle quantità riservate.
 - *syncUnreserveStock(SyncOrderId): void*\
   Sincronizza la cancellazione delle quantità riservate.
==== SyncOrderIdDTO
 + DTO per l’id dell’ordine sincronizzato.

Descrizione degli attributi della struttura:
 - *id*: string \
   Codice identificativo dell’ordine.

==== `<<enum>>` SyncOrderStateDTO
 + DTO per lo stato dell’ordine sincronizzato.

Descrizione degli attributi della struttura:
 - *orderState*: string \
   Stato dell’ordine.

==== SyncOrderItemDTO
 + DTO per un prodotto ordinato.

Descrizione degli attributi della struttura:
 - *itemId*: string \
   Id del prodotto.
 - *quantity*: number \
   Quantità ordinata.

==== SyncOrderItemDetailDTO
 + DTO per un prodotto ordinato in dettaglio.

Descrizione degli attributi della struttura:
 - *item*: SyncOrderItemDTO \
   Id e quantità del prodotto.
 - *quantityReserved*: number \
   Quantità riservata.
 - *unitPrice*: number \
   Prezzo unitario.

==== SyncInternalOrderDTO
 + DTO per un ordine interno sincronizzato.

Descrizione degli attributi della struttura:
 - *orderId*: SyncOrderIdDTO \
   Id dell’ordine.
 - *items*: SyncOrderItemDetailDTO[] \
   Prodotti ordinati.
 - *orderState*: SyncOrderStateDTO \
   Stato dell’ordine.
 - *creationDate*: DateTime \
   Data di creazione.
 - *warehouseDeparture*: number \
   Magazzino di partenza.
 - *warehouseDestination*: number \
   Magazzino di destinazione.

==== SyncSellOrderDTO
 + DTO per un ordine di vendita sincronizzato.

Descrizione degli attributi della struttura:
 - *orderId*: SyncOrderIdDTO \
   Id dell’ordine.
 - *items*: SyncOrderItemDetailDTO[] \
   Prodotti ordinati.
 - *orderState*: SyncOrderStateDTO \
   Stato dell’ordine.
 - *creationDate*: DateTime \
   Data di creazione.
 - *warehouseDeparture*: number \
   Magazzino di partenza.
 - *destinationAddress*: string \
   Indirizzo di destinazione.

==== SyncOrderQuantityDTO
 + DTO per quantità dei prodotti ordinati.
 
Descrizione degli attributi della struttura:
 - *id*: SyncOrderIdDTO \
   Id dell’ordine.
 - *items*: SyncOrderItemDTO[] \
   Array dei prodotti ordinati.

==== SyncOrdersDTO
 + DTO aggregato per tutti gli ordini sincronizzati.

Descrizione degli attributi della struttura:
 - *sell*: SyncSellOrderDTO[] \
   Array degli ordini di vendita.
 - *internal*: SyncInternalOrderDTO[] \
   Array degli ordini interni.

==== DataMapper
 + Gestisce la conversione tra DTO e oggetti di dominio per gli ordini sincronizzati.

Può invocare le seguenti funzioni:
 - *syncInternalOrderToDomain(dto: SyncInternalOrderDTO)* : SyncInternalOrder\
   Converte un DTO di ordine interno in oggetto di dominio.
 - *syncSellOrderToDomain(dto: SyncSellOrderDTO)* : SyncSellOrder \
   Converte un DTO di ordine di vendita in oggetto di dominio.
 - *syncOrderItemToDomain(item: SyncOrderItemDTO)* : SyncOrderItem \
   Converte un DTO di prodotto in oggetto di dominio.
 - *syncOrderIdToDomain(orderId: SyncOrderIdDTO)* : SyncOrderId \
   Converte un DTO dell’id ordine in oggetto di dominio.
 - *syncOrderStateToDomain(state: SyncOrderStateDTO)* : SyncOrderState \
   Converte un DTO dello stato ordine in oggetto di dominio.
 - *syncOrderItemDetailtoDomain(dto: SyncOrderItemDetailDTO)*: SyncOrderItemDetail\
   Converte un DTO di prodotto dettagliato in oggetto di dominio.
 - *syncInternalOrderToDTO(order: SyncInternalOrder)* : SyncInternalOrderDTO \
   Converte un oggetto di dominio InternalOrder in DTO.
 - *syncSellOrderToDTO(order: SyncSellOrder)* : SyncSellOrderDTO \
   Converte un oggetto di dominio SellOrder in DTO.
 - *syncOrderItemToDTO(item: SyncOrderItem)* : SyncOrderItemDTO \
   Converte un oggetto di dominio OrderItem in DTO.
 - *syncOrderIdToDTO(orderId: SyncOrderId)* : SyncOrderIdDTO \
   Converte un oggetto di dominio OrderId in DTO.
 - *syncOrderStateToDTO(state: SyncOrderState)* : SyncOrderStateDTO \
   Converte un oggetto di dominio OrderState in DTO.
 - *syncOrderItemDetailToDTO(order: SyncOrderItemDetail)* : SyncOrderItemDetailDTO \
   Converte un oggetto di dominio OrderItemDetail in DTO.
 - *syncOrderQuantityToDTO(orderId: SyncOrderId, items: SyncOrderItem[])* : SyncOrderQuantityDTO \
   Converte l’insieme OrderId + prodotti in DTO SyncOrderQuantityDTO.
 - *syncOrdersToDTO(orders: SyncOrders)* : SyncOrdersDTO \
   Converte l’oggetto SyncOrders in DTO aggregato.

==== SyncReservationEventListener
 + Gestisce gli eventi in ingresso relativi alla riservazione dei prodotti.

Può invocare le seguenti funzioni:
 - *stockReserved(dto: SyncOrderQuantityDTO)* : void \
   Richiede la sincronizzazione delle quantità di prodotti riservati per un ordine.
 - *unreserveStock(SyncOrderIdDTO)* : void \
   Richiede la sincronizzazione della cancellazione delle quantità riservate.
==== SyncSellOrderEventListener
 + Gestisce gli eventi in ingresso relativi agli ordini di vendita.

Può invocare le seguenti funzioni:
 - *addSellOrder(dto: SyncSellOrderDTO)* : void \
   Richiede la sincronizzazione dell’aggiunta di un ordine di vendita.

==== SyncInternalOrderEventListener
 + Gestisce gli eventi in ingresso relativi agli ordini interni.

Può invocare le seguenti funzioni:
 - *addInternalOrder(dto: SyncInternalOrderDTO)* : void \
   Richiede la sincronizzazione dell’aggiunta di un ordine di trasferimento interno.

==== SyncUpdateOrderStateUseCase
 + Gestisce gli eventi in ingresso per aggiornamento dello stato degli ordini.

Può invocare le seguenti funzioni:
 - *updateOrderState(orderIdDTO: SyncOrderIdDTO, stateDTO: SyncOrderStateDTO)* : void \
   Richiede la sincronizzazione dell’aggiornamento dello stato dell’ordine.

==== SyncOrderStatusEventListener
 + Gestisce gli eventi in ingresso relativi allo stato finale dell’ordine.

Può invocare le seguenti funzioni:
 - *cancelOrder(orderIdDTO: SyncOrderIdDTO)* : void \
   Richiede la sincronizzazione della cancellazione dell’ordine.
 - *completeOrder(orderIdDTO: SyncOrderIdDTO)* : void \
   Contrassegna lo stato dell’ordine come completato.

==== GetOrderStateUseCase
 + Permette di richiedere lo stato di un ordine.

Può invocare le seguenti funzioni:
 - *getOrderState(orderIdDTO: SyncOrderIdDTO)* : SyncOrderStateDTO \
   Restituisce lo stato dell’ordine specificato.

==== GetOrderUseCase
 + Permette di richiedere la visualizzazione di un ordine specifico.

Può invocare le seguenti funzioni:
 - *getOrder(orderIdDTO: SyncOrderIdDTO)* : SyncInternalOrderDTO | SyncSellOrderDTO \
   Restituisce l’ordine interno o di vendita corrispondente.

==== GetAllOrderUseCase
 + Permette di richiedere la visualizzazione di tutti gli ordini.

Può invocare le seguenti funzioni:
 - *getAllOrders()* : SyncOrdersDTO \
   Restituisce tutti gli ordini sincronizzati.
 - *getAllFilteredOrders(state: SyncOrderStateDTO)* : SyncOrdersDTO \
   Restituisce tutti gli ordini sincronizzati filtrati per stato. 
 - *getAllOrdersForCentralized()* : SyncOrdersDTO \
   Restituisce tutti gli ordini sincronizzati senza filtri, per il sistema centralizzato.
==== CloudOrdersController
 + Gestisce tutti gli eventi in ingresso relativi agli ordini sincronizzati.

Descrizione:
 - Implementa i metodi di SyncReservationEventListener, SyncSellOrderEventListener, SyncInternalOrderEventListener, SyncUpdateOrderStateUseCase, SyncOrderStatusEventListener, GetOrderStateUseCase, GetOrderUseCase, GetAllOrderUseCase.
 - Riceve i DTO dall’esterno, li converte in oggetti di dominio e li passa al CloudOrderService.

==== CloudOrdersRepository
 + Gestisce la persistenza e l’accesso ai dati degli ordini sincronizzati.

Può invocare le seguenti funzioni:
 - *getById(id: SyncOrderId)* : SyncInternalOrder | SyncSellOrder \
   Restituisce l’ordine corrispondente all’id.
 - *getState(id: SyncOrderId)* : SyncOrderState \
   Restituisce lo stato dell’ordine.
 - *getAllOrders()* : SyncOrders \
   Restituisce tutti gli ordini.
 - *getAllFilteredOrders()* : SyncOrders \
   Restituisce tutti gli ordini filtrati.
 - *syncAddSellOrder(order: SyncSellOrder)* : void \
   Sincronizza l’aggiunta di un ordine di vendita.
 - *syncAddInternalOrder(order: SyncInternalOrder)* : void \
   Sincronizza l’aggiunta di un ordine interno.
 - *syncRemoveById(id: SyncOrderId)* : bool \
   Sincronizza la rimozione di un ordine, fornendo true/false alla rimozione.
 - *syncUpdateOrderState(id: SyncOrderId, state: SyncOrderState)* : SyncInternalOrder | SyncSellOrder \
   Sincronizza l’aggiornamento dello stato di un ordine.
 - *syncUpdateReservedStock(orderId: SyncOrderId, items: SyncOrderItem[])* : SyncInternalOrder | SyncSellOrder \
   Sincronizza l’aggiornamento delle quantità riservate.
 - *syncUnreserveStock(SyncOrderId)* : void\
   Sincronizza la cancellazione delle quantità riservate.

==== CloudOrdersRepositoryImpl
/*
=================================================
        MICROSERVIZIO INVENTARIO AGGREGATO
=================================================
*/
#pagebreak()
#label("Inventory Aggregate")
=== Microservizio Inventario Aggregato
#figure(
  image("assets/InventoryAgg.svg", width: 120%),
  caption: [Schema UML - Microservizio Ordine Aggregato]
)
==== Descrizione del microservizio
Il Microservizio invia eventi al Microservizio Inventario Aggregato, che ha il compito di:
- Ricevere e consolidare dati sui prodotti provenienti da più magazzini.
- Offrire una vista centralizzata dello stato dell'inventario.
- Garantire la quantità tra magazzini differenti al sistema centralizzato.
===== Funzionalità principali
- *Aggregazione Inventario *: riceve e consolida dati su prodotti da più magazzini.
- *Gestione dati *: Manda i dati richiesti dal sistema centralizzato per supportarlo al compimento del processo.
==== SyncProduct
  + Rappresenta un prodotto in un magazzino sincronizzato.

Descrizione degli attributi della struttura:
 - *id*: string \
    Codice identificativo del prodotto.
 - *WarehouseId*: number \
    Codice identificativo del warehouse.
 - *name*: string \
    Nome del prodotto.
 - *uniPrice*: number \
    Prezzo unitario del prodotto.
 - *quantity*: number \
    Quantità disponibile del prodotto.
 - *minThres*: number \
    Soglia minima di riordino.
 - *maxThres*: number \
    Soglia massima di riordino.

Può invocare le seguenti funzioni:
 - *getProductId()*: string \
    Ottiene l’id del prodotto.
 - *getWarehouseId()*: number \
    Ottiene l’id del magazzino.
 - *getName()*: string \
    Ottiene il nome del prodotto.
 - *getUnitPrice()*: number \
    Ottiene il prezzo unitario del prodotto.
 - *getQuantity()*: number \
    Ottiene la quantità disponibile del prodotto.
 - *getQuantityReserved()*: number \
    Ottiene la quantità riservata del prodotto. 
 - *getMinThres()*: number \
    Ottiene la soglia minima di un prodotto.
 - *getMaxThres()*: number \
    Ottiene la soglia massima di un prodotto.
 - *setName(string)*: void \
    setta il nome del prodotto.
 - *setUnitPrice(number)*: void \
    setta il prezzo unitario del prodotto.
 - *setQuantity(number)*: void \
    setta la quantità disponibile del prodotto.
 - *setQuantityReserved(number)*: void \
    setta la quantità riservata del prodotto.
 - *setMinThres(number)*: void \
    setta la soglia minima di un prodotto. 
 - *setMaxThres(number)*: void \
    setta la soglia massima di un prodotto.

==== SyncProductId
 + Rappresenta l’identificativo del prodotto sincronizzato.

Descrizione degli attributi della struttura:
 - *id*: string \
    Codice identificativo del prodotto.

Può invocare le seguenti funzioni:
  - *getId(): string* \
      Restituisce l’id del prodotto.
==== SyncWarehouseId
 + Rappresenta l’identificativo del magazzino sincronizzato.

Descrizione degli attributi della struttura:
 - *warehouseId*: number \
   Codice identificativo del magazzino.

Può invocare le seguenti funzioni:
 - *getId(): number* \
   Restituisce l’id del magazzino.

==== SyncInventory
 + Rappresenta l’inventario di un magazzino sincronizzato.

Descrizione degli attributi della struttura:
 - *productList : SyncProduct[]* \
   Array dei prodotti presenti nel magazzino. 
Può invocare le seguenti funzioni:
 - *getInventory() : SyncProduct[]* \
   Restituisce l’array dei prodotti presenti nel magazzino.

==== CloudInventoryService
 + Logica di business del microservizio Aggregate Inventory.

Può invocare le seguenti funzioni:
  - *syncAddStock(SyncProduct)*: void \
    Effettua la sincronizzazione dell'aggiunta di un prodotto facendo la chiamata del metodo sulla repository.
  - *syncRemoveStock(SyncProductId, SyncWarehouseId)*: void \
    Effettua la sincronizzazione della rimozione di un prodotto facendo la chiamata del metodo sulla repository.
  - *syncEditStock(SyncProduct)*: void
    Effettua la sincronizzazione della modifica di un prodotto facendo la chiamata del metodo sulla repository.
  - *getAllProducts()*: SyncInventoryDTO
    Effettua la sincronizzazione dell'ottenimento di tutti i prodotti aggregati facendo la chiamata del metodo sulla repository.
  - *getAll()*: SyncInventoryDTO
    Effettua la sincronizzazione dell'ottenimento di tutti i prodotti in generale per ognuno il magazzino di appartenenza facendo la chiamata del metodo sulla repository.
  - *getProductAggregate(id: SyncProductID)*: SyncProduct
    Effettua la sincronizzazione dell'ottenimento di un prodotto aggregato tramite id facendo la chiamata del metodo sulla repository.
  - *getProduct(id: SyncProductID, warehouseid: SyncWarehouseId)* : SyncProduct
    Effettua la sincronizzazione dell'ottenimento di un prodotto tramite id e magazzino facendo la chiamata del metodo sulla repository.
==== SyncProductDTO
  + Rappresenta un dto in un magazzino sincronizzato.

Descrizione degli attributi della struttura:
 - *id*: string \
    Codice identificativo del prodotto in DTO.
 - *WarehouseId*: number \
    Codice identificativo del warehouse in DTO.
 - *name*: string \
    Nome del prodotto in DTO.
 - *uniPrice*: number \
    Prezzo unitario del prodotto in DTO.
 - *quantity*: number \
    Quantità disponibile del prodotto in DTO.
 - *minThres*: number \
    Soglia minima di riordino in DTO.
 - *maxThres*: number \
    Soglia massima di riordino in DTO.
==== SyncProductIdDTO
 + Rappresenta l’identificativo del prodotto sincronizzato in DTO.

Descrizione degli attributi della struttura:
 - *id*: string \
    Codice identificativo del prodotto.

==== SyncWarehouseIdDTO
 + Rappresenta l’identificativo del magazzino sincronizzato in DTO.

Descrizione degli attributi della struttura:
 - *warehouseId*: number \
   Codice identificativo del magazzino in DTO.

==== SyncInventoryDTO
 + Rappresenta l’inventario di un magazzino sincronizzato in DTO.

Descrizione degli attributi della struttura:
 - *productList : SyncProduct[]* \
   Array dei prodotti presenti nel magazzino in DTO. 
==== DataMapper
 + Gestisce la conversione tra DTO e oggetti di dominio per gli ordini sincronizzati.

== Funzioni di sincronizzazione Inventory/Product

Può invocare le seguenti funzioni:
- *syncProductToDomain(dto: SyncProductDTO)* : SyncProduct \
  Converte un DTO di prodotto in oggetto di dominio.
- *syncProductIdToDomain(dto: SyncProductIdDTO)* : SyncProductId \
  Converte un DTO di identificativo prodotto in oggetto di dominio.
- *syncWarehouseIdToDomain(dto: SyncWarehouseIdDTO)* : SyncWarehouseId \
  Converte un DTO di identificativo magazzino in oggetto di dominio.
- *syncInventoryToDomain(dto: SyncInventoryDTO)* : SyncInventory \
  Converte un DTO di inventario in oggetto di dominio.
- *syncProductToDTO(product: SyncProduct)* : SyncProductDTO \
  Converte un oggetto di dominio Product in DTO.
- *syncProductIdToDTO(productId: SyncProductId)* : SyncProductIdDTO \
  Converte un oggetto di dominio ProductId in DTO.
- *syncWarehouseIdToDTO(warehouseId: SyncWarehouseId)* : SyncWarehouseIdDTO \
  Converte un oggetto di dominio WarehouseId in DTO.
- *syncInventoryToDTO(inventory: SyncInventory)* : SyncInventoryDTO \
  Converte un oggetto di dominio Inventory in DTO.

==== CloudStockController
 + Gestisce tutti gli eventi in ingresso relativi ai prodotti sincronizzati.

Può invocare le seguenti funzioni:
- *syncAddedStock(SyncProductDTO)*: void\
  Metodo che andrà a chiamare la sincronizza l'aggiunta di un prodotto effettuando un altra chiamata metodo del service.
- *syncRemovedStock(SyncProductIdDTO, SyncWarehouseIdDTO)*: void\
  Metodo che andrà a chiamare la sincronizza la rimozione di un prodotto effettuando un altra chiamata metodo del service.
- *syncEditedStock(SyncProductDTO)*: void\
  Metodo che andrà a chiamare lasincronizza la modifica di un prodotto effettuando un altra chiamata metodo del service.
- *getAllProducts()*: SyncInventoryDTO\
  Metodo che andrà ad ottenere una lista di tutti i prodotti aggregati effettuando un altra chiamata metodo del service.
- *getAll()*: SyncInventoryDTO\
  Metodo che andrà ad ottenere una lista di tutti i prodotti in generale per ognuno il magazzino di appartenenza effettuando un altra chiamata metodo del service.
- *getProductAggregate(id: SyncProductIDDTO)*: SyncProductDTO\
  Metodo che andrà a ricavare un prodotto aggregato tramite id effettuando un altra chiamata metodo del service.
- *getProduct(id: SyncProductIDDTO, warehouseid: SyncWarehouseIdDTO)* : SyncProductDTO\
  Metodo che andrà a ricavare un prodotto tramite id e magazzino effettuando un altra chiamata metodo del service.
==== SyncAddedStockEvent
 + Gestisce gli eventi in ingresso relativi all'aggiunta di un prodotto per la sincronizzazione effettuando un altra chiamata metodo del service.

Può invocare le seguenti funzioni:
- *syncAddedStock(SyncProductDTO)*: void\
  sincronizza l'aggiunta di un prodotto.

==== SyncRemovedStockEvent
 + Gestisce gli eventi in ingresso relativi alla rimozione di un prodotto per la sincronizzazione.

Può invocare le seguenti funzioni:
  - *syncRemovedStock(SyncProductIdDTO, SyncWarehouseIdDTO)*: void\
    sincronizza la rimozione di un prodotto.

==== SyncEditedStockEvent
  + Gestisce gli eventi in ingresso relativi alla modifica di un prodotto per la sincronizzazione.

Può invocare le seguenti funzioni:
  - *syncEditedStock(SyncProductDTO)*: void\
    sincronizza la modifica di un prodotto.

==== getAllProductsUsecase
 + Permette di richiedere la visualizzazione di tutti i prodotti aggregati.

Può invocare le seguenti funzioni:
- *getAllProducts()*: SyncInventoryDTO\
   ottiene una lista di tutti i prodotti aggregati.

==== GetAllUseCase
  + Permette di richiedere la visualizzazione di tutti i prodotti in generale per ognuno il magazzino di appartenenza.

Può invocare le seguenti funzioni:
 - *getOrderState(orderIdDTO: SyncOrderIdDTO)* : SyncOrderStateDTO \
   Restituisce lo stato dell’ordine specificato.

==== GetOrderUseCase
 + Permette di richiedere la visualizzazione di un ordine specifico.

- *getAll()*: SyncInventoryDTO\
    ottiene una lista di tutti i prodotti in generale per ognuno il magazzino di appartenenza.

==== GetStockUseCase
  + Permette di richiedere la visualizzazione di un prodotto specifico.

Può invocare le seguenti funzioni:
  - *getProductAggregate(id: SyncProductIDDTO)*: SyncProductDTO\
      ottiene un prodotto aggregato tramite id.
  - *getProduct(id: SyncProductIDDTO, warehouseid: SyncWarehouseIdDTO)* : SyncProductDTO\
      ottiene un prodotto tramite id e magazzino.

==== CloudInventoryRepository
 + Gestisce la persistenza e l’accesso ai dati degli ordini sincronizzati.

Può invocare le seguenti funzioni:
- *getAllProducts()* : SyncInventory \
   Ottieni la lista di tutti i prodotti aggregati.
- *getAll()* : SyncInventory \ 
   Ottieni la lista di tutti i prodotti in generale per ognuno il magazzino di appartenenza.
- *getProduct()* : SyncProduct \
   Ottiene un prodotto tramite id e magazzino.
- *getProductAggregate()* : SyncProduct \
  Ottiene un prodotto aggregato tramite id.
- *syncAddStock(SyncProduct)* : void \
   aggiunge un prodotto.
- *syncRemoveStock(SyncProductId, SyncWarehouseId)* : void \
    rimuove un prodotto.
- *syncEditStock(SyncProduct)* : void \
    modifica un prodotto.


==== InventoryRepositoryImpl
/*
=================================================
    MICROSERVIZIO SISTEMA CENTRALIZZATO
=================================================
*/
#pagebreak()
#label("Central System")
=== Sistema Centrale
#figure(
  image("assets/CentralSystem.svg", width: 120%),
  caption: [Schema UML - Microservizio Sistema Centralizzato]
)
==== Descrizione del microservizio
Il *Sistema Centralizzato* rappresenta il componente core dell’architettura, responsabile del coordinamento delle operazioni e 
della gestione integrata delle informazioni provenienti dai diversi microservizi.  
Il suo compito principale è orchestrare i flussi legati agli ordini, monitorare lo stato dei magazzini e gestire i casi di criticità, come giacenze sotto soglia o indisponibilità operative.  

===== Funzionalità principali
- *Gestione soglie minime*: monitoraggio degli eventi emessi dagli inventari in caso di criticità sulle quantità di uno o più prodotti e applicazione di azioni correttive.
- *Gestione ordini critici*: elaborazione e instradamento delle richieste d’ordine con prodotti insufficienti, valutando magazzini alternativi (priorità a quelli più vicini) e integrando dati di inventario e routing.
- *Aggregazione dati (Inventari e Ordini)*: consolidamento delle informazioni di giacenza e ordini dai diversi magazzini, a supporto del bilanciamento delle soglie e della gestione delle criticità.
- *Coordinamento stati operativi*: utilizzo delle informazioni del Cloud State per garantire disponibilità e operatività dei magazzini.
- *Routing e strategia di instradamento*: valutazione delle distanze tra magazzini tramite il microservizio Routing e definizione della sequenza ottimale per bilanciamento delle soglie per inventari o criticità degli ordini.
- *Pubblicazione eventi*: emissione di notifiche verso i microservizi interessati quando vengono rilevate criticità o applicate strategie di bilanciamento.
- *Interoperabilità*: interazione con microservizi esterni (Cloud State, Routing, Inventario Aggregato, Ordine Aggregato) per integrare dati e decisioni.

#pagebreak()
==== CentralSystemController
 + Gestisce tutti gli eventi in ingresso dal cloud e dai magazzini.

Può invocare le seguenti funzioni:
 - *CloudOrder(dto: OrderQuantityDTO)* : void   \
   Riceve un evento di ordine aggregato (OrdersDTO) dal microservizio Orders.

 - *CloudInventory(dto: InventoryDTO)* : void   \
   Riceve un evento di inventario aggregato (InventoryDTO) dal microservizio Inventory.

 - *handleInsufficientQuantity(dto: OrderQuantityDTO)* : void   \
   Gestisce gli ordini per cui il magazzino destinato non ha quantità sufficiente.

 - *handleCriticalQuantity(dto: ProductQuantityDTO, warehouseIdDTO: WarehouseIdDTO)* : void  \ 
   Gestisce le situazioni critiche di scorta minima dei prodotti in magazzino.

 - *getWarehouseDistanceArr(dto: WarehouseStateDTO)* : void   \
   Riceve le distanze tra il magazzino gestito e tutti gli altri magazzini.

 - *getWarehouseState(dto: WarehouseStateDTO)* : void   \
   Riceve lo stato di un magazzino (online/offline).

==== CentralSystemService \
 + Contiene la logica di business del sistema centralizzato.

Descrizione degli attributi della struttura:
 - *order* : Order[] \
   Lista degli ordini ricevuti.
 - *inventory* : Inventory[]  \
   Lista degli inventari gestiti.
 - *warehouseId* : WarehouseId \
   Identificativo del magazzino.
 - *warehouseState* : WarehouseState[] \
   Lista degli stati dei magazzini.
 - *orderQuantity* : OrderQuantity   \
   Contiene le quantità degli ordini.
 - *distance* : WarehouseState[]   \
   Contiene informazioni sulle distanze tra i magazzini.
- *idInternalOrderCounter* : number
   Contiene informazioni sull'ultimo id arrivato per ordini interni
- *idSellOrderCounter* : number
   Contiene informazioni sull'ultimo id arrivato per ordini di vendita
Metodi:
 - *RequestAllNeededData()* : void   \
   Richiede dati a Inventory Aggregato, Orders Aggregato e Routing.

 - *checkRestocking(order, inventory, distance, productQuantity)* : void  \ 
    Il metodo gestisce la problematica del criticalQuantity. Esso avendo distance possiamo determinare la distanza dei magazzini partendo da quello più vicino, verificando se ciascun magazzino dispone di una quantità sufficiente del prodotto per soddisfare la richiesta. Appena un magazzino dà la conferma di disponibilità, verrà selezionato quel magazzino.
    Contestualmente, il metodo esegue un controllo sugli ordini presenti per il magazzino. Se esiste un ordine relativo allo stesso prodotto, viene sottratta la quantità impegnata dagli ordini alla disponibilità effettiva del prodotto, verificando quindi se la quantità residua è ancora sufficiente a soddisfare la richiesta.
 - *CheckInsufficientQuantity(order, inventory, distance, orderQuantity)* : void  \ 
    Il metodo gestisce la problematica del InsufficientQuantity. Esso avendo distance possiamo determinare la distanza dei magazzini partendo da quello più vicino, verificando se ciascun magazzino dispone di una quantità sufficiente del prodotto per soddisfare la richiesta. Appena un magazzino dà la conferma di disponibilità, verrà selezionato quel magazzino.  Contestualmente, il metodo esegue un controllo sugli ordini presenti per il magazzino. Se esiste un ordine relativo allo stesso prodotto, viene sottratta la quantità impegnata dagli ordini alla disponibilità effettiva del prodotto, verificando quindi se la quantità residua è ancora sufficiente a soddisfare la richiesta.
 - *sendNotification(message: string)* : void   \
   Invia notifiche a entità interessate.

==== CentralSystemEventAdapter
 + Gestisce la pubblicazione degli eventi verso i microservizi esterni.

Può invocare le seguenti funzioni:
 - *createInternalOrder(order: InternalOrder)* : void  \ 
   Pubblica un ordine interno verso il microservizio corrispondente.

 - *CloudInventoryRequest(inventory: Inventory)* : void  \ 
   Richiede report inventario dal microservizio aggregato.

 - *CloudOrderRequest(order: Order)* : void   \
   Richiede report ordini dal microservizio aggregato.

 - *RequestWarehouseState(id: WarehouseId)* : void  \ 
   Richiede lo stato di un magazzino.

 - *SendNotification(message: string)* : void   \
   Pubblica notifiche a più enti interessati.

 - *RequestDistanceWarehouse(warehouseId: WarehouseId)* : void  \ 
   Richiede al microservizio Routing la distanza tra il magazzino passato e tutti gli altri.

==== DataMapper
 + Esegue la traduzione tra entità di dominio e DTO,
 + Mantiene l’isolamento tra livello applicativo e dominio,
 + Garantisce la consistenza tra modelli interni e rappresentazioni esterne.

Descrizione dei metodi principali:
- *internalOrderToDomain(order: InternalOrderDTO)* : InternalOrder \
  Converte un DTO di ordine interno in entità InternalOrder.
- *sellOrderToDomain(order: SellOrderDTO)* : SellOrder \
  Converte un DTO di ordine di vendita in entità SellOrder.
- *orderItemToDomain(item: OrderItemDTO)* : OrderItem \
  Converte un DTO di item d’ordine in OrderItem.
- *orderIdToDomain(orderId: OrderIdDTO)* : OrderId \
  Converte un identificativo d’ordine DTO in OrderId.
- *orderStateToDomain(state: OrderStateDTO)* : OrderState \
  Converte un DTO di stato in enum OrderState.
- *orderItemDetailToDomain(item: OrderItemDetailDTO)* : OrderItemDetail \
  Converte un DTO con dettaglio item in entità di dominio.
- *productQuantityToDomain(pq: ProductQuantityDTO)* : ProductQuantity \
  Converte un DTO di quantità prodotto in entità ProductQuantity.
- *warehouseIdToDomain(warehouseId: WarehouseIdDTO)* : WarehouseId \
  Converte un DTO di magazzino in WarehouseId.
- *productToDomain(product: ProductDTO)* : Product \
  Converte un DTO prodotto in Product.
- *productIdToDomain(productId: ProductIdDTO)* : ProductId \
  Converte un DTO identificativo in ProductId.
- *inventoryToDomain(inventory: InventoryDTO)* : Inventory \
  Converte un inventario DTO in entità Inventory.

- *internalOrderToDTO(order: InternalOrder)* : InternalOrderDTO \
  Serializza un InternalOrder in DTO.
- *sellOrderToDTO(order: SellOrder)* : SellOrderDTO \
  Serializza un SellOrder in DTO.
- *orderItemToDTO(item: OrderItem)* : OrderItemDTO \
  Serializza un OrderItem in DTO.
- *orderIdToDTO(orderId: OrderId)* : OrderIdDTO \
  Serializza un OrderId in DTO.
- *orderStateToDTO(state: OrderState)* : OrderStateDTO \
  Serializza uno stato ordine in DTO.
- *orderItemDetailToDTO(item: OrderItemDetail)* : OrderItemDetailDTO \
  Serializza un dettaglio item ordine in DTO.
- *orderQuantityToDTO(orderId: OrderId, items: OrderItem[])* : OrderQuantityDTO\
  Costruisce un DTO di quantità ordini da entità di dominio.
- *ordersToDTO(orders: Orders)* : OrdersDTO \
  Serializza un aggregato Orders in DTO.
- *productQuantityToDTO(pq: ProductQuantity)* : ProductQuantityDTO \
  Serializza un ProductQuantity in DTO.
- *warehouseIdToDTO(warehouseId: WarehouseId)* : WarehouseIdDTO \
  Serializza un WarehouseId in DTO.
- *productToDTO(product: Product)* : ProductDTO \
  Serializza un Product in DTO.
- *productIdToDTO(productId: ProductId)* : ProductIdDTO \
  Serializza un ProductId in DTO.
- *inventoryToDTO(inventory: Inventory)* : InventoryDTO \
  Serializza un inventario in DTO.

==== OrderQuantityDTO
 + Rappresenta la quantità di articoli relativi a un ordine specifico,
 + Utilizzato per trasmettere dati tra livello applicativo e dominio.

Descrizione degli attributi:
- *id*: OrderIdDTO \
  Identificativo univoco dell’ordine.
- *items*: OrderItemDTO[] \
  Collezione di item associati all’ordine.

==== OrdersDTO
 + Contiene la rappresentazione serializzata di tutti gli ordini,
 + Distingue tra ordini di vendita e ordini interni.

Descrizione degli attributi della struttura:
- *sell*: SellOrderDTO[] \
  Lista di ordini di vendita.
- *internal*: InternalOrderDTO[] \
  Lista di ordini interni.

==== OrderItemDTO
 + Identifica un singolo articolo presente in un ordine,
 + Trasporta informazioni essenziali per quantità e riferimento.

Descrizione degli attributi della struttura:
- *itemId*: string \
  Identificativo univoco dell’oggetto.
- *quantity*: number \
  Quantità dell’oggetto ordinata.

==== OrderIdDTO
 + Incapsula l’identificativo univoco di un ordine nella versione DTO.

Descrizione degli attributi della struttura:
- *id*: string \
  Identificativo univoco dell’ordine.

==== OrderStateDTO `<<enum>>`
 + Rappresenta lo stato di un ordine nella versione DTO.

Descrizione degli attributi della struttura:
- *orderState*: string \
  Indica lo stato attuale (pending, processing, ecc.).

==== OrderItemDetailDTO
 + Fornisce i dettagli di un item d’ordine con quantità e prezzo unitario.

Descrizione degli attributi della struttura:
- *orderItem*: OrderItemDTO \
  Oggetto ordine di riferimento.
- *productReserved*: number \
  Quantità riservata per il prodotto.
- *unitPrice*: number \
  Prezzo unitario del prodotto.

==== SellOrderDTO
 + DTO per rappresentare un ordine di vendita.

Descrizione degli attributi della struttura:
- *orderId*: OrderIdDTO \
  Identificativo dell’ordine.
- *orderItem*: OrderItemDTO[] \
  Prodotti inclusi nell’ordine.
- *orderState*: OrderStateDTO \
  Stato dell’ordine.
- *destinationAddress*: string \
  Indirizzo di destinazione.
- *creationDate*: DateTime \
  Data di creazione.
- *warehouseDeparture*: number \
  Magazzino di partenza.

==== InternalOrderDTO
 + DTO per rappresentare un ordine interno.

Descrizione degli attributi della struttura:
- *orderId*: OrderIdDTO \
  Identificativo dell’ordine.
- *orderItem*: OrderItemDTO[] \
  Prodotti inclusi nell’ordine.
- *orderState*: OrderStateDTO \
  Stato dell’ordine.
- *warehouseDeparture*: number \
  Magazzino di partenza.
- *warehouseDestination*: number \
  Magazzino di destinazione.
- *sellOrderReference*: OrderIdDTO \
  Riferimento a ordine di vendita.

==== WarehouseIdDTO
 + Identificativo del magazzino nella versione DTO.

Descrizione degli attributi della struttura:
- *warehouseId*: number \
  Id numerico del magazzino.

==== ProductDTO
 + Rappresentazione serializzata di un prodotto,
 + Trasporta le informazioni di base per comunicazione tra servizi.

Descrizione degli attributi della struttura:
- *id*: string \
  Codice EAN del prodotto.
- *name*: string \
  Nome del prodotto.
- *price*: number \
  Prezzo unitario.
- *maxThres*: number \
  Quantità massima consentita.
- *minThres*: number \
  Quantità minima consentita.

==== ProductQuantityDTO
 + Associa un prodotto alla sua quantità in forma DTO.

Descrizione degli attributi della struttura:
- *id*: ProductIdDTO \
  Identificativo del prodotto.
- *quantity*: number \
  Quantità associata.

==== ProductIdDTO
 + Incapsula l’identificativo univoco di un prodotto (EAN) in forma DTO.

Descrizione degli attributi della struttura:
- *id*: string \
  Identificativo univoco del prodotto.

==== InventoryDTO
 + Contiene la collezione di prodotti di un magazzino in forma DTO.

Descrizione degli attributi della struttura:
- *productList*: ProductDTO[] \
  Lista di prodotti con i relativi attributi.


==== WarehouseStateDTO
 + Rappresenta lo stato di un magazzino (online/offline).

Descrizione degli attributi della struttura:
- *warehouseId*: WarehouseDTO \
  Identificativo del magazzino.
- *state*: string \
  Stato operativo del magazzino.

==== ProductQuantity
 + Entità che lega un prodotto ad una quantità,
 + Utilizzata negli ordini e nella gestione scorte.

Descrizione degli attributi della struttura:
- *id*: ProductId \
  Identificativo prodotto.
- *quantity*: number \
  Quantità associata.

Può invocare le seguenti funzioni:
- *getId()*: ProductId \
  Restituisce l’identificativo del prodotto.
- *getQuantity()*: number \
  Restituisce la quantità disponibile/associata.

==== Product
 + Entità di dominio che incapsula i dati e comportamenti di un prodotto,
 + Gestisce aspetti quantitativi e soglie di sicurezza.

Descrizione degli attributi della struttura:
- *id*: ProductId \
  Identificativo univoco del prodotto (EAN).
- *name*: string \
  Nome del prodotto.
- *unitPrice*: number \
  Prezzo unitario.
- *quantity*: number \
  Quantità attualmente disponibile.
- *maxThres*: number \
  Soglia massima di disponibilità.
- *minThres*: number \
  Soglia minima di disponibilità.
- *quantityReserved*: number \
  Quantità riservata.

Può invocare le seguenti funzioni:
- *addDeltaQuantity(quantity: number)*: void \
  Aggiorna la quantità disponibile incrementandola o decrementandola.
- *getId()*: ProductId \
  Restituisce l’identificativo del prodotto.
- *getName()*: string \
  Restituisce il nome del prodotto.
- *getUnitPrice()*: number \
  Restituisce il prezzo unitario.
- *getQuantity()*: number \
  Restituisce la quantità disponibile.
- *getMinThres()*: number \
  Restituisce la soglia minima di scorta.
- *getMaxThres()*: number \
  Restituisce la soglia massima di scorta.
- *getQuantityReserved()*: number \
  Restituisce la quantità riservata.
- *setName(name: string)*: void \
  Aggiorna il nome del prodotto.
- *setUnitPrice(unitPrice: number)*: void \
  Aggiorna il prezzo unitario.
- *setQuantity(quantity: number)*: void \
  Imposta la quantità disponibile.
- *setMinThres(minThres: number)*: void \
  Imposta la soglia minima.
- *setMaxThres(maxThres: number)*: void \
  Imposta la soglia massima.
- *setQuantityReserved(quantityReserved: number)*: void \
  Imposta la quantità riservata.

==== ProductId
 + Value Object che incapsula l’identificativo univoco di un prodotto,
 + Garantisce consistenza logica e comparabilità.

Descrizione degli attributi della struttura:
- *id*: string \
  Identificativo univoco del prodotto.

Può invocare le seguenti funzioni:
- *getId()*: string \
  Restituisce il valore dell’identificativo.

==== Orders
 + Aggregato che rappresenta l’insieme degli ordini del sistema,
 + Comprende ordini interni e di vendita.

Descrizione degli attributi della struttura:
- *sellOrders*: SellOrder[] \
  Lista ordini di vendita.
- *internalOrders*: InternalOrder[] \
  Lista ordini interni.

Può invocare le seguenti funzioni:
- *getSellOrders()*: SellOrder[] \
  Restituisce la lista ordini di vendita.
- *getInternalOrders()*: InternalOrder[] \
  Restituisce la lista ordini interni.
- *setSellOrder(order: SellOrder)*: void \
  Imposta un ordine di vendita.
- *setInternalOrder(order: InternalOrder)*: void \
  Imposta un ordine interno.

==== Inventory
 + Collezione di prodotti gestiti da un magazzino,
 + Permette di recuperare o aggiungere articoli all’inventario.

Descrizione degli attributi della struttura:
- *productList*: Product[] \
  Lista dei prodotti gestiti.

Può invocare le seguenti funzioni:
- *getInventory(productId: ProductId): Product* \
  Restituisce il prodotto corrispondente all’ID.
- *addProductItem(product: Product)*: void \
  Aggiunge un prodotto all’inventario.

==== OrderId
 + Oggetto che incapsula l’identificativo univoco di un ordine,
 + Assicura consistenza e comparabilità.

Descrizione degli attributi della struttura:
- *id: string* \
  Identificativo univoco dell’ordine.

Può invocare le seguenti funzioni:
- *getId()*: string \
  Restituisce l’identificativo dell’ordine.
- *getOrderType()*: char \
  Restituisce il tipo di ordine (vendita o interno).

==== OrderState `<<enum>>`
 + Enum che rappresenta lo stato di avanzamento di un ordine,
 + Permette di tracciare l’intero ciclo di vita.

Valori possibili:
- *PENDING*: Ordine in attesa.
- *PROCESSING*: Ordine in elaborazione.
- *SHIPPING*: Ordine in spedizione.
- *CANCELLED*: Ordine annullato.
- *COMPLETED*: Ordine completato.

==== ItemId
  + Rappresenta il Value Object che incapsula l’identificativo univoco di un item (riga d’ordine o riferimento a risorsa). Garantisce confronti di uguaglianza affidabili e coerenza nella serializzazione/deserializzazione.
  Descrizione degli attributi della struttura:
  - *id: string* \
    Identificativo univoco dell’item.
Può invocare le seguenti funzioni:
  - *getId(): string* \
    Restituisce l’identificativo univoco dell’item.

  ==== OrderItem
  + Rappresenta un singolo prodotto presente in un ordine e la quantità associata.
  Descrizione degli attributi della struttura:
  - *itemId*: ItemId[] \
    Lista dei prodotti contenuti nell’ordine.
  - *quantity*: number \
    Quantità ordinata del prodotto.
Può invocare le seguenti funzioni:
  - *getItemId()*: ItemId \
    Restituisce la lista dei prodotti presenti nell’ordine.
  - *getQuantity()*: number \
    Restituisce la quantità del prodotto.
  - *setQuantity(quantity: number)*: void \
    Imposta la quantità del prodotto.

  ==== OrderItemDetail
  + Rappresenta il dettaglio di un item di un ordine, includendo il prodotto, la quantità riservata e il prezzo unitario.
  Descrizione degli attributi della struttura:
  - *item*: OrderItem\
    L’item d’ordine associato.
  - *quantityReserved*: number \
    La quantità riservata di quel prodotto per l’ordine.
  - *unitPrice*: number \
    Prezzo unitario del prodotto.
Può invocare le seguenti funzioni:
  - *getItem()*: OrderItem \
    Restituisce l’item d’ordine.
  - *getQuantityReserved()*: number \
    Restituisce la quantità riservata per l’item.
  - *getUnitPrice()*: number \
    Restituisce il prezzo unitario del prodotto.
  - *setQuantityReserved(quantityReserved: number)*: void \
    Imposta la quantità riservata dell’item.
  - *setUnitPrice(unitPrice: number)*: void \
    Imposta il prezzo unitario dell’item.

  ==== Order (abstract)
  + Rappresenta l’entità astratta comune a tutti i tipi di ordine, gestendo gli attributi fondamentali come ID, lista degli item, stato, data di creazione e magazzino di partenza.
  Descrizione degli attributi della struttura:
  - *orderId*: OrderId \
    Identificativo univoco dell’ordine.
  - *items*: OrderItemDetail[] \
    Lista dei dettagli dei prodotti contenuti nell’ordine.
  - *orderState*: OrderState \
    Stato corrente dell’ordine (Pending, Processing, Shipping, Cancelled, Completed).
  - *creationDate*: DateTime \
    Data e ora di creazione dell’ordine.
  - *warehouseDeparture*: number \
    ID del magazzino di partenza dell’ordine.
Può invocare le seguenti funzioni:
  - *getOrderId()*: OrderId \
    Restituisce l’identificativo dell’ordine.
  - *getItemsDetail()*: OrderItemDetail[]\
    Restituisce la lista dettagliata degli item dell’ordine.
  - *getOrderState()*: string \
    Restituisce lo stato corrente dell’ordine.
  - *getCreationDate()*: DateTime \
    Restituisce la data di creazione dell’ordine.
  - *getWarehouseDeparture()*: number \
    Restituisce il magazzino di partenza.
  - *setItemsDetail(items: OrderItemDetail[])*: void \
    Aggiorna la lista degli item dell’ordine.
  - *setOrderState(orderState: OrderState)*: void \
    Aggiorna lo stato dell’ordine.
  - *setCreationDate(creationDate: DateTime)*: void \
    Imposta la data di creazione dell’ordine.
  - *setWarehouseDeparture(warehouseDeparture: number)*: void \
    Imposta il magazzino di partenza dell’ordine.

  ==== SellOrder
  + Rappresenta un ordine di vendita effettuato da un cliente, con indirizzo di destinazione e dettagli dei prodotti ordinati.
  Descrizione degli attributi della struttura:
  - *destinationAddress*: string\
    Indirizzo di spedizione dell’ordine.
Può invocare le seguenti funzioni:
  - *getDestinationAddress()*: string \
    Restituisce l’indirizzo di destinazione.
  - *setDestinationAddress(address: string)*: void \
    Imposta l’indirizzo di destinazione dell’ordine.

  ==== InternalOrder
  + Rappresenta un ordine interno di trasferimento di prodotti tra magazzini.
  Descrizione degli attributi della struttura:
  - *warehouseDestination*: number \
    ID del magazzino di destinazione.
Può invocare le seguenti funzioni:
  - *getWarehouseDestination()*: number \
    Restituisce il magazzino di destinazione.
  - *setWarehouseDestination(warehouseDestination: number)*: void \
    Imposta il magazzino di destinazione.

  ==== WarehouseId
  + Rappresenta un magazzino fisico all’interno del sistema.
  Descrizione degli attributi della struttura:
  - *warehouseId*: number \
    Identificativo univoco del magazzino.
Può invocare le seguenti funzioni:
  - *getWarehouseId()*: number \
    Restituisce l’ID del magazzino.

  ==== WarehouseState
  + Rappresenta lo stato operativo di un magazzino, utile per determinare la disponibilità di stock.
  Descrizione degli attributi della struttura:
  - *state*: string \
    Stato operativo del magazzino (es. online/offline).
  - *warehouseId*: WarehouseId \
    Magazzino a cui si riferisce lo stato.
Può invocare le seguenti funzioni:
  - *getState()*: string \
    Restituisce lo stato del magazzino.
  - *getId()*: number \
    Restituisce l’ID del magazzino associato

/*
=================================================
    MICROSERVIZIO AUTENTICAZIONE
=================================================
*/
#pagebreak()
#label("Auth")
=== Microservizio Autenticazione
// Breve spiegazione + Immagine
#figure(
  image("assets/Auth.svg", width: 120%),
  caption: [Schema UML - Microservizio Autenticazione]
)
==== Descrizione del microservizio
Il microservizio di Autenticazione si occupa della gestione degli utenti del sistema e della loro autenticazione.
===== Funzionalità principali
- *Determinazione delle distanze*: calcolo della distanza tra i magazzini, sulla base delle informazioni disponibili.

==== WarehouseId
 + Rappresenta l'identificatore univoco del magazzino,
 + Incapsula il campo _warehouseId: number_,
 + Espone il metodo _getId()_,
 + È stato isolato per facilitare il confronto tra entità e mantenere l'identità coerente anche in fase di serializzazione/deserializzazione.

Descrizione degli attributi della struttura:
 - *warehouseId*: number \
   È l’identificativo numerico del magazzino.

Può invocare le seguenti funzioni:
- *getId()*: number \
  Metodo pubblico per ottenere l’id del magazzino.

==== `<<enum>>` role
+ Enumerazione che rappresenta il ruolo dei supervisori del sistema.
+ I ruoli possono essere:
  - *GLOBAL*: number \
    Rappresenta il ruolo di Supervisore Globale.
  - *LOCAL*: number \
    Rappresenta il ruolo di Supervisore Locale.

==== Authentication
+ Rappresenta le credenziali di un utente del sistema.

Descrizione degli attributi della struttura:
- *email*: string \
  Rappresenta l'email dell'utente.
- *password*: string \
  Rappresenta la password dell'utente.

Può invocare le seguenti funzioni:
- *getEmail()*: string \
  Restituisce l'email dell'utente.
- *getPassword()*: string \
  Restituisce la password dell'utente.

==== {abstract} User
+ Rappresenta i dati comuni degli utenti del sistema
+ Contiene informazioni personali dell'utente, le sue credenziali e il suo ruolo
+ Uno _User_ concreto può essere solo o un _Global Supervisor_ o un _Local Supervisor_

Descrizione degli attributi della struttura:
- *name*: string \
  Rappresenta il nome dell'utente.
- *surname*: string \
  Rappresenta il cognome dell'utente.
- *phone*: string \
  Rappresenta il numero di telefono dell'utente.
- *authentication*: Authentication \
  Rappresenta le credenziali dell'utente.
- *role*: Role \
  Rappresenta il ruolo dell'utente.

Può invocare le seguenti funzioni:
- *getName()*: string \
  Restituisce il nome dell'utente.
- *getSurname()*: string \
  Restituisce il cognome dell'utente.
- *getPhone()*: string \
  Restituisce il numero di telefono dell'utente.
- *getAuthentication()*: Authentication \
  Restituisce le credenziali dell'utente.
- *getRole()*: Role \
  Restituisce il ruolo dell'utente.

==== Global Supervisor
+ Derivazione di _User_.
+ Rappresenta un Supervisore Globale del sistema.
+ Permette di registrare nuovi Supervisori Locali nel sistema.

Può invocare le seguenti funzioni:
- *registerLocalSupervisor(name: string, surname: string, phone: string, authentication: Authentication, warehouses: WarehouseId[])*: LocalSupervisor \
  Registra un nuovo Supervisore Locale nel sistema.

==== Local Supervisor
+ Derivazione di _User_.
+ Rappresenta un Supervisore Locale del sistema.
+ Contiene la lista di magazzini assegnati a quel Supervisore Locale

Descrizione degli attributi della struttura:
- *warehouseAssigned[]*: WarehouseId \
  Rappresenta la lista di magazzini assegnati al Supervisore Locale.

Può invocare le seguenti funzioni:
- *getWarehouseAssigned()*: WarehouseId[]
  Restituisce la lista di magazzini assegnati al Supervisore Locale.

==== UserId
+ Rappresenta il codice identificativo di un utente del sistema.

Descrizione degli attributi della struttura:
- *id*: number \
  Rappresenta il codice identificativo di un utente.

Può invocare le seguenti funzioni:
- *getId*: number \
  Restituisce il codice identificativo di un utente.

==== `<<enum>>` TokenStatus
+ Enumerazione che rappresenta lo stato di un token utilizzato per l'autenticazione.
+ Gli stati del token possono essere:
  - *ACTIVE*: number \
    Rappresenta un token valido.
  - *REVOKED*: number \
    Rappresenta un token non valido.

==== Token
+ Rappresenta il token da restituire ai microservizi per la validazione dell'autenticazione dell'utente.

Descrizione degli attributi della struttura:
- *sub*: string \
  Rappresenta il subject del token, ossia l'utente identificato.
- *status*: TokenStatus \
  Rappresenta lo stato del token.

Può invocare le seguenti funzioni:
- *getSub()*: string \
  Restituisce il subject del token.
- *getStatus()*: TokenStatus \
  Restituisce lo stato del token.

==== AuthService
+ Rappresenta la logica di business del microservizio di autenticazione.
+ Si occupa di:
  - Registrazione, degli utenti.
  - Autenticazione degli utenti.

Può invocare le seguenti funzioni:
- *login(authentication: Authentication)*: string \
  Si occupa dell'autenticazione dell'utente date le sue credenziali.
- *logout(sub: string)*: string \
  Si occupa di gestire la fine della sessione dell'utente.
- *registerGlobalSupervisor(GlobalSupervisor)*: UserId \
  Registra un nuovo Supervisore Globale a sistema.
- *registerLocalSupervisor(LocalSupervisor)*: UserId \
  Registra un nuovo Supervisore Locale a sistema.
- *authenticate(jwt: string,cid: string)*: string \
  Si occupa di gestire l'autenticazione mediante il token JWT e il CID.
- *isGlobalSet()*: boolean \
  Verifica se esiste già un Supervisore Globale registrato a sistema.
- *generateJWT(user: User)*: string \
  Genera il token JWT per l'utente.

==== WarehouseIdDTO
+ Rappresenta il DTO relativo al codice identificativo del magazzino.
Descrizione degli attributi della struttura:
- *warehouseId*: number \
==== UserIdDTO
+ Rappresenta il DTO relativo al codice identificativo dell'utente.
Descrizione degli attributi della struttura:
- *id*: number \
==== JwtDTO
+ Rappresenta il DTO relativo al token JWT usato per l'autenticazione.
Descrizione degli attributi della struttura:
- *jwt*: string \
==== SubDTO
+ Rappresenta il DTO relativo al subject dell'autenticazione.
Descrizione degli attributi della struttura:
- *sub*: string \
==== CidDTO
+ Rappresenta il DTO relativo al CID utilizzato per l'autenticazione.
Descrizione degli attributi della struttura:
- *cid*: string \
==== AuthenticationDTO
+ Rappresenta il DTO relativo alle credenziali dell'utente.
Descrizione degli attributi della struttura:
- *email*: string \
- *password*: string \
==== GlobalSupervisorDTO
+ Rappresenta il DTO relativo al Supervisore Globale
Descrizione degli attributi della struttura:
- *name*: string \
- *surname*: string \
- *phone*: string \
- *authentication*: AuthenticationDTO \
==== LocalSupervisorDTO
+ Rappresenta il DTO relativo al Supervisore Locale
Descrizione degli attributi della struttura:
- *name*: string \
- *surname*: string \
- *phone*: string \
- *authentication*: AuthenticationDTO \
- *warehouseAssigned*: WarehouseIdDTO[] \

==== DataMapper
+ Rappresenta la classe in cui sono definiti i metodi per la conversione da oggetti di dominio a DTO e viceversa.
Può invocare le seguenti funzioni:
- *globalSupervisorToDomain(GlobalSupervisorDTO)*: GlobalSupervisor \
  Converte un DTO relativo ad un _GlobalSupervisor_ al rispettivo oggetto di dominio.
- *localSupevisorToDomain(LocalSupervisorDTO)*: LocalSupervisor \
  Converte un DTO relativo ad un _LocalSupervisor_ al rispettivo oggetto di dominio.
- *warehouseIdToDomain(WarehouseIdDTO)*: WharehouseId \
  Converte un DTO relativo ad un _WarehouseId_ al rispettivo oggetto di dominio.
- *authenticationToDomain(AuthenticationDTO)*: Authentication \
  Converte un DTO relativo ad un _Authentication_ al rispettivo oggetto di dominio.
- *globalSupervisorToDTO(GlobalSupervisor)*: GlobalSupervisorDTO \
  Converte un oggetto di dominio di tipo _GlobalSupervisor_ al rispettivo DTO.
- *localSupervisorToDTO(LocalSupervisor)*: LocalSupervisorDTO \
  Converte un oggetto di dominio di tipo _LocalSupervisor_ al rispettivo DTO.
- *warehouseIdToDTO(WarehouseId)*: WarehouseIdDTO \
  Converte un oggetto di dominio di tipo _WarehouseId_ al rispettivo DTO.
- *authenticationToDTO(Authentication)*: AuthenticationDTO \
  Converte un oggetto di dominio di tipo _Authentication_ al rispettivo DTO.
- *userIdToDTO(UserId)*: UserIdDTO \
  Converte un oggetto di dominio di tipo _UserId_ al rispettivo DTO.

==== JwtHeaderAuthenticationListener
+ Porta in entrata per l'autenticazione tramite token JWT e CID.

Può invocare le seguenti funzioni:
- *authenticate(JwtDTO,CidDTO)*: string \
  Delega al service l'autenticazione.

==== AuthenticationEventListener
+ Porta in entrata per l'ascolto di eventi di login e logout dell'utente.

Può invocare le seguenti funzioni:
- *login(AuthenticationDTO)*: string \
  Delega al service il login dell'utente.
- *logout(SubDTO)*: string \
  Delega al service il logut dell'utente.

==== RegisterGlobalSupervisorEventListener
+ Porta in entrata per l'ascolto di comandi di registrazione di un nuovo Supervisore Globale.
Può invocare le seguenti funzioni:
- *registerGlobalSupervisor(GlobalSupervisorDTO)*: UserID

==== RegisterLocalSupervisorEventListener
+ Porta in entrata per l'ascolto di comandi di registrazione di un nuovo Supervisore Locale.
Può invocare le seguenti funzioni:
- *registerLocalSupervisor(LocalSupervisorDTO)*: UserID

==== AuthController
+ Adapter in entrata che implementa le seguenti interfacce:
- *JwtHeaderAuthenticationListener*
- *AuthenticationEventListener*
- *RegisterGlobalSupervisorEventListener*
- *RegisterLocalSupervisorEventListener*

==== SetTokenPortPublisher
+ Porta in entrata per l'invio di token d'accesso.
Può invocare le seguenti funzioni:
- *emitAccessToken(token:string, cid:string)*: void
  Invia il il token.

==== RegisteredLocalSupervisorEventPublisher
+ Porta in entrata per comunicare l'avvenuta registrazione di un nuovo Supervisore Locale.
Può invocare le seguenti funzioni:
- *publishRegisteredLocal(LocalSupervisor)*: void

==== AuthEventHandler
+ Adapter in uscita che implementa le seguenti interfacce:
- *SetTokenPortPublisher*
- *RegisteredLocalSupervisorEventPublisher*



/*
=================================================
    MICROSERVIZIO ROUTING
=================================================
*/
#label("Routing")
#pagebreak()
=== Microservizio Routing
// Breve spiegazione + Immagine
#figure(
  image("assets/Routing.svg", width: 120%),
  caption: [Schema UML - Microservizio Routing]
)
==== Descrizione del microservizio
Il microservizio di Routing è il componente dedicato alla logica di calcolo della distanza e della sequenza ottimale dei magazzini. 
La sua funzione principale è fornire al Sistema Centralizzato le informazioni necessarie per prendere decisioni rapide ed efficaci in merito 
bilanciamento delle scorte o gestione degli ordini critici. Questo servizio opera in modo indipendente, 
concentrandosi unicamente sulle funzionalità di routing, e comunica con gli altri microservizi per ottenere i dati necessari.
===== Funzionalità principali
- *Determinazione delle distanze*: calcolo della distanza tra i magazzini, sulla base delle informazioni disponibili.
==== RoutingController
+ Rappresenta il controller incaricato della gestione degli indirizzi di magazzino e della ricezione di eventi legati allo stato dei magazzini.

Può invocare le seguenti funzioni:
- *updateAddress(warehouseAddress: WarehouseAddressDTO)*: void \
  Aggiorna un indirizzo di magazzino già registrato nel sistema.
- *removeAddress(warehouseAddress: WarehouseAddressDTO)*: void \
  Rimuove un indirizzo di magazzino non più attivo.
- *addAddress(warehouseAddress: WarehouseAddressDTO)*: void \
  Aggiunge un nuovo indirizzo di magazzino al sistema di routing.
- *createWarehouse(dto: {state:string, address:string})*: Promise`<string>`\
  Crea un nuovo magazzino nel sistema di routing.
- *receiveRequest(warehouseid : WarehouseIdDTO)* : Promise`<void>` \
  Riceve la richiesta di calcolo delle distanze da un magazzino critico.
- *updateWarehouseState(warehouseState: WarehouseStateDTO)*: Promise`<void>` \
  Riceve l'aggiornamento dello stato di un magazzino.
==== criticQuantityEvent
+ Rappresenta l’evento emesso dal sistema centralizzato quando si verifica una criticità di quantità.  
  Viene ascoltato dal microservizio *Routing* e viene suddiviso due casi:  
  - quando uno o più prodotti dell'inventario di un magazzino scendono sotto la soglia minima,  
  - quando un ordine effettuato in un magazzino richiede prodotti e risultano insufficienti.    
+ In entrambi i casi, il sistema centralizzato emette questo evento e il microservizio Routing lo riceve per avviare le azioni conseguenti.

Può invocare le seguenti funzioni:
- *receiveRequest(warehouseId: WarehouseIdDTO)*: Promise`<void>` \
  Riceve dal sistema centralizzato l’ID di un magazzino critico e lo inoltra al *RoutingService* per calcolare la sequenza di distanza rispetto agli altri magazzini.

==== ReceiveWarehouseState
+ Rappresenta il componente che gestisce l’aggiornamento dello stato di un magazzino in base ai dati ricevuti.

Può invocare le seguenti funzioni:
- *updateWarehouseState(warehouseState: WarehouseStateDTO)*: Promise`<void>` \
  Aggiorna lo stato di un magazzino in base ai dati ricevuti.

==== WarehouseSubscriber
+ Rappresenta il componente che si occupa di ricevere gli eventi relativi alla creazione di un nuovo magazzino.

Può invocare le seguenti funzioni:
- *createWarehouse(dto: {state:string, address:string})*: Promise`<string>`\
  Crea un nuovo magazzino nel sistema di routing.

==== WarehouseAddressSubscriber
+ Rappresenta il componente che si occupa di ricevere gli eventi relativi alla gestione degli indirizzi dei magazzini.

Può invocare le seguenti funzioni:
- *updateAddress(warehouseAddress: WarehouseAddressDTO)*: void \
  Aggiorna un indirizzo di magazzino già registrato nel sistema.
- *removeAddress(warehouseAddress: WarehouseAddressDTO)*: void \
  Rimuove un indirizzo di magazzino non più attivo.
- *addAddress(warehouseAddress: WarehouseAddressDTO)*: void \
  Aggiunge un nuovo indirizzo di magazzino al sistema di routing.

==== RoutingService
+ Rappresenta il servizio applicativo che si occupa della logica di business relativa al calcolo delle distanze tra magazzini e alla gestione degli indirizzi.

Può invocare le seguenti funzioni:
- *calculateDistance()*: WarehouseId[] \
  Esegue il calcolo della distanza tra il magazzino di riferimento e tutti gli altri, restituendo un array di WarehouseId ordinato per distanza.
- *updateWarehouseAddress(warehouseId: WarehouseId, address: string)*: Promise`<void>`
- *removeWarehouseAddress(warehouseId: WarehouseId)*: Promise`<void>`
- *saveWarehouseAddress(warehouseId: WarehouseId, address: string)*: Promise`<void>`
- *updateWarehouseState(warehouseId: WarehouseId, state: string)*: Promise`<void>`
- *saveWarehouse(state:string, address:string)*: Promise`<string>`
==== RoutingRepository
+ Rappresenta il repository incaricato della persistenza e recupero delle informazioni relative ai magazzini, indirizzi e stati.

Può invocare le seguenti funzioni:
- *saveWarehouse(warehouse: WarehouseId)*: void \
  Salva un nuovo magazzino.
- *getWarehouseById(id: WarehouseId)*: WarehouseId \
  Recupera un magazzino tramite il suo ID.
- *getAllWarehouses()*: WarehouseId[] \
  Recupera tutti i magazzini.
- *saveWarehouseAddress(address: WarehouseAddress)*: void \
  Salva l’indirizzo di un magazzino.
- *removeWarehouseAddress(id: WarehouseId)*: void \
  Rimuove l’indirizzo di un magazzino.
- *updateWarehouseAddress(address: WarehouseAddress)*: void \
  Aggiorna l’indirizzo di un magazzino.
- *getWarehouseAddressById(id: WarehouseId)*: WarehouseAddress \
  Recupera un indirizzo tramite l’ID del magazzino.
- *getAllWarehouseAddresses()*: WarehouseAddress[] \
  Recupera tutti gli indirizzi dei magazzini.
- *saveWarehouseState(state: WarehouseState)*: void \
  Salva lo stato di un magazzino.
- *getWarehouseStateById(id: WarehouseId)*: WarehouseState \
  Recupera lo stato di un magazzino tramite il suo ID.
- *getAllWarehouseStates()*: WarehouseState[] \
  Recupera gli stati di tutti i magazzini.
- *updateWarehouseState(state: WarehouseState)*: Promise`<void>` \
  Aggiorna lo stato di un magazzino.
==== DataMapper
+ Rappresenta il componente che si occupa della conversione tra oggetti di dominio e DTO, assicurando la separazione dei livelli applicativi.

Può invocare le seguenti funzioni:
- *toDomain(warehouseState: WarehouseStateDTO)*: WarehouseState \
  Converte un DTO WarehouseStateDTO in un oggetto di dominio WarehouseState.
- *toDomain(warehouseId: WarehouseIdDTO)*: WarehouseId \
  Converte un DTO WarehouseIdDTO in un oggetto di dominio WarehouseId.
- *toDomain(warehouseAddress: WarehouseAddressDTO)*: WarehouseAddress \
  Converte un DTO WarehouseAddressDTO in un oggetto di dominio WarehouseAddress.
- *toDTO(warehouseState: WarehouseState)*: WarehouseStateDTO \
  Converte un oggetto di dominio WarehouseState in un DTO WarehouseStateDTO.
- *toDTO(warehouseId: WarehouseId)*: WarehouseIdDTO \
  Converte un oggetto di dominio WarehouseId in un DTO WarehouseIdDTO.
- *toDTO(warehouseAddress: WarehouseAddress)*: WarehouseAddressDTO \
  Converte un oggetto di dominio WarehouseAddress in un DTO WarehouseAddressDTO.

==== RoutingEventAdapter
+ Rappresenta l’adapter responsabile della pubblicazione degli eventi relativi agli indirizzi, alle distanze dei magazzini e lo stato dei magazzini.

Può invocare le seguenti funzioni:
- *sendAddress(warehouseAddress: WarehouseAddress)*: void \
  Invia un evento con i dati di un indirizzo.
- *sendWarehouseDistance(warehouseId: WarehouseId)*: void \
  Invia un evento con le distanze calcolate.
- *RequestWarehouseState(WarehouseState)*:void \
  Invia una richiesta al microservizio *Cloud State* per essere a conoscenza dello stato di un/o più Warehouse.

==== WarehouseIdDTO
+ DTO per trasferire l’identificativo di un magazzino.

Descrizione degli attributi della struttura:
- *warehouseId*: number \
  L’ID del magazzino.

==== WarehouseStateDTO
+ DTO per trasferire lo stato di un magazzino.

Descrizione degli attributi della struttura:
- *warehouseId*: WarehouseIdDTO \
  L’ID del magazzino a cui si riferisce lo stato.
- *state*: string \
  Lo stato del magazzino.

==== WarehouseAddressDTO
+ DTO per trasferire l’indirizzo di un magazzino.

Descrizione degli attributi della struttura:
- *warehouseState*: WarehouseStateDTO \
  Lo stato del magazzino associato.
- *address*: string \
  L’indirizzo del magazzino.

==== WarehouseId
+ Rappresenta l’identificativo univoco di un magazzino.

Descrizione degli attributi della struttura:
- *warehouseId*: number \
  L’ID numerico del magazzino.

Può invocare le seguenti funzioni:
- *getId()*: number \
  Restituisce l’ID del magazzino.

==== WarehouseState
+ Rappresenta lo stato operativo di un magazzino.

Descrizione degli attributi della struttura:
- *state*: string \
  Lo stato attuale del magazzino.
- *warehouseId*: WarehouseId \
  Il riferimento all’ID del magazzino a cui lo stato appartiene.

Può invocare le seguenti funzioni:
- *getState()*: string \
  Restituisce lo stato.
- *getId()*: number \
  Restituisce l’ID del magazzino associato.

==== WarehouseAddress
+ Rappresenta l’indirizzo fisico di un magazzino, combinando lo stato e l’indirizzo stesso.

Descrizione degli attributi della struttura:
- *warehouseState*: WarehouseState \
  Lo stato del magazzino associato a questo indirizzo.
- *address*: string \
  L’indirizzo fisico completo.

Può invocare le seguenti funzioni:
- *getState()*: string \
  Restituisce lo stato del magazzino.
- *getId()*: number \
  Restituisce l’ID del magazzino.
- *getAddress()*: string \
  Restituisce l’indirizzo.


= Stato dei requisiti funzionali
== Stato per requisito
