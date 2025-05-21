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

#let titolo = "Norme di progetto"
#let status = "In redazione"
#let destinatario = "M31"
#let versione = "0.5.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.5.0],
  [23/05/2025],
  [R. Zangla],
  [N. Moretto],
  [Aggiunta e compilata l'intera sezione 6. Aggiunte le sezioni 4.3.4.1 e 4.3.4.2. Eliminata la sezione 4.4.3. e spostate le sue sottosezioni dentro 4.4.2. Aggiunte informazioni alle sezioni da 3.2.2.2, 3.2.2.3, 3.2.3.4, da 4.1.2 a 4.1.11 (sottosezioni incluse, tranne 4.1.5.1), 4.2.1, 4.4.1, 4.4.2 (sottosezioni incluse), da 4.3.1 a 4.3.3, 4.5.1, 5.1.2.5, 5.1.2.6, 5.2.2, 5.2.4, da 5.3.2.1 a 5.3.2.12 (sottosezioni incluse), 5.3.1, da 5.4. a 5.5 (sottosezioni incluse)],

  [0.4.0],
  [09/05/2025],
  [R. Zangla],
  [S. Marana],
  [Aggiunta e compilata la sezione 4.1.5.1. Aggiunte informazioni alle sezioni 2, da 3.1.1 a 3.1.5, 3.2.1, 3.2.2.1 e da 3.2.3.6 a 3.2.5 (sottosezioni incluse).],

  [0.3.0],
  [25/04/2025],
  [R. Zangla],
  [S. Marana],
  [Ulteriore ristrutturazione del documento e aggiunte note. Modificate le sezioni 4.2 e 8.4.1. Aggiunte informazioni alle sezioni da 4.2.2 a 4.2.4 (sottosezioni incluse), da 5.1.2.1 a 5.1.2.4, 5.2.1, 5.2.3 e 5.2.5.],

  [0.2.0],
  [06/04/2025],
  [S. Speranza],
  [S. Marana],
  [Ristrutturazione del documento, ulteriore stesura],
  
  [0.1.0],
  [29/03/2025],
  [N. Bolzon],
  [S. Marana],
  [Inizio stesura del documento],
  
  [0.0.1],
  [28/03/2025],
  [S. Speranza],
  [S. Marana],
  [Creazione template e struttura del documento]
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

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  block(it)
}

/* SEZIONE 1 - Introduzione */
= Introduzione
  == Scopo del documento
  Il presente documento viene redatto per descrivere il _Way of Working_#super[G] adottato dal Team _Code Alchemists_ per lo svolgimento del progetto didattico di Ingegneria del Software. Esso stabilisce le linee guida, i processi, le metodologie e gli standard inerenti tutte le attività associate all'intero ciclo di vita del software, in modo da garantire coerenza, efficienza, efficacia e qualità.

  == Scopo del prodotto
  Il prodotto, detto anche software, oggetto del presente progetto, consiste nella realizzazione di un sistema distribuito e scalabile per la gestione ottimale (intesa come minimizzazione dei tempi di risposta e di ottimizzazione della distribuzione delle scorte#super[G]) di una rete di magazzini, singolarmente autonomi, in modo da favorire l'interoperabilità tra di essi e centralizzare le informazioni in maniera efficiente e sicura. // Inserire riferimento al capitolato#super[G]?

  Il presente documento è redatto secondo lo standard _ISO/IEC 12207:1995_, che identifica tre tipologie di processi: 
  - *Processi primari*;
  - *Processi organizzativi*;
  - *Processi di supporto*.
  // Magari descrivere sinteticamente di cosa trattano?
  // Direi di no perché vengono già introdotti brevemente alla pagina successiva  

  == Entità coinvolte
  Il presente progetto didattico di Ingegneria del Software coinvolge le seguenti entità:
  - Il proponente del progetto, _M31_, nei ruoli di:
    - _Cliente_#super[G];
    - _Mentore_#super[G];
  - Il docente, #p.tullio, nel ruolo di _Committente_#super[G]
  - Il team _Code Alchemists_, nel ruolo di _Fornitore_#super[G]
  
  == Glossario
  Le parole contrassegnate in apice con la lettera #super[G] sono intese con la loro definizione specificata nel documento _Glossario_.
  == Riferimenti
    === Riferimenti normativi
    - *Capitolato#super[G] d'appalto* \
      *C6 - Sistema di Gestione di un Magazzino Distribuito* \
      #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")]\
      //Ultimo Accesso: \
    
    - *Standard ISO/IEC 12207:1995* \
      #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")]\
      //Ultimo Accesso: \
    
    === Riferimenti informativi
    - *Glossario* \
      #underline[#link("https://teamcodealchemists.github.io/glossario.html")] \ 
      //Ultimo Accesso: \

    - *Piano di Qualifica* \
      #underline[#link("")] \
      //Ultimo Accesso: \

    - *Piano di Progetto* \
      #underline[#link("")] \
      //Ultimo Accesso: \

= Struttura dei processi
Il processo sarà strutturato secondo le linee guida dello standard *ISO/IEC 12207:1995*, che definisce il ciclo di vita del software suddividendolo in 3 categorie principali:
- i *processi primari* riguardano le attività fondamentali di sviluppo, acquisizione e manutenzione del software;
- i *processi di supporto* forniscono strumenti e metodologie per garantire qualità, verifica, convalida e gestione della configurazione;
- i *processi organizzativi*, infine, includono la gestione del progetto, la formazione del personale e il miglioramento continuo, assicurando un approccio sistematico ed efficiente alla produzione software.

= Processi primari
== Fornitura
  === Scopo
  // Descrizione Fornitura
  Il processo di fornitura è l'insieme di attività che regolano la collaborazione tra fornitore e cliente#super[G] per la creazione e consegna di un prodotto software. 
  
  Attraverso l'analisi dei requisiti#super[G], la pianificazione delle operazioni e la gestione delle risorse, questo processo garantisce il rispetto dei tempi, dei costi e degli standard di qualità. 
  
  La chiave del successo è un dialogo continuo tra le parti, che permette di risolvere le difficoltà tecniche, adattare le strategie di sviluppo e assicurare che il prodotto finale soddisfi le aspettative del cliente#super[G] (M31). L'obiettivo primario è ottimizzare l'efficienza e garantire la conformità agli accordi stabiliti.

  === Comunicazione con l'azienda proponente
  // Spiegazione di come vengono mantenuti i contatti con l'azienda proponente (+ accenno agli strumenti citati sotto)

  Il team _Code Alchemists_ ritiene essenziale mantenere un dialogo continuo con l'azienda _M31_ per garantire un allineamento efficace sulle esigenze del progetto, prevenire incomprensioni e agevolare la risoluzione di eventuali criticità. A tal fine, verranno programmati incontri bisettimanali su Google Meet, integrati da una continua comunicazione asincrona tramite email.

  Le interazioni con il proponente saranno focalizzate su aspetti chiave quali definire i requisiti#super[G], pianificare le consegne, raccogliere di feedback, gestire le problematiche tecniche e la definizione delle priorità.

  L'obiettivo principale è favorire una collaborazione strutturata, assicurando la qualità del prodotto finale e la piena conformità alle aspettative del cliente#super[G].

  === Piano di Progetto
  // Descrizione documento PdP
  Il Piano di Progetto è un documento strategico che guida la pianificazione e l'esecuzione del progetto, garantendo un utilizzo ottimale delle risorse e il rispetto degli obiettivi. 
  
  Redatto dal Responsabile#super[G]; con il supporto degli Amministratori#super[G], include l'analisi dei rischi, la metodologia di sviluppo basata su Scrum, la roadmap delle attività e la gestione dei costi. Inoltre, il piano prevede monitoraggio continuo attraverso un confronto costante tra il preventivo e il consuntivo volto ad analizzare la fase attuale e migliorare le fasi future. 
  
  Questo piano facilita la comunicazione tra fornitore e proponente, assicurando trasparenza e coordinazione efficace durante l'intero processo.

  === Piano di Qualifica
  // Descrizione documento PdQ

  Il Piano di Qualifica definisce le strategie per garantire la qualità del prodotto, stabilendo standard di sviluppo, criteri di verifica e test per la conformità ai requisiti#super[G]. 
  
  Redatto dall'Amministratore#super[G];, include metodologie di Verifica e Validazione, il monitoraggio delle metriche e gli esiti dei test, assicurando il rispetto degli obiettivi qualitativi e il miglioramento continuo del progetto.

  === Strumenti
  // Google Calendar, Google Meet, Jira (in generale. Verrà approfondito in Processi organizzativi)

  Di seguito sono riportati i software impiegati nel processo di fornitura:
  - *Discord*: piattaforma utilizzata per le riunioni interne tra i membri del team;
  - *Google Meet*: piattaforma utilizzata per le riunioni esterne con l'azienda proponente;
  - *Telegram*: piattaforma per la comunicazione informale tra i membri del team;
  - *Jira*: sistema di issue tracking per la gestione e organizzazione delle varie task.
  - *Typst*: sistema per la creazione di documenti;
  - *Google Presentazioni*: sistema per la creazione delle slide di presentazione;
  - *Google Calendar*: sistema per tenere traccia dei vari incontri interni ed esterni da svolgere.


== Sviluppo 
  === Scopo
  // Descrizione Sviluppo
  Il processo di sviluppo software è l'insieme delle attività necessarie per trasformare un'idea in un prodotto funzionante, garantendo la conformità ai requisiti#super[G] e agli standard di qualità. 
  
  Si articola in tre fasi principali: _Analisi dei Requisiti#super[G]_, _Progettazione_ e _Codifica_.
  
  Il processo di sviluppo ha il compito di assicurare una pianificazione strutturata e un'ottimizzazione delle risorse. Il software deve rispettare vincoli tecnologici, obiettivi di design e superare test di verifica e validazione, mentre la documentazione facilita la gestione e il mantenimento del progetto nel tempo.

  === Analisi dei Requisiti#super[G]
    ==== Scopo
    // Descrizione documento AdR
    L'Analisi dei Requisiti#super[G]; è la fase preliminare dello sviluppo software, finalizzata a identificare e documentare in modo accurato le esigenze del proponente e degli utenti. Questo processo consente di definire il fine del prodotto, gli attori del sistema e le funzionalità chiave, fornendo ai progettisti#super[G] una visione chiara del problema e ai verificatori#super[G] una base per le attività di test. 
    
    L'analisi si concretizza in un documento strutturato che raccoglie i casi d'uso, i requisiti#super[G] funzionali e non funzionali, e le fonti da cui sono stati derivati. Questo documento rappresenta un riferimento essenziale per la progettazione, la pianificazione e la fase di verifica, garantendo che il sistema soddisfi pienamente le aspettative del cliente#super[G] e gli obiettivi stabiliti. Inoltre, è strettamente collegato al Piano di Qualifica, che consente di monitorare la conformità ai requisiti#super[G] attraverso test specifici.
    ==== Casi d'uso
    // Descrizione e nomenclatura use case
    I casi d’uso sono codificati utilizzando la seguente notazione:

    #align(center, block[*UC [ID-Principale].[ID-Sottocaso]*])
    
    Tale notazione fa uso dell'acronimo "UC" (che sta per "Use Case", ovvero "Caso d'Uso") e di un identificativo univoco del caso d'uso, composto da:
    - un ID principale che identifica il caso principale 
    - e, se necessario, da un ID del sottocaso.

    /******* Da aggiungere una sezione dedicata ai diagrammi dei casi d'uso non appena li avremo fatti ********/

    ==== Requisiti#super[G]
    // Nomenclatura Requisiti#super[G] + riferimento all'AdR
    I requisiti#super[G]; sono stati codificati in modo da facilitarne la lettura e la comprensione. La codifica
    è composta da un prefisso che indica il tipo di requisitoG, seguito da un numero progressivo.
    
    I requisiti#super[G]; funzionali sono preceduti dal prefisso «RF», i requisiti#super[G]; di sicurezza dal prefisso
    «RS», i requisiti#super[G]; non funzionali dal prefisso «RnF» e i requisiti#super[G]; di vincolo dal prefisso «RV»,
    dove:
    - *R* sta per «Requisito»
    - *F* sta per «Funzionale»
    - *S* sta per «Sicurezza»
    - *nF* sta per «non Funzionale»
    
    Alcuni requisiti#super[G]; funzionali sono stati definiti come *«desiderabili»*, in quanto non strettamente
    necessari ma in grado di apportare un valore aggiunto riconoscibile.
    Per indicare che un requisito#super[G]; è desiderabile, è stato deciso di aggiungere la lettera *«D»* (Desiderabile) al prefisso del requisito#super[G];, per indicare che il requisitoG è desiderabile.
    *RFD*, ad esempio, sta per «Requisito#super[G]; Funzionale Desiderabile».
    
    Essendoci presenti anche dei requisiti#super[G]; *opzionali*, è stato deciso di aggiungere la lettera
    *«O»* (Opzionale) al prefisso del requisito#super[G];, per indicare che il requisito#super[G]; è opzionale.
    *RFO*, ad esempio, sta per «Requisito#super[G]; Funzionale Opzionale».
    
    Inoltre, i requisiti#super[G]; forniti dal capitolato#super[G]; sono molto generali e non specificano in modo
    dettagliato le funzionalità richieste. Per questo motivo, è stato deciso di scomporre i requisiti#super[G];
    in requisiti#super[G]; più specifici, cioè chi deve fare cosa, e in che modo.
    
    Per indicare che un requisito#super[G]; è secondario, è stato deciso di aggiungere la dicitura *«/nr»* al
    codice#super[G]; del requisito#super[G]; principale, dove *nr* è il numero progressivo del requisito#super[G]; secondario.
    
    Quindi, la struttura del codice#super[G]; di un requisito#super[G]; è la seguente:
    - RF01: Requisito#super[G]; Funzionale principale 01
    - RF01/01: Requisito#super[G]; Funzionale secondario 01/01
    - RS01: Requisito#super[G]; di Sicurezza principale 01
    - RS01/01: Requisito#super[G]; di Sicurezza secondario 01/01
    - RnF01: Requisito#super[G]; non Funzionale principale 01
    - RnF01/01: Requisito#super[G]; non Funzionale secondario 01/01


  === Progettazione
    ==== Scopo
    // Dare soluzioni a requisiti rilevati nell'AdR.
    La progettazione software definisce le soluzioni tecniche per soddisfare i requisiti#super[G] individuati, trasformandoli in un'architettura strutturata e modulare#super[G]. 
    
    Si suddivide in:
    - *Progettazione Logica*, che motiva la scelta di tecnologie e framework e include il PoC#super[G];
    - *Progettazione di dettaglio*, che specifica l'architettura con diagrammi delle classi e test di unità. 
    
    Per garantire un sistema efficiente e scalabile, la progettazione segue principi di modularità#super[G], flessibilità e affidabilità, assicurando una struttura chiara e facilmente manutenibile prima della fase di sviluppo.
    ==== Fasi di Progettazione  
      ===== Progettazione logica
      // Descrizione progett. logica
      La progettazione logica definisce la struttura di alto livello del software, traducendo i requisiti#super[G] in un'architettura chiara e coerente. Comprende la scelta di framework, tecnologie e librerie, validandone l'adeguatezza tramite un Proof of Concept#super[G] (PoC#super[G]). Inoltre, include diagrammi UML per rappresentare l'interazione tra i componenti. 
      
      I progettisti#super[G] devono garantire l'assegnazione e il dettaglio dei requisiti#super[G], progettare interfacce e strutture dati, definire test di integrazione e revisionare l'architettura in collaborazione con il team e il cliente#super[G], assicurando che il sistema sia ben strutturato e facilmente manutenibile.
      ===== Progettazione di dettaglio
      // Descrizione progett. di dettaglio
      La progettazione di dettaglio suddivide il sistema in unità architetturali funzionali, garantendo una codifica efficiente e verificabile. Essa assicura che i componenti software siano ben definiti e coerenti con la progettazione logica, evitando complessità eccessive. 
      
      Durante questa fase, vengono creati diagrammi delle classi, tracciate le componenti e definiti gli unit test e integrazione, supportando un'implementazione strutturata e affidabile del prodotto.

    ==== Specifica tecnica
    // Importanza di documentare la progettazione nel documento "Specifica tecnica/Specifica architetturale"
    La specifica tecnica è un riferimento essenziale per lo sviluppo software, guidando le scelte architetturali e tecnologiche in modo strutturato. Essa definisce l'architettura del sistema, descrivendo componenti e interfacce, e indica le tecnologie adottate, come linguaggi di programmazione e framework. Inoltre, dettaglia la gestione dei dati, le interfacce con sistemi esterni e i design pattern utilizzati, garantendo efficienza e coerenza progettuale. 
  
    Il documento include anche la pianificazione delle attività, con stime di tempi e risorse, e le procedure di testing, assicurando che il prodotto finale rispetti i requisiti#super[G] tecnici e le aspettative del cliente#super[G].
    
    ==== Framework e tecnologie utilizzate
    - *NATS*: Dato che utilizziamo comunicazione asincrona con messaggi, serve un message broker. La scelta naturale ricade su NATS in quanto è più rapido in termini di latenza (dato che non garantisce l’ordine corretto di arrivo dei messaggi) ed è più “semplice”.
    - *Go*:  come linguaggio di programmazione dei microservizi#super[G]. Ogni servizio#super[G] potrebbe avere il proprio stack tecnologico, ma Go è la scelta naturale in quanto il server NATS è programmato in Go, e quindi fornisce maggior supporto, minore latenza, prestazioni migliori ecc.
    - *Docker e Kurbenetes*: per il deploy, dato che sono le tecnologie più adatte al nostro caso. 

    ==== Pratiche di programmazione
    /********** Convenzioni su metodi, import, commenti... ***********/

    ==== PoC#super[G]
    // Descrizione PoC
    Il Proof of Concept#super[G] (PoC#super[G]) è una fase fondamentale dello sviluppo, durante la quale progettisti#super[G] e programmatori#super[G] valutano la validità di una soluzione prima della sua implementazione definitiva. Il suo scopo è dimostrare la fattibilità del progetto, assicurando che le tecnologie scelte siano adeguate e compatibili con i requisiti#super[G] tecnici e operativi. Inoltre, offre all'azienda proponente un feedback tempestivo e concreto, minimizzando i rischi e ottimizzando le decisioni. 
  
  === Codifica
    ==== Scopo
    // Descrizione Codifica
    La codifica, affidata ai programmatori#super[G], è una fase essenziale dello sviluppo software, finalizzata a tradurre le scelte progettuali in codice#super[G] sorgente funzionante. 
    
    Per garantire uniformità, leggibilità e manutenibilità, vengono seguite precise linee guida sulla formattazione, la nomenclatura e la struttura del codice#super[G]. Queste regole contribuiscono a semplificare la verifica, il debugging e l'estensione del software, assicurando un prodotto finale robusto e di alta qualità.
    ==== Convenzioni di sintassi
    // Nomi da assegnare, in che lingua, che stile di case seguire, indentazione, spaziatura...
    Le norme di scrittura del codice#super[G] del prodotto software mirano a garantire leggibilità, uniformità e manutenibilità. Di seguito sono definite le principali convenzioni da seguire.

    // ***************** SEZIONI DA RIFINIRE CON CIO' CHE SI DECIDE EFFETTIVAMENTE *******/
      ===== Formattazione
      Ogni riga di codice#super[G] non deve superare gli ...... caratteri per mantenere la leggibilità e facilitare la revisione.

      ===== Commenti
      Ogni costrutto deve essere preceduto da un commento esplicativo in italiano, indentato di una tabulazione. Sono obbligatori nei punti meno intuitivi e devono essere aggiornati ogni volta che viene modificato un metodo.

      ====== Indentazione
      I blocchi di codice#super[G] innestati devono essere indentati con una tabulazione

      ===== Parentesi graffe
      La parentesi graffa aperta deve trovarsi nella stessa riga della dichiarazione del costrutto, separata da uno spazio, mentre la chiusa va posta con la corretta indentazione subito dopo l'ultima istruzione del costrutto.

      ===== Metodi
      I nomi dei metodi devono essere in ...
      // Camel Case e in inglese, con la prima parola in minuscolo e le successive con l'iniziale maiuscola. 
      Si preferisce mantenere i metodi brevi e concisi.

      ===== Classi e tipi
      Devono essere nominati usando ...
      //Pascal Case, dove ogni parola inizia con una lettera maiuscola, rispettando la lingua inglese per garantire chiarezza e standardizzazione.

      ===== Variabili 
      Il nome delle variabili deve seguire lo stile ...
      //Camel Case, scritto in inglese, 
      e dichiarato all'inizio della funzione o dello script per migliorare la leggibilità.

      ==== Costanti 
      I nomi delle costanti devono essere scritti in 
      // Macro Case, ovvero completamente in maiuscolo e separati da underscore
      , per distinguerle chiaramente da altre entità.

      ===== File
      Il nome dei file deve essere formattato in //Camel Case, 
      senza spazi, per mantenere coerenza nel progetto.

      ===== Univocità dei nomi
      Ogni costrutto deve avere un nome chiaro e univoco, così da garantire la comprensione immediata della variabile o della funzione.

    === Tecnologie utilizzate
    // Cos'è VS Code e cosa permette
    Visual Studio Code (o VS Code) è un potente ambiente di sviluppo (IDE) ed è stato adottato come principale strumento di sviluppo software da parte dell'intero team.     
    Oltre a supportare numerosi linguaggi di programmazione e framework, offre funzionalità avanzate come il completamento automatico intelligente, il debugging integrato, il controllo della versione con Git e un ampio ecosistema di estensioni che permette di personalizzare l'esperienza di sviluppo. 

  = Processi di supporto
    == Documentazione
      === Scopo
      // Introduzione alla documentazione
      Il processo di documentazione è essenziale per tracciare le attività di sviluppo, facilitare la manutenzione e garantire coerenza nel ciclo di vita del prodotto. Seguendo regole e strutture uniformi, permette una consultazione rapida delle informazioni e supporta il lavoro asincrono, contribuendo alla storicizzazione delle decisioni prese e al miglioramento continuo del software.
      === Ciclo di vita del documento
      // Fasi che attraverso ogni documento dalla creazione al "rilascio"
        // (Creazione, stesura, verifica, pubblicazione)
        Il ciclo di vita di un documento software è strutturato in diverse fasi, le quali garantiscono un processo chiaro e standardizzato per la sua gestione, ovvero:
        - *Pianificazione*: organizzazione delle informazioni e definizione della struttura del documento, inclusi intestazioni, header e footer.
        - *Redazione*: assegnazione del compito di stesura del documento a un membro del team, utilizzo di strumenti di versionamento (GitHub) per tracciare le modifiche e avvio della stesura dei contenuti.
        - *Verifica*: ogni sezione viene revisionata da un membro distinto dal redattore, per garantire accuratezza e qualità. Per la documentazione esterna, viene effettuata una ulteriore validazione dagli enti terzi.
        - *Approvazione*: il responsabile di progetto analizza il documento nella sua interezza, verificando la coerenza e l'adeguatezza dei contenuti prima della pubblicazione.
        - *Pubblicazione*: il documento viene reso disponibile nel repository#super[G] GitHub ufficiale "docs" solo dopo una verifica positiva, assicurando la presenza esclusiva di documenti validati e coerenti.
       
        Questa suddivisione garantisce un processo documentale chiaro ed efficace, facilitando la gestione e l'evoluzione dei documenti nel tempo.

      === Template Typst
      // Scelta di utilizzare template
      Per facilitare la redazione dei documenti, sia interni che esterni, abbiamo creato dei template su Typst che conferiscono la struttura generale al documento.
      /*********** SCRIVERE ALTRO? **********/

      === Documenti prodotti
      // Distinzione documenti formali (interni o esterni) e informali
      I documenti prodotti durante il ciclo di vita del software apparterranno a due diverse macro categorie:
      - *Documenti informali*: essi sono utilizzati per documentare le informazioni (come bozze e appunti vari) e le dinamiche interne del team durante tutto il ciclo di vita del software. Tutti i documenti informali, infatti, sono *interni*,  organizzati tramite Google Drive. Essi, però, non sono soggetti nè a versionamento nè a verifica.
      - *Documenti formali*: essi sono redatti con rigorosa cura e attenzione per documentare le attività e i progressi concreti del team durante tutto il ciclo di vita del software. Tutti i documenti formali sono oggetti a versionamento e verifica. Essi sono suddivisi a loro volta in:

       - Documenti *interni*: destinato ad uso interno da parte dei membri del team (ovvero le Norme di Progetto e i verbali interni).
       - Documenti *esterni*: destinato agli enti esterni, quali l'azienda proponente e il committente#super[G] (ovvero Piano di Progetto, Piano di Qualifica, Analisi dei Requisiti#super[G], Glossario e i verbali esterni).

      === Nomenclatura documenti
      // Formato data nei documenti, ...
      I file devono possedere dei nomi adeguati, coerentemente con gli acronimi stabiliti nella sezione 4.1.5.1.      
      I verbali sia interni che esterni, però, fanno eccezione e adottano il formato di nomenclatura *"YYYY_MM_DD_TIPO"* o *"YYYY_MM_DD_TIPO_x"*, dove:
      - *YYYY-MM-DD*: si riferisce alla data dell'incontro. 
      - *TIPO*: si riferisce all'acronimo corrispettivo al tipo di verbale (VI o VE).
      - *x* (modificatore): indica eventuali versioni alternative del file. Le 2 opzioni disponibili sono:            
        - _test_: il documento è in stato di testing tecnico o operativo, da non considerarsi ufficiale. 
        - _signed_: i documenti esterni necessitano di una approvazione da parte di un ente terzo. Questo suffisso starà ad indicare che quel documento esterno è stato approvato dall'ente terzo e contiene la corrispondente firma di approvazione.

        ==== Acronimi per la documentazione
        Per facilitare la fruizione dei vari documenti, sono state assegnate delle sigle alle varie tipologie di documento. Gli acronimi adottati sono:
        - *VI*: Verbale Interno;
        - *VE*: Verbale Esterno;
        - *Gls*: Glossario;
        - *PdQ*: Piano di Qualifica;
        - *PdP*: Piano di Progetto;
        - *AdR*: Analisi dei Requisiti#super[G];
        - *NdP*: Norme di Progetto;
        - *DdB*: Diario di Bordo.

      === Struttura documento
      // Prima pagina, registro modifiche, contenuto principale...
      Tutti i documenti formali sono basati su un template e seguono una struttura fissa che deve essere rispettata. Tale struttura prevede:
      - *Intestazione*: la prima pagina del documento, che contiene il nostro logo, il nome del documento, lo stato e la versione del documento e la distribuzione (ovvero i destinatari);
      - *Registro delle modifiche*: una tabella che tiene traccia delle modifiche significative del documento durante il suo ciclo di vita. Ogni voce della tabella presenta vari dati:  
        - *Versione* del documento;
        - *Data* di modifica;
        - *Autore* della versione; 
        - *Verificatore#super[G]* della versione; 
        - *Descrizione* delle modifiche apportate.
      - *Indice dei contenuti*, il quale viene creato automaticamente invocando l'apposita funzione contenuta nel template del documento.
      
      === Convenzioni di scrittura
      // Stile di testo (grassetto, corsivo...)...
      All'interno dei documenti formali adottiamo delle convenzioni sullo stile del testo, le quali riguardano:
      -  *Grassetto*: utilizzato per titoli e per le keyword all'interno del contenuto;
      - _Corsivo_: utilizzato per evidenziare le entità coinvolte;
      - #underline[Sottolineatura]: utilizzato per i link.

      === Strumenti per stesura
      // Typst su VSCode
      Per la stesura dei documenti viene usato il linguaggio Typst, un linguaggio di markup versatile e abbastanza semplice. Durante le fasi di scrittura, è stata adottato l'utilizzo di Visual Studio Code, un IDE che supporta numerose estensioni, tra cui Typst, per la compilazione di sorgenti ".typ". Inoltre, l'estensione "Tinymist Typst" facilita il processo di redazione permettendo di visualizzare l'anteprima del documento in formato ”.pdf” direttamente all'interno di VSCode con la possibilità di poter vedere ogni modifica applicata in tempo reale.

      === Struttura della documentazione
        // In che modo dividiamo i documenti nella repo docs (in x cartella sono contenuti...)
          La nostra repository#super[G] _docs_  contiene al suo interno la cartella "documents", la quale contiene tutti i documenti redatti, ed è a sua volta è suddivisa in varie sottocartelle, tra cui:
          - *"candidatura/"*: raccoglie tutti i documenti redatti in fase di candidatura;
          - *"glossario/"*: contiene il file .typ del glossario;
          - *"presentazioni/"*: raccoglie tutti i file in formato .pdf dei vari Diari di Bordo redatti;
          - *"rtb#super[G]/"*: contiene al suo interno in formato .typ i vari documenti informali e formali (interni ed esterni), come ad esempio l'AdR oppure i vari verbali;
          - *"src/"*: contiene al suo interno i template che vengono importati in altri file .typ.
        /************* Immagino più avanti ci sarà la cartella pb ************/

        ==== Elementi grafici
        // In che cartella sono tenute le immagini...
        Le immagini e vari elementi grafici che compaiono all'interno dei documenti, come ad esempio il nostro logo, vengono raccolte all'interno delle cartelle denominate "assets".
      === Metriche
      // Indice Gulpease
      // Correttezza Ortografica (se la vogliamo mettere, non mi sembra automatizzata tho) -> Per il momento no.
      I documenti sono sottoposti a dei controlli di qualità, le quali sono:
      - *Parole del Glossario non segnate*: Indica il numero di parole trovate nella documentazione che sono presenti nel glossario ma non contrassegnate con la lettera "G" come apice.
      - *Indice Gulpease*: Fornisce un punteggio da 0 a 100 basato sull'indice di leggibilità Gulpease della documentazione.
      - *Ordinamento del Glossario*: Verifica che il glossario sia ordinato alfabeticamente.
      === Manutenzione
      // Fasi di manutenzione di un documento 
      La manutenzione della documentazione è fondamentale per aggiornare il documento con informazioni nuove e/o più accurate. Il processo di manutenzione prevede le seguenti fasi:
      - *Identificazione della modifica*: viene controllato il documento e viene individuata una possibile modifica;
      - *Valutazione dell'impatto*: viene valutato l'impatto migliorativo che può avere la modifica rispetto alla versione originale del documento;
      Tale discussione coinvolge tutto il team se necessario;
      - *Aggiornamento della documentazione*: una volta constatato che l'impatto migliorativo è positivo, viene applicata la modifica e il documento viene aggiornato confermando l'accuratezza delle informazioni e il l'allineamento delle modifiche con quanto già presente nel documento;
      - *Push della modifica*: viene creata una pull request nella repository#super[G] su GitHub per la nuova versione del documento da parte di chi ha operato la modifica;
      - *Verifica e validazione*: a supporto del processo di verifica, viene fatta partire un'azione automatizzata che esegue diversi script di controllo del testo, le cui metriche si possono trovare alla sezione 4.1.10. Se tale operazione ha esito positivo, se necessario, il documento viene posto ad ulteriore validazione con l'ente esterno a cui è destinato il documento. Se sia la verifica che la eventuale validazione hanno avuto esito positivo, le modifiche vengono pubblicate attraverso l'accettazione della pull request da parte del revisore. Se una delle due operazioni non ha esito positivo, la pull request viene respinta e l'autore delle modifiche è incaricato di apportare le correzioni necessarie e di ripetere i passaggi precedentemente descritti.

        ==== Procedure di revisione
        Il processo di revisione è un'attività fondamentale per verificare la conformità del lavoro svolto agli standard di qualità e ai requisiti#super[G] fondamentali. Questa fase prevede diverse operazioni: la revisione del codice#super[G], l'esecuzione dei test di accettazione e la risoluzione di eventuali discrepanze. 
        
          Il materiale da sottoporre a revisione viene definito e assegnato ai revisori tramite Jira. Una volta completata la revisione, le modifiche vengono proposte ai responsabili di quello specifico materiale e, se necessario, ricevono feedback anche dal resto del team. Infine, i risultati della revisione e le problematiche individuate vengono documentati attraverso un verbale interno.
          ===== Revisione tecnica
          // Revisione software
          La revisione tecnica serve a garantire che il software sia corretto, sicuro e conforme agli standard. Il codice#super[G] viene analizzato allo scopo di individuare errori, migliorare le prestazioni e assicurare la manutenibilità del sistema. Inoltre, si effettuano test per verificare la stabilità e il rispetto dei requisiti#super[G] tecnici. 
          
          ===== Revisione editoriale
          // Revisione documentazione
          La revisione editoriale ha lo scopo di migliorare la documentazione, rendendola chiara, coerente e precisa. Viene verificata la correttezza di grammatica, sintassi, uniformità stilistica e coerenza terminologica. I documenti vengono verificati per garantirne una struttura comprensibile e un linguaggio efficace.
          
          ===== Approvazione 
          // Workflow di approvazione
          Quando tutte le sezioni sono state verificate e il documento è pronto per la pubblicazione, si procede con l'approvazione da parte del responsabile#super[G], seguendo questi passaggi: 
          - Il verificatore#super[G] che ha esaminato l'ultima sezione completata avvia una Pull Request per effettuare il merge#super[G] dal branch#super[G] del documento al main;
          - Il responsabile#super[G] rilegge ed analizza l'intero documento;
          - Se rileva errori o problemi, il responsabile#super[G] segnala le correzioni necessarie e si procede con le modifiche secondo la procedura indicata.
          - Il registro delle modifiche viene aggiornato aggiungendo la versione di pubblicazione e contrassegnando lo stato del documento come "Approvato".
          - Per i verbali esterni, genera il file ".pdf" e lo invia al destinatario, che lo approva con una firma e lo restituisce per consentirne il caricamento da approvato nella repository#super[G].
          - Infine, il responsabile#super[G] approva la pull request e unisce il branch#super[G] del documento al main. Una volta effettuato il push sul main, bisognerà far partire manualmente l'azione di aggiornamento dei link del sito contenente la documentazione, così da poter rendere il documento approvato disponibile pubblicamente in formato .pdf.


    == Gestione della Configurazione
      === Scopo
      // Descrizione Gestione della Configurazione
      La Gestione della Configurazione descrive il versionamento dei vari documenti e la struttura della repository#super[G].
      Lo scopo di questo processo è garantire che ogni modifica sia tracciabile, controllata e approvata prima di essere integrata nel prodotto finale.
      
      /* Menzionare? 
      Il ciclo di vita del software che è obiettivo di questo progetto è strutturato nelle seguenti fasi:
          1. Inizializzazione e pianificazione
          2. Analisi dei requisiti#super[G]
          3. Progettazione
          4. Implementazione
          5. Verifica e validazione
          6. Rilascio
          */

      === Versionamento
      Il sistema di versionamento dei documenti seguirà la seguente semantica:

      #align(center, block[*MAJOR.MINOR.PATCH*])

      dove:

      -- *MAJOR*: il valore viene incrementato *solamente* alla pubblicazione finale, dopo approvazione interna e, per i verbali esterni, dopo anche l'approvazione esterna;

      -- *MINOR*: il valore viene incrementato *solamente* quando viene completato il processo di modifica e di verifica;

      -- *PATCH*: il valore viene incrementato *solamente* per modifiche di entità minore, quali correzioni ortografiche, di sintassi, ...
      
      === Sistema di Versionamento
      /*********** Quando stabiliremo il nostro sistema, il contenuto sarà del tipo:
      Ogni versione del documento è identificata da un codice di versione nel formato X.Y.Z dove:
      - X: il documento è stato approvato dal responsabile;
      - Y: la sezione aggiunta o modificata di un documento è stata verificata;
      - Z: è stata corretta velocemente qualche incoerenza o errore minore.
      ************/

      === Struttura repository#super[G]
      /******** Aggiungere il link alla nostra repo? ********/
      La repository#super[G] GitHub configurata ad Organizzazione è strutturato in diverse repository#super[G] in base alla finalità d'uso delle stesse. All'interno di esse è possibile trovare varie directories descritte dai file README.md presenti, tra cui:
    
      - *docs*: repository#super[G] contenente tutti i file .typ con la documentazione. In essa sono presenti delle Github Action che permettono il supporto alla verifica e l'auto compilazione dei file per essere caricati su Github Pages come .pdf;
    
      - *teamcodealchemists.github.io*:  repository#super[G] dove si trova il sito web con tutta la documentazione. All'interno di essa sono state definite delle GitHub Action che permettono di tenere sincronizzato il glossario nel sito con quello in formato .pdf della documentazione e di aggiornare automaticamente i link alla documentazione.

      /********* Prossimamente per l'RTB dovremmo anche avere la repo del POC  *******/

        ==== Organizzazione Repository#super[G]
          ===== Modello di branching
          È stato adottato il modello di branching *Git Flow* per la gestione delle repository#super[G]#super("G") di progetto. 
    
          Ciascuna tipologia di ramo risponde a uno scopo specifico all'interno del ciclo di vita del software, consentendo una gestione ordinata e controllata del processo di sviluppo.

          Ogni membro è a conoscenza delle _best practice_ per la creazione, l'unione e la cancellazione dei rami, così da promuovere una collaborazione efficace e strutturata all'interno del team.

          ===== Nomenclatura dei branch#super[G]
          È stata raccomandata, ove possibile, l'associazione dei branch#super[G] relativi a nuove funzionalità (ovvero i branch#super[G] _feature_) alle corrispondenti issue tracciate su *Jira*, adottando una convenzione di nomenclatura coerente _(ad esempio: *feature/Sprint-55-nome-feature*)_.

          ===== Branch#super[G] principali
          La struttura è basata sui rami principali _main_ e _develop_.

          Il ramo _main_ è destinato alle versioni stabili del progetto, verificate, testate e pronte per essere rilasciate. Ogni commit#super[G] su _main_ dovrebbe quindi rappresentare una versione stabile e testata del software e/o del documento in questione.

          Il ramo _develop_, invece, è destinato a raccogliere tutte le nuove funzionalità che saranno incluse nel prossimo rilascio. I commit#super[G] sul _develop_ possono contenere codice#super[G] che si trova ancora in fase di sviluppo e test.

          ===== Feature branch#super[G]
          I branch#super[G] secondari _feature_ sono dedicati allo sviluppo delle singole nuove funzionalità.
          Essi devono essere creati a partire dal ramo _develop_ e, una volta completati, deve essere effettuato il merge#super[G] in _develop_. 
    
          La convenzione di nomenclatura per questi branch#super[G] è consultabile alla sezione 4.2.4.1.2 ("Nomenclatura dei branch#super[G]").

      === GitHub Action
      // Azioni per controllare glossario e per indice gulpease, di cui si parla anche a 4.1.10
      // Attenderei di ultimarle per scrivere questa parte, in modo da essere più precisi

        === Procedure di commit#super[G] e merge#super[G]
          ==== Messaggi di commit#super[G] // formato e convenzioni
          ==== Dimensione dei commit#super[G] //linee guida
          ==== Pull/Merge#super[G] request // processo e approvazioni
          ==== Gestione dei conflitti // procedure e responsabilità

        === Baseline e rilasci
          ==== Definizione di baseline // cosa costituisce una baseline
          ==== Note di rilascio //contenuto e formato


    == Gestione della qualità
      === Scopo
      // Descrizione Gestione della Qualità
      La Gestione della Qualità di progetto assicura che i processi e il prodotto rispettino gli obiettivi e i requisiti#super[G] definiti. 
      Il team _Code Alchemists_, dunque, lavora per comprendere e gestire le aspettative del committente#super[G], definendo chiaramente i requisiti#super[G] di qualità e documentando tutte le procedure necessarie. 
      L'obiettivo è completare il progetto nel rispetto delle tempistiche e del budget, garantendo un prodotto finale che sia pienamente in linea le aspettative.

      Per mantenere elevati standard di qualità, adottiamo un approccio di miglioramento continuo, monitorando i progressi e utilizzando verifiche retrospettive per identificare opportunità di ottimizzazione. 
      Questo metodo ci permette di affinare costantemente i nostri processi e garantire risultati sempre più performanti.

      === Piano di Qualifica
      // Descrizione PdQ (che copre gli obiettivi di questo processo)
      Il Piano di Qualifica#super[G]; è un documento che definisce strategie, obiettivi e attività per garantire la qualità del prodotto e del processo di sviluppo. 
      Tali parametri vengono stabiliti in accordo ai requisiti#super[G] e alle aspettative del proponente e talvolta a discrezione del team sulla base delle valutazioni fatte nel corso di studi.
      Il suo scopo principale è assicurare che il prodotto finale rispetti gli standard di qualità definiti e che eventuali problemi vengano gestiti in modo efficace.
      Esso include:
      - *Requisiti#super[G] del committente#super[G]*: definizione chiara delle esigenze e delle aspettative.
      - *Metriche di analisi*: identificazione dei parametri per valutare la qualità.
      - *Controllo della qualità*: implementazione di sistemi per monitorare l'intero ciclo di vita del progetto.
      - *Test e verifiche*: pianificazione e documentazione dei controlli per garantire il corretto funzionamento del prodotto.
      - *Monitoraggio dello stato*: utilizzo di strumenti per visualizzare i progressi e identificare eventuali criticità.
      - *Retrospettive e miglioramenti*: discussione dei risultati, individuazione di azioni correttive e proposte di auto-miglioramento.

      === Testing
      // Vari tipi di test 
      Il Piano di Qualifica#super[G]; include gli obiettivi di qualità del processo e del prodotto, insieme alle metriche necessarie per valutarne l'accettabilità. 
      Per garantire la qualità del software, vengono eseguiti diversi tipi di test, suddivisi nelle seguenti categorie:

      - *Test di unità*: verifica il funzionamento delle singole unità di un programma, controllando funzioni e algoritmi.

      - *Test d'integrazione*: analizza il modo in cui le diverse componenti interagiscono tra loro, assicurandosi che funzionino correttamente anche in collaborazione.

      - *Test di regressione*: verifica che le nuove funzionalità siano operative e che quelle già integrate continuino a comportarsi come previsto.

      - *Test di sistema*: valuta il comportamento complessivo del software, verificando la conformità ai requisiti#super[G] definiti.

      - *Test di accettazione*: ultimo step di verifica, attuato dopo aver completato tutti i test precedenti e risolto eventuali problemi, per confermare il corretto funzionamento del prodotto.

      Alla fine del processo, viene redatto un resoconto contenente i risultati delle verifiche sulla qualità del processo, del prodotto e del software. 
      Grazie alle varie analisi metriche e alla costruzione di grafici, è possibile visualizzare l'evoluzione degli indicatori nel tempo. 
      Questi dati sono consultabili nella sezione Metriche (4.3.4), dove sono descritte le formule e i criteri di valutazione.

      === Metriche // Metriche del processo di Gestione Qualità   
        ==== Codifica
        /****DA STABILIRE ***/

        ==== Descrizione
        /****DA STABILIRE ***/
    

    == Verifica
      === Scopo
      // Descrizione Verifica
      Il processo di Verifica del software ha l'obiettivo di garantire che lo sviluppo sia eseguito correttamente e che il prodotto finale rispetti i requisiti#super[G] del cliente#super[G]. 
      Durante questa fase, vengono individuati eventuali difetti nelle prime fasi del ciclo di vita, riducendo così costi e tempi di correzione.

      La verifica assicura la conformità del prodotto ai requisiti#super[G] stabiliti nel Piano di Qualifica, garantendo completezza e correttezza attraverso evidenze misurabili. 
      Ogni produzione viene sottoposta a controlli prima di essere pubblicata nel repository#super[G] GitHub, con verificatori#super[G] indipendenti per evitare conflitti di interesse.

      Questo processo viene applicato continuamente, sia nella documentazione che nello sviluppo del software, con verifiche specifiche per garantire l’accuratezza delle attività svolte. 

      /******** // Potrebbe essere inserito
      === Stima e preventivazione
        ==== Tecniche di stima
        ==== Unità di misura
        ==== Processo di stima
        ==== Obiettivi di precisione
      *********/

      === Tipi di analisi
      La verifica verrà effettuata in maniera efficace adottando i metodi qui di seguito elencati.

      ==== Analisi Statica
      L'Analisi Statica è un processo di verifica che controlla il codice#super[G] e la documentazione prima della loro esecuzione, garantendo conformità ai requisiti#super[G] e prevenendo errori. 
      Non richiedendo l'esecuzione del software, permette di identificare problemi iniziali, migliorando la qualità complessiva.

      Si concentra su aspetti sintattici e strutturali, utilizzando tecniche manuali o automatizzate per verificare convenzioni, metriche e coerenza del sistema. 
      Può essere applicata anche ai documenti testuali, assicurando accuratezza e correttezza.

      Le verifiche possono avvenire tramite metodi formali, basati su prove matematiche, o tecniche di lettura, che aiutano a rilevare incongruenze prima che si manifestino in fase di esecuzione.

      Le tecniche di lettura sono due: Walkthrough ed Ispezione.

        ===== Walkthrough
        Il Walkthrough è una tecnica di verifica che consiste nell'analisi approfondita di un prodotto per individuare errori o incongruenze senza una ricerca mirata su un tipo specifico di difetto. 
        Questo metodo è particolarmente utile quando non si ha certezza sulla posizione dei problemi, permettendo un esame critico dell'intero oggetto in esame.

        Si tratta di una procedura collaborativa che si articola in diverse fasi:

        - *Pianificazione*: definizione delle modalità, risorse e tempistiche dell'attività.

        - *Lettura*: analisi dettagliata del prodotto per individuare errori e possibili miglioramenti.

        - *Discussione*: confronto tra verificatore#super[G] e l'autore del prodotto per valutare le problematiche riscontrate e proporre soluzioni.

        - *Correzione dei difetti*: attuazione delle modifiche concordate per garantire la qualità del prodotto.

        Il walkthrough permette di identificare problemi, migliorare la qualità e favorire una comprensione più approfondita del prodotto. 

        ===== Ispezione
        L'Ispezione è una tecnica di verifica mirata che permette di identificare e rimuovere errori e difetti, basandosi su un'idea preliminare delle possibili problematiche. 
        A differenza del walkthrough, questo metodo utilizza liste di controllo per eseguire verifiche specifiche, evitando di analizzare l'intero prodotto.

        L'Ispezione si sviluppa attraverso le seguenti fasi:

        - *Pianificazione*: definizione di modalità, risorse e tempistiche dell'attività.

        - *Creazione della lista di controllo*: individuazione degli aspetti critici da verificare, con aggiornamenti progressivi in base alla frequenza di determinati errori.

        - *Lettura mirata*: il verificatore#super[G] esamina il prodotto seguendo la lista di controllo, identificando eventuali incongruenze e suggerendo miglioramenti.

        - *Correzione dei difetti*: l'autore implementa le modifiche necessarie per garantire la qualità del prodotto.

        Grazie alla sua maggiore efficienza rispetto al walkthrough, l'Ispezione consente una verifica più rapida e ottimizzata, risultando talvolta automatizzabile. 
        Sebbene non sia sempre esaustiva, soprattutto nelle fasi iniziali di un progetto, offre un metodo strutturato per individuare errori e perfezionare la qualità complessiva del prodotto.

      ==== Analisi dinamica
      L'Analisi dinamica è una metodologia di verifica che prevede l'esecuzione del software per valutarne il comportamento, le performance e la correttezza. 
      A differenza dell'Analisi statica, che si concentra su aspetti strutturali e sintattici, l'analisi dinamica permette di identificare errori direttamente durante l'esecuzione, rilevando failure e correggendo i fault responsabili di comportamenti inattesi.
      
      Questa attività si basa su test ripetibili e automatizzabili, garantendo che le correzioni applicate vengano verificate con nuove esecuzioni. 
      
      Le principali categorie di test utilizzate nell'analisi dinamica includono:
      - *Test di unità*: verifica il funzionamento di singole componenti.
      - *Test d'integrazione*: analizza le interazioni tra i moduli.
      - *Test di sistema*: valuta la conformità del software ai requisiti#super[G].
      - *Test di regressione*: controlla che le modifiche non introducano nuovi errori.

      Per garantire un'analisi efficace, è fondamentale stabilire e regolamentare le condizioni dell'ambiente di esecuzione dei test.

      ===== Test di unità
      I test di unità sono fondamentali per verificare il corretto funzionamento delle singole unità software, garantendo che ogni componente operi come previsto. 
      Vengono formulati dai verificatori#super[G] durante la fase di progettazione di dettaglio, in conformità alle specifiche di ciascuna unità. 

      Durante l'esecuzione dei test, è possibile l'impiego di stub e driver, strumenti che simulano componenti non ancora disponibili, permettendo di testare le unità in isolamento. 
      Questo approccio risulta essenziale nelle fasi iniziali dello sviluppo, quando il sistema è ancora incompleto.

      I test di unità si suddividono in due categorie principali:

      - *Test funzionali* (black box): verificano il corretto comportamento dell'unità in base agli input e output attesi, senza analizzare la logica interna.

      - *Test strutturali* (white box): esaminano i percorsi logici interni al codice#super[G], verificando il corretto funzionamento delle sue istruzioni.

      Per garantire un processo efficiente e sistematico, i verificatori#super[G] sfruttano strumenti di automazione, ottimizzando la verifica e assicurando che ogni unità software rispetti le specifiche stabilite.

      ===== Test di integrazione
      I test di integrazione verificano il corretto funzionamento delle interazioni tra le diverse unità di un sistema software, assicurandosi che i componenti già testati singolarmente collaborino in modo adeguato. 
      
      Questi test vengono definiti dai verificatori#super[G] nella fase di progettazione architetturale, con l'obiettivo di rilevare difetti di progettazione, errori derivanti da unit testing, incompatibilità nelle interfacce e problemi di integrazione con altre applicazioni.

      Esistono due strategie principali per l'integrazione:
      -  *Top-down*: si parte dalle componenti con maggior numero di dipendenze d'uso e maggiore responsabilità verso l'esterno. Questo metodo permette di integrare per prime le funzionalità visibili all'utente, ma richiede l'uso di numerosi stub.
      
      - *Bottom-up*: si parte dalle componenti con minori dipendenze e maggiore utilità interna. Questo approccio riduce l'uso di stub ma può ritardare la disponibilità delle funzionalità accessibili agli utenti.

      L'integrazione viene realizzata in modo incrementale, ampliando progressivamente il raggio d'azione dei test per garantire la stabilità del sistema. Questo processo è essenziale per evitare incompatibilità e incongruenze tra i moduli, assicurando un funzionamento fluido e coerente.
      
      ===== Test di sistema
      I test di sistema sono una fase cruciale della verifica del software, mirata a valutare il comportamento complessivo dell'applicazione per garantire che soddisfi tutti i requisiti#super[G] definiti nella fase di analisi dei requisiti#super[G]. 
      Questi test vengono eseguiti dopo il completamento dei test di unità e dei test di integrazione, ma prima del collaudo finale con il committente#super[G].

      Considerati test funzionali (black-box), i test di sistema non richiedono la conoscenza della logica interna del software, ma si concentrano sulla validazione dell'intero sistema in condizioni realistiche, simulando il più possibile l'ambiente di produzione. 
      Il loro obiettivo è verificare che tutte le componenti siano correttamente integrate e che il software funzioni come previsto.

      Attraverso questi test, si controlla la correttezza e l'efficacia del sistema rispetto ai requisiti#super[G] stabiliti, assicurando che l'applicazione sia conforme alle specifiche e pronta per l'utilizzo finale.

      ===== Test di regressione
      I test di regressione sono una metodologia di verifica essenziale per garantire che le modifiche apportate al software non introducano nuovi errori o alterino il corretto funzionamento delle funzionalità già integrate. 
      Durante il processo di sviluppo, può accadere che un test evidenzi un problema: in questi casi, è necessario analizzarlo, sviluppare una soluzione, implementarla e verificare che il difetto sia stato risolto eseguendo nuovamente il test.
      
      Per evitare regressioni, ovvero il ripresentarsi di problemi precedentemente risolti, non ci si limita a testare esclusivamente la parte modificata, ma si eseguono tutti i test già implementati, tra cui test di unità, di integrazione e di sistema. 
      Questo approccio garantisce l'integrità#super[G] del software e previene anomalie derivanti da aggiornamenti o nuove funzionalità.

      Grazie ai test di regressione, è possibile mantenere un alto livello di affidabilità del prodotto, assicurando che ogni miglioramento apportato non comprometta le prestazioni e la stabilità dell'intero sistema.

      === Metriche
      // Metriche del processo di Verifica

    == Validazione
      === Scopo
      // Descrizione Validazione
      La Validazione del software è il processo di valutazione finalizzato a garantire che il prodotto soddisfi i requisiti#super[G] predefiniti e le aspettative degli utenti e del committente#super[G]. 
      Un esito positivo della Validazione conferma che il software è allineato alle specifiche concordate e pronto per l'utilizzo.

      Questo processo consente di:
      - *Identificare errori* eventualmente trascurati nella fase di verifica.

      - *Verificare il rispetto dei requisiti#super[G]* stabiliti nel documento di Analisi dei Requisiti#super[G].

      - *Migliorare la qualità* e *il valore* del prodotto finale.

      La Validazione risponde alla domanda _“Ho realizzato il giusto sistema?”_, assicurando che il software sviluppato soddisfi le esigenze del committente#super[G]. 
      Si svolge alla fine dello sviluppo, rappresentando una fase fondamentale per confermare la correttezza del prodotto e la sua conformità agli obiettivi stabiliti.

  = Processi Organizzativi
    == Gestione dei processi
      === Scopo
      // Descrizione processi organizzativi
      === Pianificazione delle risorse umane
        ==== Ruoli e Responsabilità
        I ruoli all'interno del team sono suddivisi tra i seguenti:
        - Responsabile#super[G]
        - Amministratore#super[G]
        - Analista#super[G]
        - Progettista#super[G]
        - Programmatore#super[G]
        - Verificatore#super[G]
  
        Le responsabilità dei ruoli qui elencati sono consultabili nel Glossario.

        ==== Criteri rotazione ed assegnazione ruoli
          La prima assegnazione dei ruoli riflette, ove possibile, le preferenze personali dei membri del gruppo. In seguito, la rotazione dei ruoli avviene in maniera concordata con il resto del gruppo, tipicamente all'inizio di un nuovo Sprint, ma anche in base alle necessità del _backlog_#super[G].
  
          Infatti, una gestione più flessibile dei ruoli permette il coinvolgimento di tutto il team verso l'obiettivo di terminare il prima possibile il lavoro da svolgere, non concentrandosi esclusivamente sui task specifici assegnati al proprio ruolo. In questo modo si evitano, inoltre, situazioni in cui il passaggio da un ruolo all'altro è drastico, il che porterebbe inevitabilmente ad un aumento del debito tecnico.
          
          Viene perciò preferita una comunicazione frequente tra i membri, in modo che tutti abbiano una visione costantemente aggiornata del punto in cui ci si trova con il lavoro.
          
          La rotazione dei ruoli avviene tipicamente all'inizio di ogni Sprint, ovvero ogni due settimane.
          Questo, però, non significa che tra uno Sprint e l'altro ogni singolo membro del team debba assumere un ruolo diverso nello Sprint che sta per iniziare rispetto a quello assunto durante l'ultimo Sprint.
          
          Per favorire il cambio dei ruoli ad ogni Sprint e facilitare la transizione, infatti, si è deciso di mantenere almeno un componente di un gruppo di ruoli nello stesso ruolo come “Mentore#super[G]”. In questo modo, i mentori#super[G] potranno aggiornare e supportare i nuovi arrivati nel suddetto ruolo, permettendo allo sviluppo di continuare in modo più fluido e coerente con quanto realizzato nello Sprint precedente.

          I criteri di rotazione dei ruoli devono inoltre consentire una suddivisione bilanciata dei ruoli tra i membri sull'intero arco del progetto, permettendo quindi una certa flessibilità sul breve periodo.

        ==== Allocazione risorse umane
        // In x fase di sviluppo sono richiesti più persone nel ruolo di Y...
        Nella fase di assegnazione dei ruoli, è necessario fare riferimento alla fase di sviluppo in cui ci si trova.
        Infatti, in base ai progressi svolti fino a tal momento, vengono decise quali sono le figure richieste per il successivo Sprint#super[G];.

        Ciò appare evidente, ad esempio, nelle fasi iniziali di sviluppo, nelle quali sono necessari maggiormente gli Analisti#super[G];, o nelle fasi più avanzate dove sono richieste in maggior numero figure che ricoprano il ruolo di Programmatore#super[G]; e di Verificatore#super[G].

        ==== Escalation path
        Durante l'intera fase di sviluppo, potrebbero capitare di venir assegnati alcuni ruoli a più membri del team per lo Sprint corrente (ad esempio, il ruolo di Analista#super[G] viene assegnato a 4 persone durante l'attuale Sprint poiché è una figura molto richiesta in quella determinata fase di sviluppo). 
      
        Al fine di coordinare meglio il flusso di lavoro, si è deciso, ad ogni Sprint, di scegliere tra questi membri un “sottoresponsabile”, il quale comunicherà periodicamente e frequentemente con i sottoresponsabili delle altre categorie di ruolo e con il responsabile#super[G] di turno per tenerli aggiornati sullo stato di avanzamento delle attività dello Sprint.
      
        Inoltre, i sottoresponsabili delle categorie di ruolo sono tenuti a mantenere una comunicazione costante con i membri del loro sottogruppo, assicurandosi che ogni task sia eseguita secondo le linee guida stabilite e che eventuali dubbi vengano chiariti prontamente. 
        Questo approccio favorisce una gestione efficiente delle attività e una rapida risoluzione delle problematiche interne.
        La figura del sottoresponsabile, infatti, viene in aiuto al responsabile#super[G] facendo in modo che non debba rimanere in comunicazione con tutto il gruppo, ma solamente con i sottoresponsabili del loro determinato ruolo.

        ==== Orari di disponibilità
        // Documento su Google Sheets
        All'interno della cartella Drive del team è stato creato il documento *"Orari disponibilità"* su Google Sheets nel quale, settimanalmente, i membri del gruppo aggiornano la loro corrispettiva riga con gli orari di disponibilità nel corso della settimana entrante.
        Tale documento permette di organizzare riunioni e sessioni di lavoro in base alle disponibilità di tutti, evitando sovrapposizioni, e permette l'accesso immediato a quelle informazioni.
        
        ==== Bilanciamento del carico di lavoro
        // Come vengono bilanciati i carichi di lavoro
        Il carico di lavoro assegnato ad ogni membro del team viene deciso in base alla complessità e al livello di priorità di completamento delle determinate task da assegnare.
        Nell'assegnare le task ad ogni Sprint si cerca il più possibile di non sfociare nel sovraccarico. In caso di qualsiasi imprevisti o difficoltà, ogni membro potrà comunicare tale disagio al Responsabile#super[G] in carica.

      === Sprint
        ==== Durata degli Sprint
        Ogni Sprint ha tendenzialmente durata di due settimane. Questa durata permette al team di concentrarsi su obiettivi concreti per un lasso di tempo sufficientemente ampio e di valutare i progressi in modo regolare, così da permettere un equilibrio tra flessibilità e stabilità.

        ==== Pianificazione dello Sprint
        Pianificare gli Sprint implica definire gli obiettivi e le attività da completare durante lo Sprint. Durante questa fase, vengono identificati i requisiti#super[G], assegnate le responsabilità e stabilite le priorità. Una buona pianificazione è essenziale per il successo dello Sprint.

        ==== Review dello Sprint
        La review dello Sprint è una riunione che si tiene alla fine di ogni Sprint secondo quanto descritto al punto 5.2.3. Durante tale riunione, il team discute a grandi linee su ciò a cui si è lavorato e stabilisce il materiale da presentare agli stakeholder, i quali daranno dei feedback su quanto svolto così da identificare eventuali miglioramenti per il prossimo Sprint.
    
        ==== Retrospettiva dello Sprint
        La retrospettiva dello Sprint è una fase in cui il team analizza nel dettaglio il proprio lavoro realizzato durante lo Sprint. L'obiettivo di questa fase è di identificare ciò che ha funzionato bene e quel che può essere migliorato, promuovendo un continuo miglioramento della qualità del prodotto in sviluppo.

    == Procedure di comunicazione   
      === Comunicazioni interne 
      /**** Migliorabile: Con che strumenti comunichiamo tra di noi, in che momenti etc... ***/
      Durante l'intero ciclo di sviluppo del progetto, la comunicazione tra i membri del team è facilitata attraverso i canali ufficiali Discord e Telegram, scelti per la loro efficienza e versatilità.

      -	_Discord_ è stato selezionato per la sua praticità d'uso e per la possibilità di creare canali dedicati per ogni ruolo specifico, quali analista#super[G], programmatore#super[G] e verificatore#super[G]. Questa suddivisione assicura che ogni ruolo possa discutere direttamente delle proprie attività e delle difficoltà incontrate, facilitando il coordinamento e l'implementazione delle soluzioni.

      -	_Telegram_ è stato scelto per la sua semplicità e immediatezza nella comunicazione. Esso consente infatti di inviare messaggi rapidi e di condividere documenti e aggiornamenti in tempo reale. In questo modo, è possibile garantire che tutte le informazioni rilevanti siano facilmente accessibili a tutti i membri del team in qualsiasi momento.

      L'uso combinato di Discord e Telegram risulta dunque più che valido nel coprire tutte le esigenze comunicative nel corso delle varie fasi di sviluppo, assicurando che ogni membro del team possa interagire efficacemente e contribuire al raggiungimento degli obiettivi comuni.

      === Comunicazioni esterne
      // Con che strumenti comunichiamo con proponente e committente#super[G], con che cadenza, per cosa..
      Durante l'intero ciclo di sviluppo del progetto, la comunicazione esterna (tra i membri del gruppo e il committente#super[G]/il proponente) è a carico del Responsabile#super[G] di turno.
      Essa avviene attraverso diversi canali di comunicazione, tra cui:
      - *Zoom*: per comunicare in modalità sincrona con il committente#super[G];
      - *Gmail*: per comunicare in modalità asincrona con il committente#super[G] e il proponente. Per comunicare con gli enti terzi, infatti, viene utilizzata l’indirizzo mail ufficiale del gruppo;
      - *Microsoft Teams*: per comunicare in modalità sincrona con il proponente.

      === Riunioni interne
      // In che modo si svolgono le riunioni tra di noi, come sono organizzate...
      Le riunioni interne possono essere indette durante vari momenti strategici dello sviluppo del progetto, soprattutto tra uno Sprint e l'altro. 
  
      Difatti, al termine di ogni Sprint, tutti i membri del team si riuniscono per discutere di quanto svolto nel corso dello Sprint appena concluso. 
      Durante tali incontri, vengono rese note eventuali difficoltà emerse durante l'esecuzione di determinate task e si affrontano possibili soluzioni alle problematiche riscontrate. 
      Inoltre, vengono elencate le prossime task da svolgere per garantire la continuità del lavoro. 
  
      È in questa occasione che viene annunciata la rotazione dei ruoli per il prossimo Sprint e la conseguente assegnazione delle varie task a ogni membro a seconda dello specifico ruolo che ricopre.
  
      Durante l'intera fase di sviluppo, lì dove necessario, possono essere organizzate brevi riunioni interne tra più sottogruppi al fine di chiarire eventuali dubbi riguardo alle attività svolte nei precedenti Sprint.

      === Riunioni esterne
      // In che modo si svolgono le riunioni con proponente e committente#super[G], come sono organizzate...
      Le riunioni esterne con il proponente vengono svolte tendenzialmente due volte al mese, previo accordo con l'azienda tramite il canale di comunicazione Gmail.
      Esse vengono saranno richieste dal gruppo in caso di necessità di opinioni esperte e/o chiarimenti su questioni tecniche e per avere una verifica il corretto progresso del progetto didattico.

      Il gruppo si impegna a presenziare in presenza in maniera più assidua possibile agli incontri con il proponente. 
      Nel caso in cui, per qualunque motivazione, non sia possibile partecipare in presenza alla riunione, si fa uso del canale di comunicazione online Microsoft Teams.
      Al termine di ogni riunione viene redatto un verbale esterno al fine di documentare l'incontro, il quale dovrà ricevere l'approvazione dell'azienda stessa.

      === Reportistica
      A seguito di ogni riunione, la stesura del corrispondente verbale viene assegnato, se disponibile, a uno dei verificatori#super[G]. In questo modo, un altro verificatore#super[G] avrà il compito di effettuare una cross-verifica del verbale redatto, assicurando così che tutte le informazioni siano corrette e che eventuali errori siano prontamente individuati e corretti.
    
      Nel caso in cui i verificatori#super[G] siano già impegnati in altre attività di priorità più alta, la stesura del verbale viene assegnata a un altro membro del team. Questo approccio flessibile garantisce che la documentazione delle riunioni non subisca ritardi e che ogni riunione sia adeguatamente registrata. Il membro del team incaricato di redigere il verbale è responsabile#super[G] di seguire le linee guida stabilite per la stesura, assicurando che il documento finale sia più chiaro, conciso e completo possibile.
    
      La verifica dello stesso sarà assegnata a uno dei verificatori#super[G], che avrà cura di controllare, ed eventualmente correggere, quanto riportato nel verbale non appena gli sarà possibile.
    
      Questo processo strutturato e collaborativo assicura che i verbali interni siano sempre accurati e tempestivi, facilitando la comunicazione e la trasparenza all'interno del team.
    
    == Gestione dell'infrastruttura
      === Scopo
        // A cosa servono gli elementi dell'infrastruttura organizzativa
        Il processo di Infrastruttura è responsabile della creazione, gestione e mantenimento dei componenti hardware e software necessari per supportare tutti gli altri processi. 
        Include strumenti organizzativi che facilitano comunicazione, coordinamento e pianificazione, permettendo al team di operare in modo efficace ed efficiente.

        Questo processo documenta l’infrastruttura utilizzata, definendo le modalità di implementazione e manutenzione. 
        Inoltre, garantisce la gestione ottimale delle risorse, assicurando che l’infrastruttura sia adeguata a tutte le fasi del ciclo di vita del software.

      === Strumenti
        ==== GitHub
        // Hosting repo, tutte le funzioni e i servizi#super[G] che offre...
        GitHub è la piattaforma che utilizziamo per il versionamento e l'hosting dei nostri repository#super[G] di #super[G]. 
        Ci fornisce funzionalità avanzate per la gestione collaborativa del codice#super[G], tra cui pull request, issue tracking, continuous integration e automazione dei flussi di lavoro.
        ==== GitHub Pages
        // Per la presentazione del repository#super[G]
        GitHub Pages ci permette di pubblicare facilmente una versione web del nostro repository#super[G], utile per la documentazione, la presentazione di progetti o la condivisione di informazioni con il team e i collaboratori esterni.
        ==== GitHub Flow
        // Come metodo di branching
        Adottiamo GitHub Flow come metodo di branching per garantire un flusso di sviluppo agile e ben strutturato. Utilizziamo il modello basato su feature branches#super[G] e pull request per integrare le modifiche nel ramo principale in modo controllato e sicuro.
        ==== Jira
        // Lo usiamo come Issue Tracking System per il coordinamento del lavoro...   Menzionare le milestone
        Jira è il nostro sistema di issue tracking e gestione dei task. Ci consente di organizzare e coordinare il lavoro, monitorare le milestone e garantire la visibilità sull'avanzamento delle attività del team.

          ===== Creazione task
          // I vari parametri accettati che usiamo su Jira nel creare una task
          Quando creiamo un task su Jira, utilizziamo specifici parametri, tra cui la priorità, la descrizione dettagliata, la categoria e il collegamento ad altri task o milestone correlati.

          ===== Assegnazione task
          // A chi viene assegnata una task (spieghiamo come viene scelto magari il Sottoresponsabile analista#super[G] che rappresenta l'intero gruppo di analisti)
          L'assegnazione di un task avviene in base al suo ambito di riferimento e alla sua complessità. 
          Inoltre, si applica la convenzione intera per cui, ad esempio, il Sottoresponsabile Analista#super[G], che rappresenta l'intero gruppo di analisti#super[G], è incaricato di fare da portavoce per tutti gli analisti#super[G] se stanno lavorando contemporaneamente a quella determinata task.

        /*
          ===== Automazione task-branch#super[G]
          // Automazione Git-Jira
          Implementiamo un sistema di automazione tra Git e Jira per facilitare la creazione e il collegamento tra i task e i branch#super[G] di sviluppo, garantendo una gestione più efficiente e tracciabile dello stato di avanzamento del progetto.

        
          ===== Automazione release
          // Automazione pubblicazione documenti pronti nel sito web
          Abbiamo automatizzato la pubblicazione dei documenti completati e pronti per il rilascio nel nostro sito web, riducendo l'onere manuale e garantendo che le informazioni siano sempre aggiornate.
        */

        ==== Discord
        // Per le comunicazioni vocali e le riunioni interne. Suddivisione vari canali per ruoli.
        Discord è il nostro strumento principale per le comunicazioni vocali e le riunioni interne. 
        La suddivisione dei canali per ruoli ci permette di mantenere l'organizzazione e facilitare la discussione tra gruppi con competenze specifiche.
        ==== Telegram
        // Per le comunicazioni testuali più rapide, con tutti i membri del gruppo o singolarmente
        Telegram viene utilizzato per comunicazioni testuali rapide, sia tra singoli membri del team che all'interno di gruppi più ampi. 
        È utile per scambi veloci e aggiornamenti istantanei.
        ==== Typst
        // Piattaforma per la stesura della documentazione
        Typst è la piattaforma che usiamo per la stesura della documentazione ufficiale, offrendo strumenti avanzati per la formattazione e la gestione dei contenuti tecnici.
        ==== Google Drive
        // Directory per i documenti "informali" e materiale per la formazione individuale
        Google Drive funge da archivio per documenti informali e materiali destinati alla formazione individuale, permettendo un facile accesso e condivisione all'interno del team.
        ==== Google Calendar
        // Gestione appuntamenti / riunioni
        Google Calendar ci supporta nella gestione degli appuntamenti e delle riunioni, facilitando il coordinamento e la pianificazione delle attività comuni.
        ==== Google Sheets
        // Usato per assegnamento ruoli, orari disponibilità...
        Utilizziamo Google Sheets per la definizione dei ruoli, la pianificazione degli orari di disponibilità e la gestione organizzativa delle attività operative del team.
        ==== Gmail
        // Nostro indirizzo email per comunicare con proponente e committente#super[G]
        Il nostro indirizzo email Gmail è il canale ufficiale attraverso cui comunichiamo con il proponente e il committente#super[G], garantendo un flusso di comunicazione formale e tracciabile.
        ==== Draw.io
        // Grafici / schemi vari
        Draw.io è lo strumento che usiamo per creare grafici e schemi visivi, essenziali per la rappresentazione di concetti e processi operativi in modo chiaro e strutturato.

    == Miglioramento
    // Descrizione del processo di miglioramento
    Il processo di miglioramento ha il compito di definire, misurare e controllare l'evoluzione della qualità durante tutto il ciclo di vita del software.
      === Creazione del processo
      // Il processo viene creato seguendo gli standard e il ciclo di vita del SW, essendo documentato e verificato...
      Il team implementa una serie di processi basati sullo Standard ISO/IEC 12207:1997, documentandone l'applicazione e, ove possibile, istituendo strumenti di controllo per monitorare e perfezionare il processo nel tempo.
      === Valutazione del processo
      // Revisione del processo ed eventuale pianificazione di miglioramento
      Attraverso revisioni interne, revisioni congiunte e procedure di valutazione, il team analizza l'efficacia dei processi adottati. 
      I risultati vengono archiviati nella documentazione e nei report generati da Jira, determinando le necessità di miglioramento. 
      Per garantire continuità ed efficienza, il team programma revisioni periodiche per valutare l'adeguatezza dei processi.
      === Attuazione miglioramento del processo
      // Applicazione miglioramento, tutto documentato evidenziando i vantaggi dati dal miglioramento
      Sulla base delle valutazioni effettuate, il team introduce le modifiche necessarie ai processi, aggiornando la documentazione per riflettere i miglioramenti apportati e mettendo in evidenza punti di forza e criticità.

    == Formazione
      === Scopo
      // Motivi per cui è importante assicurare che tutti i membri siano adeguatamente preparati
      Il processo di formazione definisce le modalità con cui i membri del gruppo acquisiscono le competenze necessarie per la produzione della documentazione e lo sviluppo del prodotto software.
      === Metodo di Formazione
      // In che modo viene assicurato l'accesso alle risorse per la formazione dei membri (individualmente o in gruppo)
      Ogni componente ha la libertà di scegliere il metodo di apprendimento più adatto, privilegiando un approccio learning by doing. 
      Questo favorisce una visione più ampia sulle tecnologie utilizzate, aumentando la consapevolezza del team e migliorando le scelte implementative.
      
      Per ridurre eventuali discrepanze di conoscenza, se necessario, vengono organizzati dei brevi incontri in cui i membri più esperti condividono le loro competenze con il resto del gruppo. 
      
      === Materiale formativo
      // Per ogni categoria, tipo architettura a microservizi#super[G], NATS, Docker ... indicare che materiale è messo a disposizione
      Il materiale formativo viene archiviato all'interno della cartella condivisa su Google Drive, aggiornata periodicamente con il contributo di tutti i membri del team.

      /************ DA COMPLETARE CON LINK PER OGNI TECNOLOGIA *****/
    

 = Standard di qualità
  == ISO/IEC 12207:1995
  Lo standard ISO/IEC 12207:1995 stabilisce un modello per il ciclo di vita del software, suddividendo i processi in primari, di supporto e organizzativi. 
  
  Ogni processo è articolato in attività e task specifici per garantire una gestione strutturata del progetto.

    === Processi primari
    I processi primari riguardano le parti principali coinvolte nello sviluppo, operatività e manutenzione del software: acquirente, fornitore, sviluppatore, operatore e manutentore.

    - *Acquisizione*: comprende le attività necessarie per la richiesta, il controllo e l'accettazione di un prodotto o servizio#super[G] software.

    - *Fornitura*: riguarda la gestione della fornitura del prodotto, dalla pianificazione alla consegna.

    - *Sviluppo*: include tutte le fasi di progettazione e implementazione del software.

    - *Operatività*: gestisce il funzionamento del sistema per gli utenti.

    - *Manutenzione*: garantisce aggiornamenti e correzioni per mantenere il software operativo.

    === Processi di supporto
    I processi di supporto affiancano i processi primari, contribuendo alla qualità del prodotto.

    - *Documentazione*: registra le informazioni prodotte in ogni fase del progetto.

    - *Gestione della Configurazione*: controlla le modifiche e la consistenza degli elementi del sistema.

    - *Accertamento della qualità*: verifica la conformità dei processi e dei prodotti.

    - *Verifica e validazione*: assicurano che il software soddisfi i requisiti#super[G] e sia utilizzabile.

    - *Revisioni*: valutano lo stato del progetto e la conformità agli standard.

    - *Risoluzione dei problemi*: analizza e gestisce le problematiche emerse nel ciclo di vita.

    === Processi organizzativi
    I processi organizzativi definiscono la struttura e migliorano i processi aziendali nel tempo.

    - *Gestione organizzativa*: pianifica e controlla i processi generali.

    - *Infrastruttura*: costruisce e mantiene le risorse necessarie.

    - *Miglioramento*: valuta e ottimizza i processi esistenti.

    - *Formazione*: garantisce l'aggiornamento delle competenze del team.


    == Standard ISO/IEC 9126
    Lo standard ISO/IEC 9126 stabilisce un modello di qualità del software, consentendo di gestire, monitorare e migliorare ogni fase del ciclo di vita del software, garantendo un approccio efficace e sistematico.
    Tale modello è suddiviso in sei caratteristiche fondamentali:
    - *Funzionalità*;
    - *Affidabilità*;
    - *Efficienza*
    - *Usabilità*;
    - *Manutenibilità*;
    - *Portabilità*.

      === Funzionalità
      La Funzionalità misura l'adeguatezza del software rispetto ai requisiti#super[G] da soddisfare. 
      Un sistema funzionale garantisce che ogni componente sia adeguato alle esigenze del proponente e degli utenti.

      Gli aspetti fondamentali della Funzionalità includono:

      - *Adeguatezza*: verifica che il software fornisca le funzioni necessarie per il suo scopo.

      - *Accuratezza*: garantisce che i risultati siano corretti e conformi alle aspettative.

      - *Interoperabilità*: assicura che il software possa interagire con altri sistemi specificati.

      - *Conformità*: garantisce il rispetto di standard e convenzioni del settore.

      - *Sicurezza*: protegge i dati degli utenti, prevenendo accessi non autorizzati.

      === Affidabilità
      L'Affidabilità aiuta la capacità del sistema a funzionare correttamente mantenendo prestazioni stabili nel tempo, anche sotto carichi intensi. 
      Un sistema affidabile deve garantire un funzionamento corretto, evitando errori e guasti che potrebbero comprometterne l'operatività.

      I principali aspetti valutati nell'Affidabilità sono:

      - *Maturità*: capacità di ridurre il rischio di malfunzionamenti ed errori.

      - *Tolleranza agli errori*: mantenimento delle prestazioni anche in presenza di problemi.

      - *Recuperabilità*: possibilità di ripristinare il corretto funzionamento dopo un guasto.

      - *Aderenza*: conformità agli standard di affidabilità stabiliti per il sistema.

      === Efficienza
      L'Efficienza di un software misura la capacità di fornire prestazioni ottimali in relazione alle risorse impiegate. 
      Un sistema efficiente garantisce tempi di risposta rapidi e un utilizzo proporzionale delle risorse, senza sprechi o sovraccarichi inutili.

      I principali aspetti valutati per l'Efficienza includono:

      - *Comportamento temporale*: verifica che il software risponda entro tempi adeguati.

      - *Utilizzo delle risorse*: ottimizza il consumo di memoria, CPU e altre risorse in rapporto all'uso.

      - *Conformità*: garantisce l'aderenza agli standard di efficienza stabiliti nel settore.
      
      === Usabilità
      L'Usabilità misura la capacità di un software di essere comprensibile, facile da apprendere e intuitivo nell'utilizzo. 
      Un sistema ben progettato deve permettere agli utenti di interagire senza difficoltà, migliorando l'esperienza complessiva.

      Le principali caratteristiche dell'Usabilità includono:

      - *Comprensibilità*: facilita la comprensione delle funzionalità e dell'interfaccia.

      - *Apprendibilità*: consente un apprendimento rapido e intuitivo del sistema.

      - *Operabilità*: garantisce un utilizzo semplice e fluido, riducendo complessità.

      - *Attrattività*: rende l'interazione piacevole e soddisfacente per gli utenti.

      - *Conformità*: assicura l'adesione agli standard e alle convenzioni di usabilità.

      === Manutenibilità
      La Manutenibilità di un software misura la facilità con cui può essere modificato, aggiornato e testato, garantendo la sua evoluzione e adattabilità a nuovi requisiti#super[G] o ambienti. 
      Un software ben progettato deve consentire interventi rapidi ed efficaci per la correzione di errori e l'implementazione di miglioramenti.

      I principali aspetti valutati nella Manutenibilità sono:

      - *Analizzabilità*: semplifica la diagnosi di problemi, facilitando l'ispezione del codice#super[G].

      - *Modificabilità*: permette di apportare modifiche con minima complessità.

      - *Stabilità*: assicura che il sistema mantenga un comportamento coerente dopo aggiornamenti.

      - *Testabilità*: garantisce che il software sia facilmente verificabile, riducendo i tempi di debug.
     
      === Portabilità
      La Portabilità analizza la sua capacità di essere trasferito e adattato a diversi ambienti di lavoro, garantendo compatibilità con sistemi e tecnologie differenti. 
      Un software altamente portabile offre maggiore flessibilità e facilità d'uso in contesti variabili.

      I principali aspetti valutati nella Portabilità includono:

      - *Adattabilità*: consente al software di funzionare correttamente in diversi ambienti operativi.

      - *Installabilità*: facilita la configurazione e l'implementazione su nuove piattaforme.

      - *Coesistenza*: assicura che il software possa operare correttamente insieme ad altri sistemi.

      - *Sostituibilità*: permette di rimpiazzare un prodotto esistente con il nuovo software in modo semplice.

      - *Conformità*: garantisce l’aderenza agli standard e alle convenzioni sulla portabilità.
