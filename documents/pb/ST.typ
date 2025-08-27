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

#let versione = "0.0.1"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)


#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

  [0.0.2],
  [],
  [M. Dalla Pozza],
  [-],
  [Tecnologie utilizzate e architettura],

  [0.0.1],
  [30/07/2025],
  [N. Moretto],
  [-],
  [Creazione template e struttura del documento.],


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
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")

- *Norme di Progetto#super[G] - versione 2.0.0*
  #link("") //TODO: inserire link al documento Norme di Progetto
  
=== Riferimenti informativi


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

== Linguaggi di programmazione
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [*Typescript*], [1.24.0], [Linguaggio di programmazione superset di JavaScript, progettato per aggiungere tipizzazione statica e altre funzionalità.
Sviluppo di applicazioni scalabili, miglioramento della qualità del codice, utilizzo con framework come Angular, React e Node.js.], [Test],
    [*JavaScript*], [1.24.0], [Linguaggio di programmazione interpretato, principalmente utilizzato per il lato client nelle applicazioni web.
Sviluppo frontend, dinamismo e interattività delle pagine web, utilizzato con framework come React, Vue.js, Angular.], [Test],
    [*YAML*], [1.24.0], [Formato di serializzazione dei dati leggibile dall'uomo, spesso usato per configurazioni.
Definizione di file di configurazione, deployment automation, utilizzato con sistemi come Kubernetes, Docker e CI/CD pipelines.], [Test],
    [*JSON*], [1.24.0], [Formato di scambio dati basato su testo, semplice e leggero, ampiamente utilizzato per la comunicazione tra server e client.
Scambio di dati tra server e applicazioni web, configurazione di API, utilizzato in contesti come RESTful services e architetture microservizi.], [Test],
  ),
  caption: [Linguaggi di programmazione],
)


== Framework
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [*NestJs*], [1.24.0], [Framework per applicazioni Node.js basato su TypeScript, progettato per costruire applicazioni scalabili e modulari.
Sviluppo di backend robusti e mantenibili, costruzione di API RESTful, utilizzo con TypeORM, GraphQL, microservizi.]

  ),
  caption: [Frameworks],
)


== Tecnologie per la gestione dei dati
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [*MongoDB*], [1.24.0], [Database NoSQL orientato ai documenti, progettato per gestire grandi volumi di dati non strutturati o semi-strutturati.
                            Archiviazione flessibile di dati JSON-like, scalabilità orizzontale, ideale per applicazioni web moderne, sistemi distribuiti, e gestione di dati in tempo reale.]

  ),
  caption: [Persistenza dei dati],
)

//DB
== Tecnologie per la comunicazione e per la messaggistica
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [*NATS*], [1.24.0], [Sistemi di messaggistica leggeri e ad alte prestazioni per la comunicazione asincrona tra microservizi.
                        Gestione di eventi, comunicazione in tempo reale, utilizzato in architetture a microservizi, IoT, e applicazioni distribuite.]

  ),
  caption: [messaggistica],
)

//NATS
== Tecnologie per la virtualizzazione
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [*Docker*], [1.24.0], [Piattaforma per la creazione, distribuzione e gestione di container, che permette di isolare applicazioni e dipendenze.
                          Virtualizzazione leggera, gestione di ambienti di sviluppo e produzione, automazione del deployment, utilizzato in DevOps e CI/CD pipelines.]

  ),
  caption: [Virtualizzazione],
)

//Docker

== Tecnologie per il monitoraggio dei microservizi
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [**], [1.24.0], []

  ),
  caption: [Monitoraggio],
)


//tipo grafana, prometheus, ecc.

== Tecnologie per l'analisi statica
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [**], [1.24.0], []

  ),
  caption: [Analisi statica],
)

== Tecnologie per l'analisi dinamica
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [**], [1.24.0], []

  ),
  caption: [Analisi dinamica],
)
//dire cosa abbiamo usato per fare i test

== Librerie
#v(1em)

#figure(
  table(
    columns: (1fr, 0.60fr, 3.5fr, 1fr),

    
    align: center + horizon,
    inset: 8pt,

    // Header row
    text(white)[*Nome*], text(white)[*Versione*], text(white)[*Descrizione*], text(black)[*Impiego*],

    //table row
    [**], [1.24.0], []

  ),
  caption: [Analisi dinamica],
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

- Porte e adattatori: Le porte definiscono le interfacce che permettono la comunicazione tra il nucleo centrale e l'esterno, mentre gli adattatori 
                      implementano queste interfacce per tecnologie specifiche.

- Sostituibilità delle dipendenze: È possibile sostituire facilmente componenti come database, framework o altre dipendenze senza influenzare 
                                   la logica di business centrale.

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

- Adattamento alle esigenze future: L'architettura a microservizi offre la possibilità di integrare facilmente nuove tecnologie, 
  strumenti o piattaforme, senza compromettere la stabilità dell'intero sistema. Ciò consente al sistema di evolvere in modo agile 
  e rispondere rapidamente alle esigenze del business.

In conclusione, l'architettura esagonale rappresenta una scelta ideale per garantire modularità, sostenibilità a lungo termine e un'elevata capacità di adattamento alle esigenze future del sistema.

== Architettura di deployment
=== Sistema a microservizi

== Design patterns
// Enuncere i design patterns usati, la descrizione e il motivo della scelta
=== (nome pattern)
==== Descrizione del (nome pattern)
==== Motivazioni dell'utilizzo del (nome pattern)

== Microservizi sviluppati
// Spiegare i vari microservizi utilizzati, e tutti gli oggetti di ogni microservizio.

//Prima presentare gli oggetti comuni tra i microservizi, e poi gli oggetti comuni di ogni microservizio (sarà una lista molto lunga)

//ogni oggetto avrà la sua figura (diagramma di classe)


= Stato dei requisiti funzionali
== Stato per requisito
