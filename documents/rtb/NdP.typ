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
#let versione = "0.3.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.4.0],
  [09/05/2025],
  [R. Zangla],
  [-],
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

  == Scopo del prodotto#super[G]
  Il prodotto#super[G], detto anche software, oggetto del presente progetto, consiste nella realizzazione di un sistema distribuito e scalabile per la gestione ottimale (intesa come minimizzazione dei tempi di risposta e di ottimizzazione della distribuzione delle scorte#super[G]) di una rete di magazzini, singolarmente autonomi, in modo da favorire l'interoperabilità tra di essi e centralizzare le informazioni in maniera efficiente e sicura. // Inserire riferimento al capitolato#super[G]?

  Il presente documento è redatto secondo lo standard _ISO/IEC 12207:1995_, che identifica tre tipologie di processi: //Magari descrivere sintatticamente di cosa trattano?
  - Processi primari
  - Processi organizzativi
  - Processi di supporto  

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
  Il processo di fornitura è l'insieme di attività che regolano la collaborazione tra fornitore e cliente per la creazione e consegna di un prodotto software. 
  
  Attraverso l'analisi dei requisiti, la pianificazione delle operazioni e la gestione delle risorse, questo processo garantisce il rispetto dei tempi, dei costi e degli standard di qualità. 
  
  La chiave del successo è un dialogo continuo tra le parti, che permette di risolvere le difficoltà tecniche, adattare le strategie di sviluppo e assicurare che il prodotto finale soddisfi le aspettative del cliente (M31). L'obiettivo primario è ottimizzare l'efficienza e garantire la conformità agli accordi stabiliti.

  === Comunicazione con l'azienda proponente
  // Spiegazione di come vengono mantenuti i contatti con l'azienda proponente (+ accenno agli strumenti citati sotto)

  Il team _Code Alchemists_ ritiene essenziale mantenere un dialogo continuo con l'azienda _M31_ per garantire un allineamento efficace sulle esigenze del progetto, prevenire incomprensioni e agevolare la risoluzione di eventuali criticità. A tal fine, verranno programmati incontri bisettimanali su Google Meet, integrati da una continua comunicazione asincrona tramite email.

  Le interazioni con il proponente saranno focalizzate su aspetti chiave quali definire i requisiti, pianificare le consegne, raccogliere di feedback, gestire le problematiche tecniche e la definizione delle priorità.

  L'obiettivo principale è favorire una collaborazione strutturata, assicurando la qualità del prodotto finale e la piena conformità alle aspettative del cliente.

  === Piano di Progetto
  // Descrizione documento PdP
  Il Piano di Progetto è un documento strategico che guida la pianificazione e l'esecuzione del progetto, garantendo un utilizzo ottimale delle risorse e il rispetto degli obiettivi. 
  
  Redatto dal Responsabile#super[G]; con il supporto degli Amministratori, include l'analisi dei rischi, la metodologia di sviluppo basata su Scrum, la roadmap delle attività e la gestione dei costi. Inoltre, il piano prevede monitoraggio continuo attraverso un confronto costante tra il preventivo e il consuntivo volto ad analizzare la fase attuale e migliorare le fasi future. 
  
  Questo piano facilita la comunicazione tra fornitore e proponente, assicurando trasparenza e coordinazione efficace durante l'intero processo.

  === Piano di Qualifica
  // Descrizione documento PdQ

  Il Piano di Qualifica definisce le strategie per garantire la qualità del prodotto, stabilendo standard di sviluppo, criteri di verifica e test per la conformità ai requisiti. 
  
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
  Il processo di sviluppo software è l'insieme delle attività necessarie per trasformare un'idea in un prodotto funzionante, garantendo la conformità ai requisiti e agli standard di qualità. 
  
  Si articola in tre fasi principali: _Analisi dei requisiti_, _Progettazione_ e _Codifica_.
  
  Il processo di sviluppo ha il compito di assicurare una pianificazione strutturata e un'ottimizzazione delle risorse. Il software deve rispettare vincoli tecnologici, obiettivi di design e superare test di verifica e validazione, mentre la documentazione facilita la gestione e il mantenimento del progetto nel tempo.

  === Analisi dei Requisiti
    ==== Scopo
    // Descrizione documento AdR
    L'analisi dei requisiti è la fase preliminare dello sviluppo software, finalizzata a identificare e documentare in modo accurato le esigenze del proponente e degli utenti. Questo processo consente di definire il fine del prodotto, gli attori del sistema e le funzionalità chiave, fornendo ai progettisti una visione chiara del problema e ai verificatori una base per le attività di test. 
    
    L'analisi si concretizza in un documento strutturato che raccoglie i casi d'uso, i requisiti funzionali e non funzionali, e le fonti da cui sono stati derivati. Questo documento rappresenta un riferimento essenziale per la progettazione, la pianificazione e la fase di verifica, garantendo che il sistema soddisfi pienamente le aspettative del cliente e gli obiettivi stabiliti. Inoltre, è strettamente collegato al Piano di Qualifica, che consente di monitorare la conformità ai requisiti attraverso test specifici.
    ==== Casi d'uso
    // Descrizione e nomenclatura use case
    ==== Requisiti#super[G]
    // Nomenclatura Requisiti#super[G] + riferimento all'AdR
  
  === Progettazione
    ==== Scopo
    // Dare soluzioni a requisiti rilevati nell'AdR.
    La progettazione software definisce le soluzioni tecniche per soddisfare i requisiti individuati, trasformandoli in un'architettura strutturata e modulare. 
    
    Si suddivide in:
    - *Progettazione Logica*, che motiva la scelta di tecnologie e framework e include il PoC;
    - *Progettazione di dettaglio*, che specifica l'architettura con diagrammi delle classi e test di unità. 
    
    Per garantire un sistema efficiente e scalabile, la progettazione segue principi di modularità, flessibilità e affidabilità, assicurando una struttura chiara e facilmente manutenibile prima della fase di sviluppo.
    ==== Fasi di Progettazione  
      ===== Progettazione logica
      // Descrizione progett. logica
      La progettazione logica definisce la struttura di alto livello del software, traducendo i requisiti in un'architettura chiara e coerente. Comprende la scelta di framework, tecnologie e librerie, validandone l'adeguatezza tramite un Proof of Concept (PoC). Inoltre, include diagrammi UML per rappresentare l'interazione tra i componenti. 
      
      I progettisti devono garantire l'assegnazione e il dettaglio dei requisiti, progettare interfacce e strutture dati, definire test di integrazione e revisionare l'architettura in collaborazione con il team e il cliente, assicurando che il sistema sia ben strutturato e facilmente manutenibile.
      ===== Progettazione di dettaglio
      // Descrizione progett. di dettaglio
      La progettazione di dettaglio suddivide il sistema in unità architetturali funzionali, garantendo una codifica efficiente e verificabile. Essa assicura che i componenti software siano ben definiti e coerenti con la progettazione logica, evitando complessità eccessive. 
      
      Durante questa fase, vengono creati diagrammi delle classi, tracciate le componenti e definiti gli unit test e integrazione, supportando un'implementazione strutturata e affidabile del prodotto.

    ==== Specifica tecnica
    // Importanza di documentare la progettazione nel documento "Specifica tecnica/Specifica architetturale"
    La specifica tecnica è un riferimento essenziale per lo sviluppo software, guidando le scelte architetturali e tecnologiche in modo strutturato. Essa definisce l'architettura del sistema, descrivendo componenti e interfacce, e indica le tecnologie adottate, come linguaggi di programmazione e framework. Inoltre, dettaglia la gestione dei dati, le interfacce con sistemi esterni e i design pattern utilizzati, garantendo efficienza e coerenza progettuale. 
  
    Il documento include anche la pianificazione delle attività, con stime di tempi e risorse, e le procedure di testing, assicurando che il prodotto finale rispetti i requisiti tecnici e le aspettative del cliente.
    
    ==== Framework e tecnologie utilizzate
              // Da stabilire
    ==== Pratiche di programmazione
    // Convenzioni su metodi, import, commenti...
    ==== PoC
    // Descrizione PoC
    Il Proof of Concept (PoC) è una fase fondamentale dello sviluppo, durante la quale progettisti e programmatori valutano la validità di una soluzione prima della sua implementazione definitiva. Il suo scopo è dimostrare la fattibilità del progetto, assicurando che le tecnologie scelte siano adeguate e compatibili con i requisiti tecnici e operativi. Inoltre, offre all'azienda proponente un feedback tempestivo e concreto, minimizzando i rischi e ottimizzando le decisioni. 
  
  === Codifica
    ==== Scopo
    // Descrizione Codifica
    La codifica, affidata ai programmatori, è una fase essenziale dello sviluppo software, finalizzata a tradurre le scelte progettuali in codice sorgente funzionante. 
    
    Per garantire uniformità, leggibilità e manutenibilità, vengono seguite precise linee guida sulla formattazione, la nomenclatura e la struttura del codice. Queste regole contribuiscono a semplificare la verifica, il debugging e l'estensione del software, assicurando un prodotto finale robusto e di alta qualità.
    ==== Convenzioni di sintassi
    // Nomi da assegnare, in che lingua, che stile di case seguire, indentazione, spaziatura...
    Le norme di scrittura del codice del prodotto software mirano a garantire leggibilità, uniformità e manutenibilità. Di seguito sono definite le principali convenzioni da seguire.

    // ***************** SEZIONI DA RIFINIRE CON CIO' CHE SI DECIDE EFFETTIVAMENTE *******/
      ===== Formattazione
      Ogni riga di codice non deve superare gli ...... caratteri per mantenere la leggibilità e facilitare la revisione.

      ===== Commenti
      Ogni costrutto deve essere preceduto da un commento esplicativo in italiano, indentato di una tabulazione. Sono obbligatori nei punti meno intuitivi e devono essere aggiornati ogni volta che viene modificato un metodo.

      ====== Indentazione
      I blocchi di codice innestati devono essere indentati con una tabulazione

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
        - *Pubblicazione*: il documento viene reso disponibile nel repository GitHub ufficiale "docs" solo dopo una verifica positiva, assicurando la presenza esclusiva di documenti validati e coerenti.
       
        Questa suddivisione garantisce un processo documentale chiaro ed efficace, facilitando la gestione e l'evoluzione dei documenti nel tempo.

      === Template Typst
      // Scelta di utilizzare template
      === Documenti prodotti
      // Distinzione documenti formali (interni o esterni) e informali
      === Nomenclatura documenti
      // Formato data nei documenti, ...
      I file devono possedere dei nomi adeguati, coerentemente con gli acronimi stabiliti nella sezione 4.1.5.1.      
      I verbali sia interni che esterni, però, fanno eccezione e adottano il formato di nomenclatura *"YYYY_MM_DD_TIPO"* o *"YYYY_MM_DD_TIPO_signed"*, dove:
      - *YYYY-MM-DD*: si riferisce alla data dell'incontro. 
      - *TIPO*: si riferisce all'acronimo corrispettivo al tipo di verbale (VI o VE).
      - I verbali esterni, i quali necessitano di una approvazione da parte di un ente terzo, presenteranno, alla fine del loro nome, anche il suffisso *"signed"* preceduto da un trattino basso. Questo suffisso starà ad indicare che quel verbale esterno è stato approvato dall'ente terzo e contiene la corrispondente firma di approvazione.


        ==== Acronimi per la documentazione
        Per facilitare la fruizione dei vari documenti, sono state assegnate delle sigle alle varie tipologie di documento. Gli acronimi adottati sono:
        - *VI*: Verbale Interno;
        - *VE*: Verbale Esterno;
        - *Gls*: Glossario;
        - *PdQ*: Piano di Qualifica;
        - *PdP*: Piano di Progetto;
        - *AdR*: Analisi dei Requisiti;
        - *NdP*: Norme di Progetto;
        - *DdB*: Diario di Bordo.
      === Struttura documento
      // Prima pagina, registro modifiche, contenuto principale...
          // (Crea sotto-sezioni per ognuna se necessario)
      === Convenzioni di scrittura
      // Stile di testo (grassetto, corsivo...), acronimi...
      === Strumenti per stesura
      // Typst su VSCode
      === Struttura della documentazione
        // In che modo dividiamo i documenti nella repo docs (in x cartella sono contenuti...)
          // Crea altre sottosezioni se necessario
        ==== Elementi grafici
        // In che cartella sono tenute le immagini, i grafici...
      === Metriche
      // Indice Gulpease
      // Correttezza Ortografica (se la vogliamo mettere, non mi sembra automatizzata tho) -> Per il momento no.
      === Manutenzione
      // Fasi di manutenzione di un documento (un esempio può essere: identificazione modifica, valutazione impatto, aggiornamento, push , verifica e validazione)
        ==== Procedure di revisione
          ===== Revisione tecnica
          // Revisione software
          ===== Revisione editoriale
          // Revisione documentazione
          ===== Approvazione 
          // Workflow di approvazione
          // (Dovrà esser automatizzato che, una volta approvato ed effettuato il push nella repo, il documento si aggiorna nel sito)
          // Per il Momento quando viene effettuato un push su main viene caricato il documento sul sito, bisogna solo far partire manualmente l'azione di aggiornamento dei link del sito. Provvederò a vedere se si può automatizzare anche questo.

    == Gestione della Configurazione
      === Scopo
      // Descrizione Gestione della Configurazione
      /* Menzionare che:  
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
      //  Git

      === Struttura repository#super[G]
      // Link alla nostra repo?
      La repository#super[G] GitHub configurata ad Organizzazione è strutturato in diverse repository#super[G] in base alla finalità d'uso delle stesse. All'interno di esse è possibile trovare varie directories descritte dai file README.md presenti, tra cui:
    
      - *docs*: Repository#super[G] contenente tutti i file .typ con la documentazione. In essa sono presenti delle Github Action che permettono il supporto alla verifica e l'auto compilazione dei file per essere caricati su github pages come pdf
    
      - *teamcodealchemists.github.io*:  Repository#super[G] dove si trova il sito web con tutta la documentazione. All'interno di essa sono state definite delle GitHub Action che permettono di tenere sincronizzato il glossario nel sito con quello in formato .pdf della documentazione e di aggiornare automaticamente i link alla documentazione.

      //Prossimamente per l'RTB dovremmo anche avere la repo del POC

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
    
          La convenzione di nomenclatura per questi branch è consultabile alla sezione 4.2.4.1.2 ("Nomenclatura dei branch").
          // Modificare 7.2.2 con il numero della sezione "Nomenclatura dei branch"

      === GitHub Action
      // Azioni per controllare glossario e per indice gulpease
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
      === Piano di Qualifica
      // Descrizione PdQ (che copre gli obiettivi di questo processo)
      === Testing
      // Vari tipi di test 
      === Metriche
      // Metriche del processo di Gestione Qualità

    == Verifica
      === Scopo
      // Descrizione Verifica

      /* // Potrebbe essere inserito
      === Stima e preventivazione
        ==== Tecniche di stima
        ==== Unità di misura
        ==== Processo di stima
        ==== Obiettivi di precisione
      */

      === Tipi di analisi
        ==== Analisi statica
        // Descrizione analisi statica
          ===== Walkthrough
          // Descrizione Walkthrough
          ===== Ispezione
          // Descrizione Ispezione
        ==== Analisi dinamica
        // Descrizione analisi dinamica
      === Tipi di test
        ==== Test di unità
        // Descrizione test di unità
        ==== Test di integrazione
        // Descrizione test di integrazione
        ==== Test di sistema 
        // Descrizione test di sistema
        ==== Test di regressione
        // Descrizione test di regressione
      === Metriche
      // Metriche del processo di Verifica

    == Validazione
      === Scopo
      // Descrizione Validazione


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
          
          Per favorire il cambio dei ruoli ad ogni Sprint e facilitare la transizione, infatti, si è deciso di mantenere almeno un componente di un gruppo di ruoli nello stesso ruolo come “Mentore#super[G]”. In questo modo, i mentori potranno aggiornare e supportare i nuovi arrivati nel suddetto ruolo, permettendo allo sviluppo di continuare in modo più fluido e coerente con quanto realizzato nello Sprint precedente.

          I criteri di rotazione dei ruoli devono inoltre consentire una suddivisione bilanciata dei ruoli tra i membri sull'intero arco del progetto, permettendo quindi una certa flessibilità sul breve periodo.

        ==== Allocazione risorse umane
        // In x fase di sviluppo sono richiesti più persone nel ruolo di Y...

        ==== Escalation path
        Durante l'intera fase di sviluppo, potrebbero capitare di venir assegnati alcuni ruoli a più membri del team per lo Sprint corrente (ad esempio, il ruolo di Analista#super[G] viene assegnato a 4 persone durante l'attuale Sprint poiché è una figura molto richiesta in quella determinata fase di sviluppo). 
      
        Al fine di coordinare meglio il flusso di lavoro, si è deciso, ad ogni Sprint, di scegliere tra questi membri un “sottoresponsabile”, il quale comunicherà periodicamente e frequentemente con i sottoresponsabili delle altre categorie di ruolo e con il responsabile#super[G] di turno per tenerli aggiornati sullo stato di avanzamento delle attività dello Sprint.
      
        Inoltre, i sottoresponsabili delle categorie di ruolo sono tenuti a mantenere una comunicazione costante con i membri del loro sottogruppo, assicurandosi che ogni task sia eseguita secondo le linee guida stabilite e che eventuali dubbi vengano chiariti prontamente. Questo approccio favorisce una gestione efficiente delle attività e una rapida risoluzione delle problematiche interne.
        //Spiegherei inoltre che va in aiuto al responsabile#super[G] facendo in modo che non debba occuparsi di tutto il gruppo, ma solo dei sottoresponsabili.

        ==== Orari di disponibilità
        // Documento su Google Sheets
        ==== Bilanciamento del carico di lavoro
        // Come vengono bilanciati i carichi di lavoro
      === Sprint
      // Scrum è il framework metodologico adottato, implementato secondo le seguenti linee guida:
      // ...
        ==== Durata degli Sprint
        Ogni Sprint ha una durata fissa di due settimane. Questa durata permette al team di concentrarsi su obiettivi concreti per un lasso di tempo sufficientemente ampio e di valutare i progressi in modo regolare, così da permettere un equilibrio tra flessibilità e stabilità.
        // In realtà possiamo variare dalle due settimane, è solo per l'RTB, ma potremmo diminuire ad una se necessario.

        ==== Pianificazione dello Sprint
        Pianificare gli Sprint implica definire gli obiettivi e le attività da completare durante lo Sprint. Durante questa fase, vengono identificati i requisiti#super[G], assegnate le responsabilità e stabilite le priorità. Una buona pianificazione è essenziale per il successo dello Sprint.

        ==== Review dello Sprint
        La review dello Sprint è una riunione che si tiene alla fine di ogni Sprint secondo quanto descritto al punto 5.2.3. Durante tale riunione, il team discute a grandi linee su ciò a cui si è lavorato e stabilisce il materiale da presentare agli stakeholder, i quali daranno dei feedback su quanto svolto così da identificare eventuali miglioramenti per il prossimo Sprint.
    
        ==== Retrospettiva dello Sprint
        La retrospettiva dello Sprint è una fase in cui il team analizza nel dettaglio il proprio lavoro realizzato durante lo Sprint. L'obiettivo di questa fase è di identificare ciò che ha funzionato bene e quel che può essere migliorato, promuovendo un continuo miglioramento della qualità del prodotto#super[G] in sviluppo.

    == Procedure di comunicazione   
      === Comunicazioni interne 
      // Da migliorare: Con che strumenti comunichiamo tra di noi, in che momenti etc...
      Durante l'intero ciclo di sviluppo del progetto, la comunicazione tra i membri del team è facilitata attraverso i canali ufficiali Discord e Telegram, scelti per la loro efficienza e versatilità.

      -	_Discord_ è stato selezionato per la sua praticità d'uso e per la possibilità di creare canali dedicati per ogni ruolo specifico, quali analista#super[G], programmatore#super[G] e verificatore#super[G]. Questa suddivisione assicura che ogni ruolo possa discutere direttamente delle proprie attività e delle difficoltà incontrate, facilitando il coordinamento e l'implementazione delle soluzioni.

      -	_Telegram_ è stato scelto per la sua semplicità e immediatezza nella comunicazione. Esso consente infatti di inviare messaggi rapidi e di condividere documenti e aggiornamenti in tempo reale. In questo modo, è possibile garantire che tutte le informazioni rilevanti siano facilmente accessibili a tutti i membri del team in qualsiasi momento.

      L'uso combinato di Discord e Telegram risulta dunque più che valido nel coprire tutte le esigenze comunicative nel corso delle varie fasi di sviluppo, assicurando che ogni membro del team possa interagire efficacemente e contribuire al raggiungimento degli obiettivi comuni.

      === Comunicazioni esterne
      // Con che strumenti comunichiamo con proponente e committente#super[G], con che cadenza, per cosa..
      === Riunioni interne
      // In che modo si svolgono le riunioni tra di noi, come sono organizzate...
      Le riunioni interne possono essere indette durante vari momenti strategici dello sviluppo del progetto, soprattutto tra uno Sprint e l'altro. 
  
      Difatti, al termine di ogni Sprint, tutti i membri del team si riuniscono per discutere di quanto svolto nel corso dello Sprint appena concluso. Durante tali incontri, vengono rese note eventuali difficoltà emerse durante l'esecuzione di determinate task e si affrontano possibili soluzioni alle problematiche riscontrate. Inoltre, vengono elencate le prossime task da svolgere per garantire la continuità del lavoro. 
  
      È in questa occasione che viene annunciata la rotazione dei ruoli per il prossimo Sprint e la conseguente assegnazione delle varie task a ogni membro a seconda dello specifico ruolo che ricopre.
  
      Durante l'intera fase di sviluppo, lì dove necessario, possono essere organizzate brevi riunioni interne tra più sottogruppi al fine di chiarire eventuali dubbi riguardo alle attività svolte nei precedenti Sprint.

      === Riunioni esterne
      // In che modo si svolgono le riunioni con proponente e committente#super[G], come sono organizzate...
    
      === Reportistica
      A seguito di ogni riunione, la stesura del corrispondente verbale viene assegnato, se disponibile, a uno dei verificatori. In questo modo, un altro verificatore#super[G] avrà il compito di effettuare una cross-verifica del verbale redatto, assicurando così che tutte le informazioni siano corrette e che eventuali errori siano prontamente individuati e corretti.
    
      Nel caso in cui i verificatori siano già impegnati in altre attività di priorità più alta, la stesura del verbale viene assegnata a un altro membro del team. Questo approccio flessibile garantisce che la documentazione delle riunioni non subisca ritardi e che ogni riunione sia adeguatamente registrata. Il membro del team incaricato di redigere il verbale è responsabile#super[G] di seguire le linee guida stabilite per la stesura, assicurando che il documento finale sia più chiaro, conciso e completo possibile.
    
      La verifica dello stesso sarà assegnata a uno dei verificatori, che avrà cura di controllare, ed eventualmente correggere, quanto riportato nel verbale non appena gli sarà possibile.
    
      Questo processo strutturato e collaborativo assicura che i verbali interni siano sempre accurati e tempestivi, facilitando la comunicazione e la trasparenza all'interno del team.
    
    == Gestione dell'infrastruttura
      === Scopo
        // A cosa servono gli elementi dell'infrastruttura organizzativa
      === Strumenti
        ==== GitHub
        // Hosting repo, tutte le funzioni e i servizi#super[G] che offre...
        ==== GitHub Pages
        // Per la presentazione del repository#super[G]
        ==== GitHub Flow
        // Come metodo di branching
        ==== Jira
        // Lo usiamo come Issue Tracking System per il coordinamento del lavoro...   Menzionare le milestone
          ===== Creazione task
          // I vari parametri accettati che usiamo su Jira nel creare una task
          ===== Assegnazione task
          // A chi viene assegnata una task (spieghiamo come viene scelto magari il Sottoresponsabile analista#super[G] che rappresenta l'intero gruppo di analisti)
          ===== Automazione task-branch#super[G]
          // Automazione Git-Jira
          ===== Automazione release
          // Automazione pubblicazione documenti pronti nel sito web
        ==== Discord
        // Per le comunicazioni vocali e le riunioni interne. Suddivisione vari canali per ruoli.
        ==== Telegram
        // Per le comunicazioni testuali più rapide, con tutti i membri del gruppo o singolarmente
        ==== Typst
        // Piattaforma per la stesura della documentazione
        ==== Google Drive
        // Directory per i documenti "informali" e materiale per la formazione individuale
        ==== Google Calendar
        // Gestione appuntamenti / riunioni
        ==== Google Sheets
        // Usato per assegnamento ruoli, orari disponibilità...
        ==== Gmail
        // Nostro indirizzo email per comunicare con proponente e committente#super[G]
        ==== Draw.io
        // Grafici / schemi vari

        // Altri tool che mi sto dimenticando?
        // Per il momento nulla

    == Miglioramento
    // Descrizione del processo di miglioramento
      === Creazione del processo
      // Il processo viene creato seguendo gli standard e il ciclo di vita del SW, essendo documentato e verificato...
      === Valutazione del processo
      // Revisione del processo ed eventuale pianificazione di miglioramento
      === Attuazione miglioramento del processo
      // Applicazione miglioramento, tutto documentato evidenziando i vantaggi dati dal miglioramento

    == Formazione
      === Scopo
      // Motivi per cui è importante assicurare che tutti i membri siano adeguatamente preparati
      === Metodo di Formazione
      // In che modo viene assicurato l'accesso alle risorse per la formazione dei membri (individualmente o in gruppo)
      === Materiale formativo
      // Per ogni categoria, tipo architettura a microservizi#super[G], NATS, Docker ... indicare che materiale è messo a disposizione

/*
  = Standard qualità ISO/IEC ....
   ---> Dipenderà da che standard seguiremo, che avrà i suoi parametri specifici
      -----> ad es. ISO/IEC 9126 ha: Funzionalità, Affidabilità, Efficienza, Usabilità, Manutenibilità e Portabilità.
*/
