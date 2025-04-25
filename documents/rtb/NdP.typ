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
  [0.3.0],
  [25/04/2025],
  [R. Zangla],
  [-],
  [Ulteriore ristrutturazione del documento e aggiunte note. Modificate le sezioni 4.2 e 8.4.1. Aggiunte informazioni alle sezioni da 4.2.2 a 4.2.4 (sottosezioni incluse), da 5.1.2.1 a 5.1.2.4, 5.2.1, 5.2.3 e 5.2.5.],

  [0.2.0],
  [06/04/2025],
  [S. Speranza],
  [-],
  [Ristrutturazione del documento, ulteriore stesura],
  
  [0.1.0],
  [29/03/2025],
  [N. Bolzon],
  [-],
  [Inizio stesura del documento],
  
  [0.0.1],
  [28/03/2025],
  [S. Speranza],
  [-],
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
  Il prodotto, detto anche software, oggetto del presente progetto, consiste nella realizzazione di un sistema distribuito e scalabile per la gestione ottimale (intesa come minimizzazione dei tempi di risposta e di ottimizzazione della distribuzione delle scorte) di una rete di magazzini, singolarmente autonomi, in modo da favorire l'interoperabilità tra di essi e centralizzare le informazioni in maniera efficiente e sicura. // Inserire riferimento al capitolato?

  Il presente documento è redatto secondo lo standard _ISO/IEC 12207:1995_, che identifica tre tipologie di processi:
  - Processi primari
  - Processi organizzativi
  - Processi di supporto  

  == Entità coinvolte
  Il presente progetto didattico di Ingegneria del Software coinvolge le seguenti entità:
  - Il proponenente del progetto, _M31_, nei ruoli di:
    - _Cliente_#super[G];
    - _Mentore_#super[G];
  - Il docente, #p.tullio, nel ruolo di _Committente_#super[G]
  - Il team _Code Alchemists_, nel ruolo di _Fornitore_#super[G]
  
  == Glossario
  Le parole contrassegnate in apice con la lettera #super[G] sono intese con la loro definizione specificata nel documento _Glossario_.
  == Riferimenti
    === Riferimenti normativi
    - *Capitolato d'appalto* \
      *C6 - Sistema di Gestione di un Magazzino Distribuito* \
      #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")]\
      //Ultimo Accesso: \
    
    - *Standard ISO/IEC 12207:1995* \
      #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")]\
      //Ultimo Accesso: \
    
    === Riferimenti informativi
    - *Glossario* \
      #underline[#link("")] \
      //Ultimo Accesso: \
    - *Piano di Qualifica* \
      #underline[#link("")] \
      //Ultimo Accesso: \
    - *Piano di Progetto* \
      #underline[#link("")] \
      //Ultimo Accesso: \

= Struttura dei processi
= Processi primari
== Fornitura
  === Scopo
  // Descrizione Fornitura
  === Comunicazione con l'azienda proponente
  // Spiegazione di come vengono mantenuti i contatti con l'azienda proponente (+ accenno agli strumenti citati sotto)
  === Piano di Progetto
  // Descrizione documento PdP
  === Piano di Qualifica
  // Descrizione documento PdQ
  === Strumenti
  // Google Calendar, Google Meet, Jira (in generale. Verrà approfondito in Processi organizzativi)

== Sviluppo 
  === Scopo
  // Descrizione Sviluppo
  
  === Analisi dei Requisiti
    ==== Scopo
    // Descrizione documento AdR
    ==== Casi d'uso
    // Descrizione e nomenclatura use case
    ==== Requisiti
    // Nomenclatura Requisiti + riferimento all'AdR
  
  === Progettazione
    ==== Scopo
    // Dare soluzioni a requisiti rilevati nell'AdR.
    ==== Fasi di Progettazione  
      ===== Progettazione logica
      // Descrizione progett. logica
      ===== Progettazione di dettaglio
      // Descrizione progett. di dettaglio
    ==== Specifica tecnica
    // Importanza di documentare la progettazione nel documento "Specifica tecnica/Specifica architetturale"
    ==== Framework e tecnologie utilizzate
              // Da stabilire
    ==== Pratiche di programmazione
    // Convenzioni su metodi, import, commenti...
    ==== PoC
    // Descrizione PoC
  
  === Codifica
    ==== Scopo
    // Descrizione Codifica
    ==== Convenzioni di sintassi
    // Nomi da assegnare, in che lingua, che stile di case seguire, indentazione, spaziatura...
    === Tecnologie utilizzate
    // Cos'è VS Code e cosa permette


  = Processi di supporto
    == Documentazione
      === Scopo
      // Introduzione alla documentazione
      === Ciclo di vita del documento
      // Fasi che attraverso ogni documento dalla creazione al "rilascio"
        // (Creazione, stesura, verifica, pubblicazione)
      === Template Typst
      // Scelta di utilizzare template
      === Documenti prodotti
      // Distinzione documenti formali (interni o esterni) e informali
      === Nomenclatura documenti
      // Formato data nei documenti, ...
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
      // Correttezza Ortografica (se la vogliamo mettere, non mi sembra automatizzata tho)
      === Manutenzione
      // Fasi di manutenzione di un documento (un esempio può essere: identificazione modifica, valutazione impatto, aggiornamento, push , verifica e validazione)
        ==== Procedure di revisione
          ===== Revisione tecnica
          // Revisione software
          ===== Revisione editoriale
          // Revisione documentazione
          ===== Approvazione 
          // Workflow di approvazione
          // (Dovrà esser automatizzato che, una volta approvato e pushato nella repo, il documento si aggiorna nel sito)

    == Gestione della Configurazione
      === Scopo
      // Descrizione Gestione della Configurazione
      /* Menzionare che:  
      Il ciclo di vita del software che è obiettivo di questo progetto è strutturato nelle seguenti fasi:
          1. Inizializzazione e pianificazione
          2. Analisi dei requisiti
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

      === Struttura repository
      // Link alla nostra repo?
      La repository GitHub configurata ad Organizzazione è strutturato in diverse repository in base alla finalità d’uso delle stesse. All’interno di esse è possibile trovare varie directories descritte dai file README.md presenti, tra cui:
    
      - *docs*: Repository contenente tutti i file .typ con la documentazione. In essa sono presenti delle Github Action che permettono il supporto alla verifica e l’auto compilazione dei file per essere caricati su github pages come pdf
    
      - *teamcodealchemists.github.io*:  Repository dove si trova il sito web con tutta la documentazione. All'interno di essa è stata definita una GitHub Action che permette di tenere sincronizzato il glossario nel sito con quello in formato .pdf della documentazione.

        ==== Organizzazione Repository
          ===== Modello di branching
          È stato adottato il modello di branching *Git Flow* per la gestione delle repository#super("G") di progetto. 
    
          Ciascuna tipologia di ramo risponde a uno scopo specifico all’interno del ciclo di vita del software, consentendo una gestione ordinata e controllata del processo di sviluppo.

          Ogni membro è a conoscenza delle _best practice_ per la creazione, l’unione e la cancellazione dei rami, così da promuovere una collaborazione efficace e strutturata all’interno del team.

          ===== Nomenclatura dei branch
          È stata raccomandata, ove possibile, l’associazione dei branch relativi a nuove funzionalità (ovvero i branch _feature_) alle corrispondenti issue tracciate su *Jira*, adottando una convenzione di nomenclatura coerente _(ad esempio: *feature/Sprint-55-nome-feature*)_.

          ===== Branch principali
          La struttura è basata sui rami principali _main_ e _develop_.

          Il ramo _main_ è destinato alle versioni stabili del progetto, verificate, testate e pronte per essere rilasciate. Ogni commit su _main_ dovrebbe quindi rappresentare una versione stabile e testata del software e/o del documento in questione.

          Il ramo _develop_, invece, è destinato a raccogliere tutte le nuove funzionalità che saranno incluse nel prossimo rilascio. I commit sul _develop_ possono contenere codice che si trova ancora in fase di sviluppo e test.

          ===== Feature branch
          I branch secondari _feature_ sono dedicati allo sviluppo delle singole nuove funzionalità.
          Essi devono essere creati a partire dal ramo _develop_ e, una volta completati, deve essere effettuato il merge in _develop_. 
    
          La convenzione di nomenclatura per questi branch è consultabile alla sezione 7.2.2.
          // Modificare 7.2.2 con il numero della sezione "Nomenclatura dei branch"

      === GitHub Action
      // Azioni per controllare glossario e per indice gulpease

        === Procedure di commit e merge
          ==== Messaggi di commit // formato e convenzioni
          ==== Dimensione dei commit //linee guida
          ==== Pull/Merge request // processo e approvazioni
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
        - Responsabile
        - Amministratore
        - Analista
        - Progettista
        - Programmatore
        - Verificatore
  
        Le responsabilità dei ruoli qui elencati sono consultabili nel Glossario.

        ==== Criteri rotazione ed assegnazione ruoli
          La prima assegnazione dei ruoli riflette, ove possibile, le preferenze personali dei membri del gruppo. In seguito, la rotazione dei ruoli avviene in maniera concordata con il resto del gruppo, tipicamente all'inizio di un nuovo Sprint, ma anche in base alle necessità del _backlog_#super[G].
  
          Infatti, una gestione più flessibile dei ruoli permette il coinvolgimento di tutto il team verso l'obiettivo di terminare il prima possibile il lavoro da svolgere, non concentrandosi esclusivamente sui task specifici assegnati al proprio ruolo. In questo modo si evitano, inoltre, situazioni in cui il passaggio da un ruolo all'altro è drastico, il che porterebbe inevitabilmente ad un aumento del debito tecnico.
          
          Viene perciò preferita una comunicazione frequente tra i membri, in modo che tutti abbiano una visione costantemente aggiornata del punto in cui ci si trova con il lavoro.
          
          La rotazione dei ruoli avviene tipicamente all'inizio di ogni Sprint, ovvero ogni due settimane.
          Questo, però, non significa che tra uno Sprint e l'altro ogni singolo membro del team debba assumere un ruolo diverso nello Sprint che sta per iniziare rispetto a quello assunto durante l'ultimo Sprint.
          
          Per favorire il cambio dei ruoli ad ogni Sprint e facilitare la transizione, infatti, si è deciso di mantenere almeno un componente di un gruppo di ruoli nello stesso ruolo come “Mentore”. In questo modo, i mentori potranno aggiornare e supportare i nuovi arrivati nel suddetto ruolo, permettendo allo sviluppo di continuare in modo più fluido e coerente con quanto realizzato nello Sprint precedente.

          I criteri di rotazione dei ruoli devono inoltre consentire una suddivisione bilanciata dei ruoli tra i membri sull'intero arco del progetto, permettendo quindi una certa flessibilità sul breve periodo.

        ==== Allocazione risorse umane
        // In x fase di sviluppo sono richiesti più persone nel ruolo di Y...

        ==== Escalation path
        Durante l'intera fase di sviluppo, potrebbero capitare di venir assegnati alcuni ruoli a più membri del team per lo Sprint corrente (ad esempio, il ruolo di Analista viene assegnato a 4 persone durante l’attuale Sprint poiché è una figura molto richiesta in quella determinata fase di sviluppo). 
      
        Al fine di coordinare meglio il flusso di lavoro, si è deciso, ad ogni Sprint, di scegliere tra questi membri un “sottoresponsabile”, il quale comunicherà periodicamente e frequentemente con i sottoresponsabili delle altre categorie di ruolo e con il responsabile di turno per tenerli aggiornati sullo stato di avanzamento dello Sprint.
      
        Inoltre, i sottoresponsabili delle categorie di ruolo sono tenuti a mantenere una comunicazione costante con i membri del loro sottogruppo, assicurandosi che ogni task sia eseguita secondo le linee guida stabilite e che eventuali dubbi vengano chiariti prontamente. Questo approccio favorisce una gestione efficiente delle attività e una rapida risoluzione delle problematiche interne.

        ==== Orari di disponibilità
        // Documento su Google Sheets
        ==== Bilanciamento del carico di lavoro
        // Come vengono bilanciati i carichi di lavoro
      === Sprint
      // Scrum è il framework metodologico adottato, implementato secondo le seguenti linee guida:
      // ...
        ==== Durata degli Sprint
        Ogni Sprint ha una durata fissa di due settimane. Questa durata permette al team di concentrarsi su obiettivi concreti per un lasso di tempo sufficientemente ampio e di valutare i progressi in modo regolare, così da permettere un equilibrio tra flessibilità e stabilità.

        ==== Pianificazione dello Sprint
        Pianificare gli Sprint implica definire gli obiettivi e le attività da completare durante lo Sprint. Durante questa fase, vengono identificati i requisiti, assegnate le responsabilità e stabilite le priorità. Una buona pianificazione è essenziale per il successo dello Sprint.

        ==== Review dello Sprint
        La review dello Sprint è una riunione che si tiene alla fine di ogni Sprint secondo quanto descritto al punto 4.4.2. Durante tale riunione, il team discute a grandi linee su ciò a cui si è lavorato e stabilisce il materiale da presentare agli stakeholder, i quali daranno dei feedback su quanto svolto così da identificare eventuali miglioramenti per il prossimo Sprint.
    
        ==== Retrospettiva dello Sprint
        La retrospettiva dello Sprint è una fase in cui il team analizza nel dettaglio il proprio lavoro realizato durante lo Sprint. L'obiettivo di questa fase è di identificare ciò che ha funzionato bene e quel che può essere migliorato, promuovendo un continuo miglioramento della qualità del prodotto in sviluppo.

    == Procedure di comunicazione   
      === Comunicazioni interne 
      // Da migliorare: Con che strumenti comunichiamo tra di noi, in che momenti etc...
      Durante l'intero ciclo di sviluppo del progetto, la comunicazione tra i membri del team è facilitata attraverso i canali ufficiali Discord e Telegram, scelti per la loro efficienza e versatilità.

      -	_Discord_ è stato selezionato per la sua praticità d'uso e per la possibilità di creare canali dedicati per ogni ruolo specifico, quali analista, programmatore e verificatore. Questa suddivisione assicura che ogni ruolo possa discutere direttamente delle proprie attività e delle difficoltà incontrate, facilitando il coordinamento e l'implementazione delle soluzioni.

      -	_Telegram_ è stato scelto per la sua semplicità e immediatezza nella comunicazione. Esso consente infatti di inviare messaggi rapidi e di condividere documenti e aggiornamenti in tempo reale. In questo modo, è possibile garantire che tutte le informazioni rilevanti siano facilmente accessibili a tutti i membri del team in qualsiasi momento.

      L'uso combinato di Discord e Telegram risulta dunque più che valido nel coprire tutte le esigenze comunicative nel corso delle varie fasi di sviluppo, assicurando che ogni membro del team possa interagire efficacemente e contribuire al raggiungimento degli obiettivi comuni.

      === Comunicazioni esterne
      // Con che strumenti comunichiamo con proponente e committente, con che cadenza, per cosa..
      === Riunioni interne
      // In che modo si svolgono le riunioni tra di noi, come sono organizzate...
      Le riunioni interne possono essere indette durante vari momenti strategici dello sviluppo del progetto, soprattutto tra uno Sprint e l’altro. 
  
      Difatti, al termine di ogni Sprint, tutti i membri del team si riuniscono per discutere di quanto svolto nel corso dello Sprint appena concluso. Durante tali incontri, vengono rese note eventuali difficoltà emerse durante l’esecuzione di determinate task e si affrontano possibili soluzioni alle problematiche riscontrate. Inoltre, vengono elencate le prossime task da svolgere per garantire la continuità del lavoro. 
  
      È in questa occasione che viene annunciata la rotazione dei ruoli per il prossimo Sprint e la conseguente assegnazione delle varie task a ogni membro a seconda dello specifico ruolo che ricopre.
  
      Durante l'intera fase di sviluppo, lì dove necessario, possono essere organizzate brevi riunioni interne tra più sottogruppi al fine di chiarire eventuali dubbi riguardo alle attività svolte nei precedenti Sprint.

      === Riunioni esterne
      // In che modo si svolgono le riunioni con proponente e committente, come sono organizzate...
    
      === Reportistica
      A seguito di ogni riunione, la stesura del corrispondente verbale viene assegnato, se disponibile, a uno dei verificatori. In questo modo, un altro verificatore avrà il compito di effettuare una cross-verifica del verbale redatto, assicurando così che tutte le informazioni siano corrette e che eventuali errori siano prontamente individuati e corretti.
    
      Nel caso in cui i verificatori siano già impegnati in altre attività di priorità più alta, la stesura del verbale viene assegnata a un altro membro del team. Questo approccio flessibile garantisce che la documentazione delle riunioni non subisca ritardi e che ogni riunione sia adeguatamente registrata. Il membro del team incaricato di redigere il verbale è responsabile di seguire le linee guida stabilite per la stesura, assicurando che il documento finale sia più chiaro, conciso e completo possibile.
    
      La verifica dello stesso sarà assegnata a uno dei verificatori, che avrà cura di controllare, ed eventualmente correggere, quanto riportato nel verbale non appena gli sarà possibile.
    
      Questo processo strutturato e collaborativo assicura che i verbali interni siano sempre accurati e tempestivi, facilitando la comunicazione e la trasparenza all'interno del team.
    
    == Gestione dell'infrastruttura
      === Scopo
        // A cosa servono gli elementi dell'infrastruttura organizzativa
      === Strumenti
        ==== GitHub
        // Hosting repo, tutte le funzioni e i servizi che offre...
        ==== GitHub Pages
        // Per la presentazione del repository
        ==== GitHub Flow
        // Come metodo di branching
        ==== Jira
        // Lo usiamo come Issue Tracking System per il coordinamento del lavoro...   Menzionare le milestone
          ===== Creazione task
          // I vari parametri accettati che usiamo su Jira nel creare una task
          ===== Assegnazione task
          // A chi viene assegnata una task (spieghiamo come viene scelto magari il Sottoresponsabile analista che rappresenta l'intero gruppo di analisti)
          ===== Automazione task-branch
          // Automazione Git-Jira
          ===== Automazione release
          // Automazione pubblicazione documenti pronti nel sito web
        ==== Discord
        // Per le comunicazioni vocali e le riunioni interne. Suddivisione vari canali per ruoli.
        ==== Telegram
        // Per le comunicazioni testuali più rapide, con tutti i membridel gruppo o singolarmente
        ==== Typst
        // Piattaforma per la stesura della documentazione
        ==== Google Drive
        // Directory per i documenti "informali" e materiale per la formazione individuale
        ==== Google Calendar
        // Gestione appuntamenti / riunioni
        ==== Google Sheets
        // Usato per assegnamento ruoli, orari disponibilità...
        ==== Gmail
        // Nostro indirizzo email per comunicare con proponente e committente
        ==== Draw.io
        // Grafici / schemi vari

        // Altri tool che mi sto dimenticando?

    == Miglioramento
    // Descrizione del processo di miglioramento
      === Creazione del processo
      // Il processo viene creato seguendo gli standard e il ciclo di vita del SW, essendo documentato e verificato...
      === Valutazione del processo
      // Revisione del processo ed evenutale pianificazione di miglioramento
      === Attuazione miglioramento del processo
      // Applicazione miglioramento, tutto documentato evidenziando i vantaggi dati dal miglioramento

    == Formazione
      === Scopo
      // Motivi per cui è importante assicurare che tutti i membri siano adeguatamente preparati
      === Metodo di Formazione
      // In che modo viene assicurato l'accesso alle risorse per la formazione dei membri (indiviudalmente o in gruppo)
      === Materiale formativo
      // Per ogni categoria, tipo architettura a microservizi, NATS, Docker ... indicare che materiale è messo a disposizione

/*
  = Standard qualità ISO/IEC ....
   ---> Dipenderà da che standard seguiremo, che avrà i suoi parametri specifici
      -----> ad es. ISO/IEC 9126 ha: Funzionalità, Affidabilità, Efficienza, Usabilità, Manutenibilità e Portabilità.
*/
