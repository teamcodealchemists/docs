#import "../../src/basic.typ": *
#import "../../src/tables.typ": *  //importo le tabelle

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "Piano di Progetto"
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

  //TODO: aggiungere le voci del registro per gli sprint

  [0.3.0],
  [23/05/2025],
  [M. Dalla Pozza],
  [N. Moretto],
  [Aggiunta del contenuto: Struttura del team, Budget e risorse.],


  [0.2.0],
  [11/05/2025],
  [M. Dalla Pozza],
  [S. Marana],
  [Aggiunta del contenuto: Rischi, Sprint#super[G] e altri.],

  [0.1.0],
  [09/04/2025],
  [N. Moretto],
  [S. Marana],
  [Inizio redazione documento: Introduzione generale.],
  
  [0.0.1],
  [08/04/2025],
  [N. Moretto],
  [S. Marana],
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

/* INDICE DELLE TABELLE*/
#outline(
  title: [Lista delle Tabelle],
  target: figure.where(kind: table),
)

#pagebreak()
= Introduzione
== Informazioni generali
Il *Piano di Progetto#super[G]* è un documento che definisce le modalità di gestione del progetto, le risorse necessarie e i rischi attesi.\ Il piano di progetto è un documento vivo, che viene aggiornato durante il ciclo di vita del progetto di *Ingegneria del Software*, in quanto le attività vengono pianificate volta per volta e le risorse vengono allocate in base alle necessità. Una progettazione dettagliata sul lungo termine, infatti, si rivelerebbe inefficace in quanto sensibile#super[G] ad imprevisti ed esigenze del cliente#super[G] o di sviluppo.

Il documento è molto importante per permettere una corretta pianificazione del lavoro e dei vari sprint#super[G], analizzando il tempo previsto ed effettivo per ogni attività, tenendo conto dei rischi e delle risorse disponibili.

== Informazioni sul prodotto


Il progetto riguarda lo sviluppo di un sistema di gestione per magazzini distribuiti, con l'obiettivo di ottimizzare la gestione dell'inventario#super[G] in una rete di magazzini geograficamente separati. Questo sistema deve garantire che i flussi di materiali e prodotti tra i magazzini siano gestiti in tempo reale, evitando rotture di stock e migliorando la distribuzione delle scorte#super[G]. Il sistema dovrà anche ridurre i livelli medi di inventario#super[G], mantenendo però scorte#super[G] di sicurezza per gestire variazioni nella domanda o ritardi nelle consegne.

La soluzione proposta si baserà su un'architettura#super[G] a microservizi#super[G], che permetterà a ogni magazzino di gestire autonomamente il proprio inventario#super[G], mentre le informazioni verranno sincronizzate in tempo reale con un sistema centrale. Il sistema dovrà essere in grado di monitorare i livelli di inventario#super[G], gestire conflitti derivanti da aggiornamenti simultanei, implementare riassortimenti#super[G] predittivi basati su machine learning e garantire una visibilità centralizzata in tempo reale delle operazioni. Inoltre, saranno utilizzate tecnologie moderne e scalabili come Node.js, Typescript, Nats e Docker, per garantire prestazioni elevate e l'interoperabilità tra i magazzini.

In sintesi, il progetto si propone di migliorare l'efficienza operativa della gestione logistica, riducendo i rischi legati alla gestione delle scorte#super[G] e ottimizzando i flussi tra i magazzini.




== Glossario#super[G]
La realizzazione di un software richiede, ancor prima dello sviluppo, una fase di analisi e progettazione. Dato che il lavoro durante questa fase è svolto da più persone e in modo asincrono, è necessario documentare tutte queste attività per tenere traccia di ciò che è stato fatto e per evitare confusione. 

Si potrà dedurre che questi documenti potrebbero contenere parole o frasi che non sono di uso comune, ma che sono state scelte per essere più specifiche e per evitare ambiguità. Per questo motivo è stato creato un glossario#super[G] che contiene le definizioni di tali termini, al seguente #link("https://teamcodealchemists.github.io/glossario")[#underline[indirizzo]]. 

== Riferimenti   //Inserire riferimenti al capitolato#super[G] del progetto e a lezioni/slide del professore se necessario
- *Capitolato#super[G] d'appalto C6 - Gestione di un magazzino distribuito - _M31_*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")

  //TODO: da completare

#pagebreak()
= Analisi e gestione dei rischi
== Introduzione
#v(0.5em)
In questa sezione del documento vengono analizzati i principali rischi in cui il team potrebbe incorrere durante lo svolgimento
del progetto. Ad ognuno viene associata una valutazione della probabilità di occorrenza e gravità, oltre che ad una descrizione 
ed una sezione relativa al rilevamento e alle contromisure. 

// Infine ogni rischio viene associato ad un indice numerico consentendo quindi di determinarne la criticità di ciascuno facilmente.

== Definizione degli indici
#v(0.5em)
Per valutare nel migliore modo possibile i rischi sono stati definiti i seguenti campi:

//- *Indice*: un valore numerico che indica in modo univoco ogni rischio;

- *Tipo*: Rappresenta l'impatto che il rischio potrebbe avere sul progetto, ed è classificato in Basso, Medio o Alto;

- *Gravità*: Descrive le conseguenze che un rischio ha se si verifica, con l'eventuale possibilità di modifica alla pianificazione o al progetto;

- *Probabilità*: Indica, come da nome, la probabilità che il rischio si verifichi durante lo sviluppo del progetto.


#align(center)[
  #tabella_indici_gravita(
    dati: (
      [1], 
      [Basso], 
      [L'impatto sul progetto è minimo, un lieve rallentamento che non modifica i tempi di consegna.], 
      [È molto improbabile che si verifichi,
      ma esistono situazioni che potrebbero contribuirne alla nascita.],

      [2], 
      [Medio], 
      [L'evento richiede un parziale adattamento al piano e l'organizzazione iniziale, con uno sforzo supplementare ma con un impatto gestibile.], 
      [Esiste una probabilità media che il rischio si realizzi.], 

      [3], 
      [Alto], 
      [Il rischio comporta ritardi significativi,
      un possibile aumento dei costi o un degrado della qualità, impattando negativamente sul raggiungimento degli obbiettivi del progetto.], 
      [Altamente probabile che il rischio si verifichi, con diversi segni evidenti che ne indicano la possibilità che accada.], 
  ),
    didascalia: "Indici di gravità e probabilità gestione dei rischi"
  )
]


== Suddivisione dei rischi // Potremmo invertire l'ordine a quello inglese


I rischi del progetto sono suddivisi in quattro categorie principali, in base al tipo di problematiche che potrebbero verificarsi:

- Rischi nell'organizzazione e gestione del progetto;

- Rischi nella comunicazione;

- Rischi individuali;

- Rischi di natura tecnologica.

Ogni rischio è identificato tramite un codice univoco, strutturato come segue:

#align(center, block[*R[Categoria][Indice] - [Nome]*])

Dove:

+ *Categoria*: Rappresenta la tipologia del rischio, che puo essere:

  - *P*: per i rischi di pianificazione;

  - *C*: per i rischi comunicativi;

  - *I*: per i rischi individuali;

  - *T*: per i rischi tecnologici.

+ *Indice*: Identificativo progressivo univoco all'interno della categoria.

+ *Nome*: Una breve descrizione del rischio.

== Rischi tecnologici //tecnologie utilizzate ed eventuali errori

=== RT1 - Inesperienza nell'uso delle tecnologie


#tabella_rischi(
  dati: (
    [*Codice*],
    [RT1],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Media],

    [*Descrizione*],
    [Inesperienza nell'uso di una o più tecnologie utilizzate nel progetto.],

    [*Rilevamento*],
    [Comunicazione da parte dei membri del team e rallentamenti nello sviluppo.],

    [*Contromisure*], 
    [In primo luogo grazie ad un impegno parallelo da parte del team di aggiornarsi ed imparare dove necessario. 
    In aggiunta dalla condivisone di materiale informativo/didattico e dall'organizzazione di riunioni/incontri 
    rivolti ad aiutare membri del team in difficoltà.],
  ),
  didascalia: "Tabella RT1"
)


=== RT2 - Uso errato delle tecnologie


#tabella_rischi(
  dati: (
    [*Codice*],
    [RT2],

    [*Gravità*],
    [Bassa],

    [*Probabilità*],
    [Media],

    [*Descrizione*],
    [Rischio legato ad un utilizzo errato o non ottimale delle tecnologie in uso nel progetto che potrebbero portare ad
    errori e rallentamenti.],

    [*Rilevamento*],
    [Problemi di configurazione e funzionamento degli elementi costitutivi dell'architettura#super[G] in uso.],

    [*Contromisure*], 
    [Studio più approfondito e mirato alle singole componenti del sistema da parte di uno o più membri del team 
    per ottenere una panoramica migliore al fine di risolvere il problema.],
  ),
  didascalia: "Tabella RT2"
)


=== RT3 - Errori di codifica o programmazione


#tabella_rischi(
  dati: (
    [*Codice*],
    [RT3],

    [*Descrizione*],
    [Lo sviluppo software prevede implicitamente la possibilità di scrivere codice#super[G] non completamente corretto, 
    a maggior ragione se il linguaggio in uso e il suo funzionamento non sono ben conosciuti.],

    [*Gravità*],
    [Bassa],

    [*Probabilità*],
    [Alta],

    [*Rilevamento*],
    [Output dell' algoritmo o della porzione di codice#super[G] inaspettato.],

    [*Contromisure*], 
    [In caso di codice#super[G] non funzionante il
    programmatore#super[G] cercherà di risolvere il problema approfondendo
    la tecnologia in uso e l'argomento al fine di trovare una soluzione in modo indipendente. 
    In caso di insuccesso un sistema di ticket condiviso con gli altri programmatori#super[G]
    potrebbe aiutare a condividere informazioni per ottenere una soluzione alternativa. 
    Se il problema dovesse diventare centrale i programmatori#super[G] si impegneranno 
    a lavorare assieme per la risoluzione.],
  ),
  didascalia: "Tabella RT3"
)


=== RT4 - Rischio di supporto e versione delle tecnologie


#tabella_rischi(
  dati: (
    [*Codice*],
    [RT4],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Rilevamento*],
    [Una parte del sistema smette di funzionare o si comporta in modo anomalo.],

    [*Contromisure*], 
    [Il team si impegna sin dall'inizio della progettazione architetturale di utilizzare tecnologie stabili
    e in vasto uso nel mercato, come anche gli endpoint delle API#super[G] messe a disposizione, al fine di ridurre
    al minimo l'eventualità del problema.],
  ),
  didascalia: "Tabella RT4"
)

== Rischi comunicativi


=== RC1 - Tempi di risposta lunghi


#tabella_rischi(
  dati: (
    [*Codice*],
    [RC1],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [Rischio legato ad una comunicazione lenta da parte di uno o più componenti del team al fine della risoluzione 
    di una problematica o a fine organizzativo.],

    [*Rilevamento*],
    [Rilevamento implicito da parte dei restanti componenti del team.],

    [*Contromisure*], 
    [I membri del team si impegnano a fissare incontri frequenti e di lavorare assieme su canali comunicativi di diversa natura. 
    In più, grazie al sistema di sottoresponsabili adottato, data la dimensione del team, la responsabilizzazione dei membri 
    ottenuta aiuterà a effettuare check-up frequenti dei restanti membri, garantendo quindi una comunicazione frequente e granulare.],
  ),
  didascalia: "Tabella RC1"
)


=== RC2 - Incomprensione degli obbiettivi del team


#tabella_rischi(
  dati: (
    [*Codice*],
    [RC2],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [Rischio legato all'incomprensione di uno o più obbiettivi dello sprint#super[G] in corso.],

    [*Rilevamento*],
    [Frequenti discussioni con opinioni molto contrastanti e nessun esito.],

    [*Contromisure*], 
    [Il responsabile#super[G] del team si occuperà di monitorare costantemente i membri del gruppo al fine di comprendere
    eventuali incomprensioni e risolverle al più presto. In particolare la struttura a sottoresponsabili e sottogruppi
    aiuterà a individuare più facilmente i membri in questione.],
  ),
  didascalia: "Tabella RC2"
)


=== RC3 - Mancanza di comunicazione con l'azienda 


#tabella_rischi(
  dati: (
    [*Codice*],
    [RC3],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [Rischio legato ad una comunicazione sporadica con l'azienda proponente.],

    [*Rilevamento*],
    [Tempi di risposta lunghi e poco frequenti.],

    [*Contromisure*], 
    [Il team si impegna a cercare di organizzarsi nel migliore dei modi affinché l'azienda proponente
    possa trovarsi nelle condizioni di avere una comunicazione facile e veloce.],
  ),
  didascalia: "Tabella RC3"
)



== Rischio individuale //altri impegni e attività individuale


=== RI1 - Impegni personali, universitari e indisponibilità


#tabella_rischi(
  dati: (
    [*Codice*],
    [RI1],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Alta],

    [*Descrizione*],
    [Essendo il progetto stesso di SWE uno dei molteplici corsi universitari,
    i membri del team potrebbero essere costretti in alcuni casi 
    a periodi o momenti di indisponibilità dati da quest'ultimi.
    Si considerano inoltre momenti di assenza dati da impegni esterni 
    inderogabili e malessere personale.],

    [*Rilevamento*],
    [I membri del team si impegnano a mantenere un orario settimanale costantemente aggiornato
    della disponibilità di ciascuno e di informare i restanti membri in casi diversi.],

    [*Contromisure*], 
    [L'orario settimanale condiviso verrà utilizzato per pianificare le attività e suddividere il lavoro
    in modo da mantenere la disponibilità necessaria.],
  ),
  didascalia: "Tabella RI1"
)


=== RI2 - Scarsa collaborazione


#tabella_rischi(
  dati: (
    [*Codice*],
    [RI2],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [La possibilita che alcuni membri del gruppo non collaborino attivamente al progetto.],

    [*Rilevamento*],
    [Implicitamente dagli altri membri del gruppo.],

    [*Contromisure*], 
    [Gli incontri regolari predisposti dal responsabile#super[G] del team aiuteranno a favorire il dialogo trasparente, la collaborazione e 
    mantenere attivo l'impegno di ciascun membro. Inoltre la scala della responsabilità
    più granulare aiuterà ad avere un riscontro continuo più diretto.],
  ),
  didascalia: "Tabella RI2"
)


=== RI3 - Difficoltà di "comprensione" o lavoro

#tabella_rischi(
  dati: (
    [*Codice*],
    [RI3],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [La possibilità che alcuni membri del gruppo non siano in grado di portare avanti il lavoro indipendentemente.],

    [*Rilevamento*],
    [Comunicazione al resto del team.],

    [*Contromisure*], 
    [I membri del team si impegnano a comunicare in modo trasparente e onesto le difficoltà nello svolgere
    il lavoro assegnato, mentre i restanti si impegnano ad aiutare chi si trova in tale situazione.],
  ),
  didascalia: "Tabella RI3"
)



== Rischio globale //valutare altri rischi


=== RG1 - Incomprensione degli obbiettivi del capitolato#super[G] 


#tabella_rischi(
  dati: (
    [*Codice*],
    [RG1],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [La possibilità che il gruppo sviluppi una soluzione ad un sotto problema 
    diversa da quella intesa dall'azienda proponente.],

    [*Rilevamento*],
    [Comunicazione da parte dell'azienda proponente del progetto.],

    [*Contromisure*], 
    [I membri del team si sono impegnati sin dall'inizio nello svolgere un'accurata lettura del capitolato#super[G] di progetto
    al fine di individuare precisamente le richieste, nonché di avere una comunicazione frequente con l'azienda per 
    individuare eventuali incomprensioni.],
  ),
  didascalia: "Tabella RG1"
)


=== RG2 - Pareri contrastanti


#tabella_rischi(
  dati: (
    [*Codice*],
    [RG2],

    [*Gravità*],
    [Bassa],

    [*Probabilità*],
    [Media],

    [*Descrizione*],
    [La possibilità che il gruppo sviluppi opinioni contrastanti in merito allo sviluppo, organizzazione e pianificazione.],

    [*Rilevamento*],
    [Implicito dato da un frequente disaccordo.],

    [*Contromisure*], 
    [I membri durante le riunioni interne si impegnano ad ascoltare ciascuno le motivazioni altrui al fine
    di raggiungere la soluzione ottimale o un compromesso. Se questo non dovesse bastare, delle votazioni
    anonime a maggioranza verranno indette al fine di raggiungere una decisione.],
  ),
  didascalia: "Tabella RG2"
)



== Tabella Riassuntiva


#tabella_riassuntiva_rischi(
  dati: (
    [RT1],[Inesperienza nell'uso delle tecnologie nel progetto.],[Media],[Media],
    [RT2],[Utilizzo errato o non ottimale delle tecnologie.],[Bassa],[Media],
    [RT3],[Errori di programmazione.],[Bassa],[Alta],
    [RT4],[Supporto e versione delle tecnologie.],[Alta],[Bassa],
    [RC1],[Tempi di risposta lunghi.],[Media],[Bassa],
    [RC2],[Incomprensione degli obbiettivi.],[Alta],[Bassa],
    [RC3],[Mancanza di comunicazione con l'azienda.],[Alta],[Bassa],
    [RI1],[Impegni personali, universitari e indisponibilità.],[Media],[Alta],
    [RI2],[Scarsa collaborazione.],[Alta],[Bassa],
    [RI3],[Difficoltà di comprensione.],[Media],[Bassa],
    [RG1],[Incomprensione degli obbiettivi del capitolato#super[G].],[Alta],[Bassa],
    [RG2],[Pareri contrastanti.],[Bassa],[Media],
      
  ),
  didascalia: "Tabella riassuntiva dei rischi"
)

#pagebreak()
= Pianificazione nel lungo termine

== Struttura del team


Di seguito vengono brevemente descritti i ruoli previsti all'interno del team, equamente distribuiti e ruotati tra i membri con cadenza bisettimanale. Ogni ruolo prevede specifiche mansioni e obiettivi:

- *Responsabile#super[G]*: coordina il gruppo di lavoro, assegnando i compiti, monitorando le attività e gestendo l’utilizzo delle risorse. Garantisce l’avanzamento del progetto e il rispetto delle tempistiche e delle risorse disponibili.


- *Amministratore#super[G]*: si occupa della gestione delle infrastrutture, incluso il setup degli strumenti utilizzati per la produzione del software e della documentazione, nonché dell’organizzazione e della produttività del team.


- *Analista#super[G]*: è responsabile della definizione dei requisiti#super[G] di progetto e dell’analisi delle funzionalità del software, al fine di determinare i casi d’uso. Il suo contributo è fondamentale nella fase iniziale, per permettere una progettazione ottimale da parte dei progettisti#super[G] e, successivamente, una corretta implementazione da parte dei programmatori#super[G].


- *Progettista#super[G]*: definisce l’architettura#super[G] del software, individuando i componenti e le interazioni tra essi sulla base dell’analisi dei requisiti#super[G] fornita dagli analisti#super[G]. Il ruolo è cruciale per una progettazione efficace del prodotto, sia nella fase preliminare del Proof of Concept#super[G] (POC#super[G]), sia nella realizzazione del Minimum Viable Product (MVP).


- *Programmatore#super[G]*: sviluppa il codice#super[G] del software secondo l’architettura#super[G] definita dai progettisti#super[G]. Oltre a ricoprire il ruolo chiave nella realizzazione del prodotto, ha anche il compito implicito di validare le scelte effettuate da analisti#super[G] e progettisti#super[G].


- *Verificatore#super[G]*: controlla, durante tutte le fasi dello sviluppo, che il software e la documentazione rispettino le specifiche e le norme adottate. Il suo ruolo è essenziale per individuare tempestivamente eventuali errori o incongruenze.


#pagebreak()
== Budget e risorse


Il gruppo prevede di terminare il progetto
entro il giorno 29/08/2025 con un budget di spesa fissato a Euro 14.430 come indicato nella *Dichiarazione degli impegni*.

Di seguito sono indicati i costi previsti durante la candidatura :

 #align(center)[
    #figure(
      table(
        columns: (auto,auto,auto,auto),
        inset: 10pt,
        align: center,
        table.header(
          [*Ruolo*], [*Costo Orario*], [*Ore*], [*Costo Totale*]
        ),
        
        [Responsabile#super[G]],[30€/h],[67],[2.010€],
        [Analista#super[G]],[25€/h],[76],[1.900€],
        [Progettista#super[G]],[25€/h],[156],[3.900€],
        [Amministratore#super[G]],[20€/h],[61],[1.220€],
        [Programmatore#super[G]],[15€/h],[218],[3.270€],
        [Verificatore#super[G]],[15€/h],[142],[2.130€],
        [*Totale*],[-],[*720*],[*14.430€*]
      ),
      caption: [Ripartizione dei costi per ore e ruolo],
    )
  ]

/*
  
  Si riporta un grafico a torta raffigurante la ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili:

  #align(center)[
    #figure(
      image("assets/chart.png", width: 13cm),
      caption: [Ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili]
    )
  ]
*/


== Attività previste per la Requirements and Technology Baseline (RTB)


Durante l'RTB#super[G] sono previste due attività principali:

  - Redazione di documenti;

  - Sviluppo.

La prima verra portata avanti durante tutti gli sprint#super[G] a seconda
delle esigenze e necessità del momento.
La seconda verra iniziata successivamente alla produzione di:
Analisi dei Requisiti#super[G]; Casi d'uso; Architettura#super[G] preliminare.

Di seguito vengono indicate le più nel dettaglio le principali 
attività previste durante la fase RTB#super[G] del progetto: 


1. *Redazione Analisi dei Requisiti#super[G]* (in stesura)

  - Stesura della struttura;

  - Lettura accurata del capitolato#super[G];

  - Estrapolazione dei requisiti#super[G];

  - Creazione dei casi d'uso.


2. *Redazione Piano di progetto* (in stesura)

  - Stesura della struttura;

  - Introduzione ai rischi;

    - Organizzativi;

    - Comunicativi;

    - Individuali ;

    - Tecnologici.

  - Pianificazione lungo termine;

  - Pianificazione breve termine;

  - Redazione continua degli sprint#super[G].


3. *Redazione piano di Qualifica#super[G]* (in stesura)

  - Stesura della struttura;

  - Metriche di monitoraggio#super[G];

  - Implementazione del cruscotto di valutazione;

    - aggiornamento continuo delle metriche.

  - Compilazione e ricerca per le considerazioni di miglioramento continuo;

  - Definizione di test sulla base dell'analisi dei requisiti#super[G]. 

4. *Redazione Norme di progetto* (in stesura)

  - Stesura della struttura;
    - Test delle tecnologie scelte.
  - Processi Primari;
  - Processi di Supporto;
  - Processi Organizzativi;
  - Metriche utilizzate.

5. *Redazione del Glossario#super[G]* (in stesura)
  - Stesura della struttura;
  - Aggiunta automatizzata dei termini.

6. *Sviluppo POC#super[G] (Proof of concept#super[G])* (in stesura)

  - Definizione di una possibile architettura#super[G];
  
  - Sviluppo;

    - Magazzino locale;

    - Cloud;

    - Sistema centralizzato.

== Attività previste per la Product Baseline (PB)

La redazione di questo paragrafo sarà effettuato in seguito al superamento della
*Requirements and Technology Baseline#super[G] (RTB#super[G])*.

#pagebreak()
= Pianificazione nel breve termine
== Introduzione

A seguito del primo incontro di gruppo Il team _Code Alchemists_ ha deciso di impegnarsi ad adottare come strumento di sviluppo
principale la metodologia *Agile#super[G]* per tutto quello che riguarda la gestione del progetto. 
In particolare, si è deciso di utilizzare il framework *Scrum#super[G]*, che prevede numerosi *sprint#super[G]*, 
ovvero periodi di tempo ben definiti da una data di inizio e una data di fine in cui il team 
si impegna a concentrarsi su un insieme specifico e finito di attività.\
Il team ha deciso di utilizzare una durata dello sprint#super[G] pari a *2 settimane*, 
questo aiutera ad ottenere un buon bilanciamento tra pianificazione e esecuzione delle attività. 
Inoltre durante ogni sprint#super[G], verranno effettuate diverse riunioni per discutere
sia i progressi di ogni membro e le difficoltà riscontrate, per permettere una comunicazione continua tra i membri
e una rapida risoluzione dei problemi che potrebbero insorgere.\

Il team ha deciso di utilizzare un approccio *iterativo#super[G]* e di miglioramento *incrementale#super[G]*, 
per permettere di adattare il lavoro in base alle esigenze del cliente#super[G], feedback ricevuti e necessità. 
Inoltre, si è deciso di utilizzare un *gestore di attività*, in particolare JIRA, per 
*tracciare il lavoro svolto e le scadenze*.
Questo garantirà innanzitutto una buona gestione del progetto ma anche una migliore pianificazione, 
riducendo al minimo i potenziali rischi e massimizzando le possibilità di successo.

Inoltre alcune particolari caratteristiche che il team ha deciso di adottare dopo un primo periodo di prova includono:

- L'uso di sottoresponsabili informali per responsabilizzare maggiormente più membri e ottenere una comunicazione più efficace e diretta;
- La redazione di una "Lettera di sprint#super[G]" da parte del responsabile#super[G] entrante per definire meglio gli obbiettivi attuali, la quale
   viene redatta e presentata almeno il giorno prima dell'inizio del nuovo sprint#super[G];
- Un cambio di ruoli per sprint#super[G] basato sul ruolo della persona e dalle competenze ottenute nello sprint#super[G] appena terminato.
   Questo permette in particolare, oltre a ruotare i ruoli tra i membri, di svolgere una transizione molto più fluida e funzionale tra sprint#super[G].


Infine il team si impegna a *concordare riunioni periodiche* con l'azienda proponente del progetto _M31_ 
per discutere progressi ed eventuali modifiche in corso d'opera. 
Le riunioni garantiranno che il lavoro svolto rimanga coerente con le aspettative 
del cliente#super[G] ottenendo feedback su quanto realizzato.

Di seguito vengono riportate le caratteristiche previste per ogni sprint#super[G] successivamente descritte:
- Informazioni generali;
- Attività da svolgere;
- Previsione di ore e costi;
- Rischi attesi;
- Ore e costi effettivi;
- Aggiornamento delle risorse rimanenti;
- Rischi incontrati;
- Retrospettiva.

#pagebreak()
== Requirements and Technology Baseline (RTB)

=== Sprint 1    //mantenere le seguenti distanze
Inizio: #h(1.99cm)*28-03-2025*\
Fine Prevista: #h(0.65cm)*11-04-2025*\
Fine Reale: #h(1.12cm)*11-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
Questo sprint#super[G] ha come obbiettivo quello di risolvere le osservazioni 
ricevute dopo la presentazione della candidatura. 
Successivamente, avverrà la redazione dei primi documenti 
necessari per iniziare i lavori.

In particolare, le attività previste sono:
- Miglioramento grafico del sito web;
- Miglioramento della navigabilità delle risorse del sito web;
- Indicazione dei criteri di rotazione dei ruoli;
- Prima redazione del Glossario#super[G] ;
- Prima redazione delle Norme di Progetto#super[G] ;
- Prima redazione del Piano di Progetto#super[G] ;
- Prima redazione dell'Analisi dei Requisiti#super[G] ;
- Prime ipotesi architetturali e tecnologiche;
- Effettuare un incontro con _M31_;


==== Rischi attesi
I possibili rischi :
- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RI1: Rischio Individuale derivante dalle altre attività;
- RG1: Rischio Globale derivato da incomprensione del capitolato#super[G] ;
- RG2: Rischio Globale legato a pareri contrastanti.

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[],[5],
      [Mattia Dalla Pozza],[],[],[7],[],[],[],
      [Sebastiano Marana],[5],[],[],[],[],[],
      [Nicholas Moretto],[],[],[6],[],[],[],
      [Matteo Pretto],[],[],[],[],[],[5],
      [Alex Shu],[],[],[],[],[3],[],
      [Stefano Speranza],[],[],[6],[],[],[],
      [Ramona Zangla],[],[],[6],[],[],[],
  ),
  didascalia: "Sprint 1 - Preventivo ore per ciascun componente"
)
]


==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[],[5 (+3)],
      [Mattia Dalla Pozza],[],[],[7],[],[],[],
      [Sebastiano Marana],[5],[],[],[],[],[],
      [Nicholas Moretto],[],[],[6],[],[],[],
      [Matteo Pretto],[],[],[],[],[],[5 (-3)],
      [Alex Shu],[],[],[],[],[3],[],
      [Stefano Speranza],[],[],[6],[],[],[],
      [Ramona Zangla],[],[],[6],[],[],[],
  ),
  didascalia: "Sprint 1 - Consuntivo ore per ciascun componente"
)
]


==== Aggiornamento delle risorse rimanenti  
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]], [30€/h], [5], [150€], [67 (-5)], [2010€ (-150€)],
      [Amministratore#super[G]], [20€/h], [-], [-], [61], [1220€],
      [Analista#super[G]], [25€/h], [25], [625€], [76 (-25)], [1900€ (-625€)],
      [Progettista#super[G]], [25€/h], [-], [-], [156], [3900€],
      [Programmatore#super[G]], [15€/h], [3], [45€], [218 (-3)], [3270€ (-45€)],
      [Verificatore#super[G]], [15€/h], [10], [150€], [142 (-10)], [2130€ (-150€)],
      [*Totale*], [*-*], [*43*], [*970€*], [*720 (-43)*], [*14430€ (-970€)*],
  ),
    didascalia: "Sprint 1 - Aggiornamento delle risorse disponibili"
  )
]
==== Rischi incontrati


Durante questo primo sprint#super[G] abbiamo avuto principalmente
difficoltà con una distribuzione dell'impegno non
completamente equo. L'indisponibilità poi di un membro del team ha 
portato gli altri membri a dover ulteriormente assorbire 
il lavoro in eccesso.

Alcuni rallentamenti inoltre sono stati dovuti ad un primo periodo
di approccio a JIRA da parte del gruppo non efficiente, dovuto all'inesperienza
dell'utilizzo dello strumento e in aggiunta di un 
organizzazione degli incontri più spontanea e meno organizzata.

=== Retrospettiva


Durante lo sprint#super[G] ci siamo dedicati principalmente ad una prima impostazione del
progetto, tramite automazioni e organizzazione github, alla progettazione di una
prima ipotesi architetturale/tecnologica a caldo e alla prima stesura
dei documenti necessari con un discreto successo, almeno come primo inizio di progetto.
Non siamo riusciti tuttavia a rendere l'ipotesi architetturale definitiva, in quanto
effettuata precedentemente da una ricerca dello stato dell'arte approfondita e quindi
da una scarsità di informazioni.

#pagebreak()
=== Sprint 2

Inizio: #h(1.99cm)*11-04-2025*\
Fine Prevista: #h(0.65cm)*24-04-2025*\
Fine Reale: #h(1.12cm)*24-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere


Questo secondo sprint#super[G] ha avuto principalmente come obbiettivo la continuazione
e il miglioramento di quanto iniziato nel primo sprint#super[G] basandoci inoltre
su quanto discusso con l'azienda proponente.

In particolare, le attività previste sono:

- Analisi dello stato dell'Arte;
- Continuazione dell'ipotesi architetturale e tecnologica;
  - Approfondimento delle tecnologie proposte.
- Redazione dei casi d'uso;
- Continuazione del Glossario#super[G];
- Continuazione delle Norme di Progetto;
- Continuazione del Piano di Progetto;
- Continuazione dell'Analisi dei Requisiti#super[G];
- Miglioramento dell'utilizzo di JIRA ;
- Automazioni Github.


==== Rischi attesi


I possibili rischi :
- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RI1: Rischio Individuale derivante dalle altre attività;
- RG2: Rischio Globale legato a pareri contrastanti.

==== Preventivo 

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[6],[],[],[],
      [Mattia Dalla Pozza],[5],[],[],[],[],[],
      [Sebastiano Marana],[],[4],[],[],[],[],
      [Nicholas Moretto],[],[],[7],[],[],[],
      [Matteo Pretto],[],[],[6],[],[],[],
      [Alex Shu],[],[],[],[],[],[5],
      [Stefano Speranza],[],[],[6],[],[],[],
      [Ramona Zangla],[],[],[],[],[],[6],
  ),
  didascalia: "Sprint 2 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
      [Nicolò Bolzon],[],[],[6 (-1)],[],[],[],
      [Mattia Dalla Pozza],[5],[],[],[],[],[],
      [Sebastiano Marana],[],[4],[],[],[],[],
      [Nicholas Moretto],[],[],[7 (-2)],[],[],[],
      [Matteo Pretto],[],[],[6 (-4)],[],[],[],
      [Alex Shu],[],[],[],[],[],[5 (-1)],
      [Stefano Speranza],[],[],[6 (-1)],[],[],[],
      [Ramona Zangla],[],[],[],[],[],[6 (-1)],
  ),
  didascalia: "Sprint 2 - Preventivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti 

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]], [30€/h], [5], [150€], [62 (-5)], [1860€ (-150€)],
      [Amministratore#super[G]], [20€/h], [4], [80€], [61 (-4)], [1220€ (-80€)],
      [Analista#super[G]], [25€/h], [17], [425€], [51 (-17)], [1275€ (-425€)],
      [Progettista#super[G]], [25€/h], [-], [-], [156], [3900€],
      [Programmatore#super[G]], [15€/h], [-], [-], [215], [3225€],
      [Verificatore#super[G]], [15€/h], [9], [135€], [130 (-9)], [1980€ (-135€)],
      [*Totale*], [*-*], [*38*], [*865€*], [*675 (-35)*], [*13460€ (-790€)*],
  ),
    didascalia: "Sprint 2 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati


Il principale rischio di questo secondo sprint#super[G] è stato il lungo periodo 
di festività, come quello pasquale, che ha rallentato notevolmente
il progresso di tutte le attività attese.

Inoltre, un'iniziale difficoltà nell'identificare con decisione i principali
punti su cui concentrarsi per avanzare nella produzione di un POC#super[G] hanno portato
il team ad effettuare un'analisi dello stato dell'arte, posponendo quindi l'avanzamento
dell'ipotesi architetturale e quindi della produzione stessa del POC#super[G].


=== Retrospettiva


Le difficoltà incontrare hanno portato alla luce come fosse e sia essenziale avere una
migliore panoramica dell'ambito di sviluppo del progetto, e di come iniziare a sviluppare
parallelamente una prima base di POC#super[G] sia essenziale al fine stesso di capire meglio
il contesto e identificare in anticipo eventuali issue.


#pagebreak()
=== Sprint 3
Inizio: #h(1.99cm)*25-04-2025*\
Fine Prevista: #h(0.65cm)*09-05-2025*\
Fine Reale: #h(1.12cm)*09-05-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere


In particolare, le attività previste sono:

- Termine architettura#super[G] POC#super[G];
- Continuazione stesura documenti;
  - Piano di progetto;
  - Piano di qualifica#super[G];
  - Glossario#super[G];
  - Analisi dei requisiti#super[G];
  - Norme di progetto.


==== Rischi attesi


I possibili rischi :
- RI1: Rischio Individuale derivante dalle altre attività.
- RG2: Rischio Globale legato a pareri contrastanti.

==== Preventivo

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[6],[],[],[],
      [Mattia Dalla Pozza],[],[4],[],[],[],[],
      [Sebastiano Marana],[],[],[],[],[],[6],
      [Nicholas Moretto],[5],[],[],[],[],[],
      [Matteo Pretto],[],[],[6],[],[],[],
      [Alex Shu],[],[],[5],[],[],[],
      [Stefano Speranza],[],[],[],[8],[],[],
      [Ramona Zangla],[],[],[],[8],[],[],
  ),
  didascalia: "Sprint 3 - Preventivo ore per ciascun componente"
)
]


==== Consuntivo


#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
      [Nicolò Bolzon],[],[],[6],[],[],[],
      [Mattia Dalla Pozza],[],[4],[],[],[],[],
      [Sebastiano Marana],[],[],[],[],[],[6(+3)],
      [Nicholas Moretto],[5],[],[],[],[],[],
      [Matteo Pretto],[],[],[6(-2)],[],[],[],
      [Alex Shu],[],[],[5],[],[],[],
      [Stefano Speranza],[],[],[],[8],[],[],
      [Ramona Zangla],[],[],[],[8],[],[],
  ),
  didascalia: "Sprint 3 - Consuntivo ore per ciascun componente"
)
]


==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]], [30€/h], [5], [150€], [57(-5)], [1710€ (-150€)],
      [Amministratore#super[G]], [20€/h], [4], [80€], [57(-4)], [1140€ (-80€)],
      [Analista#super[G]], [25€/h], [15], [375€], [34(-15)], [850€ (-375€)],
      [Progettista#super[G]], [25€/h], [16], [400€], [156(-16)], [3900€ (-400€)],
      [Programmatore#super[G]], [15€/h], [-], [-], [215], [3225€],
      [Verificatore#super[G]], [15€/h], [9], [135€], [121(-9)], [1845€ (-135€)],
      [*Totale*], [*-*], [*49*], [*1140€*], [*640 (-49)*], [*12670€ (-865€)*],
  ),
    didascalia: "Sprint 3 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati


=== Retrospettiva

//-----------

#pagebreak()
=== Sprint 4
Inizio: #h(1.99cm)*09-05-2025*\
Fine Prevista: #h(0.65cm)*23-05-2025*\
Fine Reale: #h(1.12cm)*23-05-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere



==== Rischi attesi

I possibili rischi :


==== Preventivo

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[8],[],
      [Mattia Dalla Pozza],[],[],[],[7],[],[],
      [Sebastiano Marana],[],[],[],[7],[],[],
      [Nicholas Moretto],[],[],[],[],[],[9],
      [Matteo Pretto],[],[4],[],[],[],[],
      [Alex Shu],[],[],[6],[],[],[],
      [Stefano Speranza],[],[],[],[7],[],[],
      [Ramona Zangla],[5],[],[],[],[],[],
  ),
  didascalia: "Sprint 4 - Preventivo ore per ciascun componente"
)
]


==== Consuntivo


#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
      [Nicolò Bolzon],[],[],[],[],[8(-2)],[],
      [Mattia Dalla Pozza],[],[],[],[7(+1)],[],[],
      [Sebastiano Marana],[],[],[],[7(+1)],[],[],
      [Nicholas Moretto],[],[],[],[],[],[9(+1)],
      [Matteo Pretto],[],[4],[],[],[],[],
      [Alex Shu],[],[],[6],[],[],[],
      [Stefano Speranza],[],[],[],[7(+1)],[],[],
      [Ramona Zangla],[5],[],[],[],[],[],
  ),
  didascalia: "Sprint 4 - Consuntivo ore per ciascun componente"
)
]


==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [52(-5)],   [1560€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [53(-4)],   [1060€ (-80€)],
      [Analista#super[G]],        [25€/h],   [6],   [150€],   [19(-6)],    [475€ (-150€)],
      [Progettista#super[G]],     [25€/h],   [24],  [600€],   [140(-24)], [3500€ (-600€)],
      [Programmatore#super[G]],   [15€/h],   [6],   [90€],      [215(-6)],      [3225€ (-90€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [112(-10)],  [1710€ (-150€)],
      [*Totale*],                 [*-*],     [*55*],[*1220€*],[*591 (-55)*],[*11805€ (-1220€)*],
    ),
    didascalia: "Sprint 4 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati


=== Retrospettiva

//-----------

#pagebreak()
=== Sprint 5
Inizio: #h(1.99cm)*23-05-2025*\
Fine Prevista: #h(0.65cm)*06-06-2025*\
Fine Reale: #h(1.12cm)*06-06-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere



==== Rischi attesi

I possibili rischi :


==== Preventivo

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[5],[],[],[],[],[],
      [Mattia Dalla Pozza],[],[],[],[],[7],[],
      [Sebastiano Marana],[],[],[6],[],[],[],
      [Nicholas Moretto],[],[],[],[8],[],[],
      [Matteo Pretto],[],[],[],[],[7],[],
      [Alex Shu],[],[],[],[],[7],[],
      [Stefano Speranza],[],[4],[],[],[],[],
      [Ramona Zangla],[],[],[],[],[],[9],
  ),
  didascalia: "Sprint 5 - Preventivo ore per ciascun componente"
)
]


==== Consuntivo


#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
      [Nicolò Bolzon],[5],[],[],[],[],[],
      [Mattia Dalla Pozza],[],[],[],[],[7(-2)],[],
      [Sebastiano Marana],[],[],[6],[],[],[],
      [Nicholas Moretto],[],[],[],[8],[],[],
      [Matteo Pretto],[],[],[],[],[7(-2)],[],
      [Alex Shu],[],[],[],[],[7(-2)],[],
      [Stefano Speranza],[],[4],[],[],[],[],
      [Ramona Zangla],[],[],[],[],[],[9(+1)],
  ),
  didascalia: "Sprint 5 - Consuntivo ore per ciascun componente"
)
]


==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [47(-5)],   [1410€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [49(-4)],   [980€ (-80€)],
      [Analista#super[G]],        [25€/h],   [6],   [150€],   [13(-6)],    [325€ (-150€)],
      [Progettista#super[G]],     [25€/h],   [8],  [200€],   [116(-8)], [2900€ (-200€)],
      [Programmatore#super[G]],   [15€/h],   [15],   [225€],  [209(-15)],      [3130€ (-225€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [102(-10)],  [1560€ (-150€)],
      [*Totale*],                 [*-*],     [*48*],[*955€*],[*536 (-48)*],[*10585€ (-955€)*],
    ),
    didascalia: "Sprint 5 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati


=== Retrospettiva

//-----------

#pagebreak()
=== Sprint 6
Inizio: #h(1.99cm)*06-06-2025*\
Fine Prevista: #h(0.65cm)*20-06-2025*\
Fine Reale: #h(1.12cm)*20-06-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere



==== Rischi attesi

I possibili rischi :


==== Preventivo

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[8],[],
      [Mattia Dalla Pozza],[],[],[],[],[],[9],
      [Sebastiano Marana],[],[],[7],[],[],[],
      [Nicholas Moretto],[],[],[],[10],[],[],
      [Matteo Pretto],[],[],[],[],[8],[],
      [Alex Shu],[],[],[],[],[8],[],
      [Stefano Speranza],[5],[],[],[],[],[],
      [Ramona Zangla],[],[4],[],[],[],[],
  ),
  didascalia: "Sprint 6 - Preventivo ore per ciascun componente"
)
]


==== Consuntivo


#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
      [Nicolò Bolzon],[],[],[],[],[8(-2)],[],
      [Mattia Dalla Pozza],[],[],[],[],[],[9],
      [Sebastiano Marana],[],[],[7],[],[],[],
      [Nicholas Moretto],[],[],[],[10(-3)],[],[],
      [Matteo Pretto],[],[],[],[],[8(-2)],[],
      [Alex Shu],[],[],[],[],[8(-2)],[],
      [Stefano Speranza],[5],[],[],[],[],[],
      [Ramona Zangla],[],[4],[],[],[],[],
  ),
  didascalia: "Sprint 6 - Consuntivo ore per ciascun componente"
)
]


==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [42(-5)],   [1260€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [45(-4)],   [900€ (-80€)],
      [Analista#super[G]],        [25€/h],   [7],   [175€],   [7(-7)],    [175€ (-175€)],
      [Progettista#super[G]],     [25€/h],   [7],  [175€],   [108(-7)], [2700€ (-175€)],
      [Programmatore#super[G]],   [15€/h],   [18],   [270€],  [194(-18)],      [2905€ (-270€)],
      [Verificatore#super[G]],    [15€/h],   [9],   [135€],   [92(-9)],  [1410€ (-135€)],
      [*Totale*],                 [*-*],     [*50*],[*985€*],[*488 (-50)*],[*9630€ (-985€)*],
    ),
    didascalia: "Sprint 6 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati


=== Retrospettiva

//-----------

#pagebreak()
=== Sprint 7
Inizio: #h(1.99cm)*20-06-2025*\
Fine Prevista: #h(0.65cm)*04-07-2025*\
Fine Reale: #h(1.12cm)*04-07-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere



==== Rischi attesi

I possibili rischi :


==== Preventivo

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[4],[],[],[],[],
      [Mattia Dalla Pozza],[],[],[],[],[8],[],
      [Sebastiano Marana],[],[],[],[],[8],[],
      [Nicholas Moretto],[],[],[],[],[8],[],
      [Matteo Pretto],[],[],[],[],[],[10],
      [Alex Shu],[5],[],[],[],[],[],
      [Stefano Speranza],[],[],[],[],[8],[],
      [Ramona Zangla],[],[],[],[],[8],[],
  ),
  didascalia: "Sprint 7 - Preventivo ore per ciascun componente"
)
]


==== Consuntivo


#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [4], [], [], [], [],
    [Mattia Dalla Pozza],   [], [], [], [], [8], [],
    [Sebastiano Marana],    [], [], [], [], [8], [],
    [Nicholas Moretto],     [], [], [], [], [8], [],
    [Matteo Pretto],        [], [], [], [], [], [10],
    [Alex Shu],             [5], [], [], [], [], [],
    [Stefano Speranza],     [], [], [], [], [8], [],
    [Ramona Zangla],        [], [], [], [], [8], [],
  ),
  didascalia: "Sprint 7 - Consuntivo ore per ciascun componente"
)
]


==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [37(-5)],   [1110€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [41(-4)],   [820€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],   [-],   [0],    [0€],
      [Progettista#super[G]],     [25€/h],   [-],  [-],   [101], [2525€],
      [Programmatore#super[G]],   [15€/h],   [40],   [600€],  [176(-40)], [2635€ (-600€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [83(-10)],  [1275€ (-150€)],
      [*Totale*],                 [*-*],     [*59*],[*980€*],[*438 (-59)*],[*8645€ (-980€)*],
    ),
    didascalia: "Sprint 7 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati


=== Retrospettiva