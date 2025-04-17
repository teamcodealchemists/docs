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
#let versione = "0.2.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
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

= Principi fondamentali del Way of Working
  == Approccio metodologico
  Il nostro Team _Code Alchemists_ adotta per il presente progetto un approccio Agile, caratterizzato da:

  - Iterazioni di due settimane
  - Feedback continuo e adattamento
  - Coinvolgimento a cadenza regolare del Cliente#super[G] e del Committente#super[G]
  - Coinvolgimento frequente del Mentore#super[G] a supporto del nostro Team

= Processi di Progetto
  == Framework di riferimento
  Scrum è il framework metodologico adottato, implementato secondo le seguenti linee guida:

  - 
  - 
  - 

  == Ciclo di vita del software
  Il ciclo di vita del software che è obiettivo di questo progetto è strutturato nelle seguenti fasi:

  1. Inizializzazione e pianificazione
  2. Analisi dei requisiti
  3. Progettazione
  4. Implementazione
  5. Verifica e validazione
  6. Rilascio
  //7. Manutenzione

  == Struttura dei processi
  Il presente documento è redatto secondo lo standard _ISO/IEC 12207:1995_, che identifica tre tipologie di processi:

  - Processi primari
  - Processi organizzativi
  - Processi di supporto

= Organizzazione e Ruoli
  == Struttura organizzativa
  
  == Ruoli e Responsabilità
  I ruoli all'interno del team sono suddivisi tra i seguenti:
  - Responsabile
  - Amministratore
  - Analista
  - Progettista
  - Programmatore
  - Verificatore

  Durante i vari Sprint, può capitare che vi siano molte persone con lo stesso ruolo. Al fine di coordinare meglio il flusso di lavoro, viene scelto tra questi un sottoresponsabile che comunicherà periodicamente e frequentemente con gli altri sottoresponsabili e il responsabile di turno sullo stato di avanzamento dello sprint.
  
  Le definizioni dei ruoli qui elencati sono consultabili nel Glossario.

  == Criteri di assegnazione e rotazione dei ruoli
  La prima assegnazione dei ruoli riflette, ove possibile, le preferenze personali dei membri del gruppo. In seguito, la rotazione dei ruoli avviene in maniera concordata con il resto del gruppo, tipicamente all'inizio di un nuovo Sprint, ma anche in base alle necessità del _backlog_#super[G].
  
  Infatti, una gestione più flessibile dei ruoli permette il coinvolgimento di tutto il team verso l'obiettivo di terminare il prima possibile il lavoro da svolgere, non concentrandosi esclusivamente sui task specifici assegnati al proprio ruolo. In questo modo si evitano, inoltre, situazioni in cui il passaggio da un ruolo all'altro è drastico, il che porterebbe inevitabilmente ad un aumento del debito tecnico.
  
  Viene perciò preferita una comunicazione frequente tra i membri, in modo che tutti abbiano una visione costantemente aggiornata del punto in cui ci si trova con il lavoro.
  
  Ovviamente, i criteri di rotazione dei ruoli all'inizio di ogni Sprint si basano sul consentire una suddivisione bilanciata dei ruoli tra i membri sull'intero arco del progetto, consentendo quindi una certa flessibilità sul breve periodo.
  

  == Comunicazione interna

    === Canali ufficiali
    // Telegram, Discord
    
    === Riunioni periodiche
    
    === Reportistica
    // Come viene gestita l'assegnazione e la stesura di verbali interni a seguito di una riunione interna
    
    === Escalation path
    // Definizione di capi per ogni categoria di ruolo, in modo che i problemi vengano riferiti da lui al responsabile/capi degli altri ruoli (es. capo analista)

= Processo di Pianificazione
  == Pianificazione temporale
    === Metodologia di pianificazione
    === Milestone
    === Consegne

  == Pianificazione delle risorse
    === Allocazione risorse umane
    === Gestione della disponibilità
    === Bilanciamento del carico di lavoro

  == Stima e preventivazione
    === Tecniche di stima
    === Unità di misura
    === Processo di stima
    === Obiettivi di precisione

  == Gestione degli sprint
    === Durata degli sprint
    === Pianificazione dello sprint
    === Review dello sprint
    === Retrospettiva dello sprint 

= Processo di Analisi
  == Raccolta dei requisiti
    === Tecniche di raccolta
    === Coinvolgimento degli stakeholder
    === Gestione delle aspettative

  == Analisi dei requisiti
    === Categorizzazione dei requisiti
    === Prioritizzazione
    === Analisi di fattibilità
    === Gestione delle dipendenze

  == Documentazione dei requisiti
    === Modello dei requisiti
    === User story/Casi d'uso
    === Requisiti non funzionali
    === Criteri di accettazione

  == Tracciabilità dei requisiti
    //=== Matrice di tracciabilità
    === Strumenti di supporto
    === Aggiornamento e manutenzione

/*
= Processo di Progettazione

= Processo di Sviluppo

= Processo di Verifica e Validazione
*/

= Gestione della Configurazione
  == Controllo di versione
    === Sistema di version control
    Git
    === Struttura dei repository
    === Accessi e permessi
    === Backup e sicurezza

  == Strategia di branching
    === Modello di branching
    GitFlow
    === Nomenclatura dei branch // convenzioni
    === Branch principali
    === Feature branch // quando e come crearli

  == Procedure di commit e merge
    === Messaggi di commit // formato e convenzioni
    === Dimensione dei commit //linee guida
    === Pull/Merge request // processo e approvazioni
    === Gestione dei conflitti // procedure e responsabilità

  == Baseline e rilasci
    === Definizione di baseline // cosa costituisce una baseline
    === Versionamento // schema di numerazione
    === Note di rilascio //contenuto e formato

= Gestione della Documentazione
  == Struttura dei documenti
    === Gerarchia dei documenti
    === Documenti obbligatori
    === Documenti opzionali
    === Organizzazione logica

  == Template e convenzioni
    === Template standard
    === Formattazione
    === Stile di scrittura
    === Inclusione di elementi grafici

  == Procedure di revisione
    === Revisione tecnica
    === Revisione editoriale
    === Approvazione // workflow di approvazione
    === Ciclo di feedback

  == Versionamento della documentazione
    === Controllo versioni // metodologia e strumenti
    //Questa versione del versionamento non è del tutto corretta.
    
    Il versionamento dei documenti segue i seguenti criteri:
    - *0.0.x*: creazione template, struttura documento
    - *0.x.x*: inserimento contenuto del documento
    - *1.0.0*: documento revisionato e approvato
    - *1.x.x*: modifiche eventuali dopo l’approvazione
    - *2.0.0*: approvazione documento da parte di un ente terzo
    === Registro delle modifiche
    === Distribuzione

= Gestione della Qualità

= Gestione del Rischio

// = Gestione del Cambiamento

= Strumenti e Ambiente di Sviluppo

= Miglioramento Continuo


/*
/* SEZIONE 2 - Processi Primari */
= 2. Processi Primari

/* SEZIONE 3 - Processi di Supporto */

/* SEZIONE 4 - Processi Organizzativi */
= 4. Processi Organizzativi
  == 4.1 Gestione dei Processi
    === 4.1.1 Attività previste
    === 4.1.2 Ruoli
    === 4.1.3 Coordinamento
      ==== 4.1.3.1 Riunioni
      ==== 4.1.3.2 Comunicazioni
  == 4.2 Infrastruttura
    === 4.2.1 Attività Previste
    === 4.2.2 Implementazione
    === 4.2.3 Creazione
      ==== 4.2.3.1 Google Drive
  
  - *Drive* per la condivisione di file;
  - *Github* per il repository codice;
  - *GitHub Pages* per la presentazione del repository;
  - *Discord* per le comunicazioni vocali e le riunioni interne;
  - *Telegram* per le comunicazioni testuali più rapide;
  - *Jira* per il coordinamento del lavoro;
  - *Typst* come piattaforma per la stesura della documentazione.


*/