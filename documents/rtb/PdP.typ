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

//TODO: Integrare indice delle tabelle dal PdQ, senti @sebamarana

#set heading(numbering: "1.1.")

= Introduzione
== Informazioni generali
Il *Piano di Progetto#super[G]* è un documento che definisce le modalità di gestione del progetto, le risorse necessarie e i rischi attesi.\ Il piano di progetto è un documento vivo, che viene aggiornato durante il ciclo di vita del progetto di *Ingegneria del Software*. Le sue attività, infatti, vengono pianificate volta per volta e le risorse richieste vengono allocate in base alle necessità. A ciò segue che una progettazione dettagliata sul lungo termine si rivelerebbe inefficace poichè sensibile#super[G] ad imprevisti ed esigenze del cliente#super[G] o di sviluppo.

Il documento è importante per permettere una corretta pianificazione del lavoro e dei vari sprint#super[G]. Tale pianificazione analizza il tempo previsto ed effettivo per ogni attività, tenendo conto dei rischi e delle risorse disponibili.

== Informazioni sul prodotto#super[G]
#v(1em)

Il progetto riguarda lo sviluppo di un sistema di gestione per magazzini distribuiti, con l'obiettivo di ottimizzare la gestione dell'inventario#super[G] in una rete#super[G] di magazzini geograficamente separati. Questo sistema deve garantire che i flussi di materiali e prodotti#super[G] tra i magazzini siano gestiti in tempo reale, evitando rotture di stock e migliorando la distribuzione delle scorte#super[G]. Il sistema dovrà anche ridurre i livelli medi di inventario#super[G], mantenendo però scorte#super[G] di sicurezza per gestire variazioni nella domanda o ritardi nelle consegne.

La soluzione proposta si baserà su un'architettura#super[G] a microservizi#super[G], che permetterà a ogni magazzino di gestire autonomamente il proprio inventario#super[G]; le informazioni, invece, verranno sincronizzate in tempo reale con un sistema centrale. Il sistema dovrà essere in grado di monitorare i livelli di inventario#super[G], gestire conflitti derivanti da aggiornamenti simultanei, implementare riassortimenti#super[G] predittivi basati su machine learning e garantire una visibilità centralizzata in tempo reale delle operazioni. Inoltre, saranno utilizzate tecnologie moderne e scalabili come Node.js, Typescript, Go, Nats e Docker, per garantire prestazioni elevate e l'interoperabilità tra i magazzini.

In sintesi, il progetto si propone di migliorare l’efficienza operativa della gestione logistica, riducendo i rischi legati alla gestione delle scorte#super[G] e ottimizzando i flussi tra i magazzini.




== Glossario#super[G]
La realizzazione di un software richiede, ancor prima dello sviluppo, una fase di analisi e progettazione. Dato che il lavoro durante questa fase è svolto da più persone e in modo asincrono, è necessario documentare tutte queste attività per tenere traccia di ciò che è stato fatto e per evitare confusione. 

Si potrà dedurre che questi documenti potrebbero contenere parole#super[G] o frasi che non sono di uso comune, scelte però per essere più specifiche ed evitare ambiguità. Per tale ragione, è stato creato un glossario#super[G] che contiene le definizioni di tali termini, al seguente #link("https://teamcodealchemists.github.io/glossario")[#underline[indirizzo]]. 

== Riferimenti   // Inserire riferimenti al capitolato#super[G] del progetto e a lezioni/slide del professore se necessario
- *Capitolato#super[G] d'appalto C6 - Gestione di un magazzino distribuito - _M31_*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")

  //TODO: da completare

#pagebreak()
= Analisi e gestione dei rischi
== Introduzione
#v(0.5em)
In questa sezione del documento vengono analizzati i principali rischi in cui il team potrebbe incorrere durante lo svolgimento
del progetto. Ad ognuno viene associata una valutazione della probabilità di occorrenza e gravità, oltre che ad una descrizione ed una sezione relativa al rilevamento e alle contromisure. 

// Infine ogni rischio viene associato ad un indice numerico consentendo quindi di determinarne la criticità di ciascuno facilmente.

== Definizione degli indici
#v(0.5em)
Per valutare nel migliore modo possibile i rischi sono stati definiti i seguenti campi:

//- *Indice*: un valore numerico che indica in modo univoco ogni rischio;

- *Tipo*: Rappresenta l'impatto che il rischio potrebbe avere sul progetto, ed è classificato in Basso, Medio o Alto;

- *Gravità*: Descrive le conseguenze che un rischio ha se si verifica#super[G], con l'eventuale possibilità di modifica alla pianificazione o al progetto;

- *Probabilità*: Indica, come da nome, la probabilità che il rischio si verifichi durante lo sviluppo del progetto.

#v(1em)
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

#v(1em)
== Suddivisione dei rischi // Potremmo invertire l'ordine#super[G] a quello inglese
#v(1em)

I rischi del progetto sono suddivisi in quattro categorie principali, in base al tipo di problematiche che potrebbero verificarsi:

- Rischi nell'organizzazione e gestione del progetto;

- Rischi nella comunicazione;

- Rischi individuali;

- Rischi di natura tecnologica.

Ogni rischio è identificato tramite un codice#super[G] univoco, strutturato come segue:

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
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
    [In primo luogo, grazie ad un impegno parallelo da parte del team di aggiornarsi ed imparare dove necessario. 
    In aggiunta dalla condivisone di materiale informativo/didattico e dall'organizzazione di riunioni/incontri 
    rivolti ad aiutare membri del team in difficoltà.],
  ),
  didascalia: "Tabella RT1"
)
#v(1em)

=== RT2 - Uso errato delle tecnologie
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
    [Studio più approfondito (da parte di uno o più membri del team) e mirato alle singole componenti del sistema  
    per ottenere una panoramica migliore al fine di risolvere il problema.],
  ),
  didascalia: "Tabella RT2"
)
#v(1em)

=== RT3 - Errori di codifica o programmazione
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
    [In caso di codice#super[G] non funzionante, il programmatore#super[G] cercherà di risolvere il problema approfondendo la tecnologia in uso e l'argomento al fine di trovare una soluzione indipendentemente. In caso di insuccesso, un sistema di ticket condiviso con gli altri programmatori#super[G] potrebbe aiutare a condividere informazioni per ottenere una soluzione alternativa. Se il problema dovesse diventare centrale, i programmatori#super[G] si impegneranno a lavorare assieme per la risoluzione.],
  ),
  didascalia: "Tabella RT3"
)
#v(1em)

=== RT4 - Rischio di supporto e versione delle tecnologie
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
    [RT4],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Rilevamento*],
    [Una parte del sistema smette di funzionare o si comporta in modo anomalo.],

    [*Contromisure*], 
    [Il team si impegna sin dall'inizio della progettazione architetturale di utilizzare tecnologie stabili
    e in vasto uso nel mercato. Allo stesso modo si procederà per gli endpoint delle API#super[G] messe a disposizione, al fine di ridurre al minimo le problematiche.],
  ),
  didascalia: "Tabella RT4"
)

== Rischi comunicativi
#v(1em)

=== RC1 - Tempi di risposta lunghi
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
    In più, grazie al sistema di sottoresponsabili#super[G] adottato, data la dimensione del team, la responsabilizzazione dei membri 
    ottenuta aiuterà a effettuare check-up frequenti dei restanti membri. Tale organizzazione garantisce quindi una comunicazione frequente e granulare.],
  ),
  didascalia: "Tabella RC1"
)
#v(1em)

=== RC2 - Incomprensione degli obbiettivi del team
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
    eventuali incomprensioni e risolverle al più presto. In particolare, la struttura a sottoresponsabili#super[G] e sottogruppi
    aiuterà a individuare più facilmente i membri in questione.],
  ),
  didascalia: "Tabella RC2"
)
#v(1em)

=== RC3 - Mancanza di comunicazione con l'azienda 
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
#v(1em)


== Rischio individuale //altri impegni e attività individuale
#v(1em)

=== RI1 - Impegni personali, universitari e indisponibilità
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
#v(1em)

=== RI2 - Scarsa collaborazione
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
    [Gli incontri regolari predisposti dal responsabile#super[G] del team aiuteranno a favorire il dialogo trasparente, la collaborazione e mantenere attivo l'impegno di ciascun membro. Inoltre la scala della responsabilità
    più granulare aiuterà ad avere un riscontro continuo più diretto.],
  ),
  didascalia: "Tabella RI2"
)
#v(1em)

=== RI3 - Difficoltà di "comprensione" o lavoro

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
    [I membri del team si impegnano a comunicare in modo trasparente e onesto difficoltà nello svolgere
    il lavoro assegnato, mentre i restanti si impegnano ad aiutare chi si trova in tale situazione.],
  ),
  didascalia: "Tabella RI3"
)
#v(1em)


== Rischio globale //valutare altri rischi
#v(1em)

=== RG1 - Incomprensione degli obbiettivi del capitolato#super[G] 
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
    al fine di individuare precisamente le richieste. Inoltre, si sono impegnati nell'avere una comunicazione frequente con l'azienda per chiarire eventuali incomprensioni.],
  ),
  didascalia: "Tabella RG1"
)
#v(1em)

=== RG2 - Pareri contrastanti
#v(1em)

#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
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
#v(1em)


== Tabella Riassuntiva
#v(1em)

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
#v(1em)

Di seguito vengono brevemente descritti i ruoli previsti all'interno del team, equamente distribuiti e ruotati tra i membri con cadenza bisettimanale. Ogni ruolo prevede specifiche mansioni e obiettivi:

- *Responsabile#super[G]*: coordina il gruppo di lavoro, assegnando i compiti, monitorando le attività e gestendo l’utilizzo delle risorse. Garantisce l’avanzamento del progetto e il rispetto delle tempistiche e delle risorse disponibili.


- *Amministratore#super[G]*: si occupa della gestione delle infrastrutture, incluso il setup degli strumenti utilizzati per la produzione del software e della documentazione. Si occupa anche dell’organizzazione e della produttività del team.


- *Analista#super[G]*: è responsabile#super[G] della definizione dei requisiti#super[G] di progetto e dell’analisi delle funzionalità del software, al fine di determinare i casi d’uso. Il suo contributo è fondamentale nella fase iniziale, per permettere una progettazione ottimale da parte dei progettisti#super[G]. Tale contributo permetterà in seguito una corretta implementazione da parte dei programmatori#super[G].


- *Progettista#super[G]*: definisce l’architettura#super[G] del software, individuando i componenti e le interazioni tra essi sulla base dell’analisi dei requisiti#super[G] fornita dagli analisti#super[G]. Il ruolo è cruciale per una progettazione efficace del prodotto#super[G], sia nella fase preliminare del Proof of Concept#super[G] (POC#super[G]), sia nella realizzazione del Minimum Viable Product (MVP).


- *Programmatore#super[G]*: sviluppa il codice#super[G] del software secondo l’architettura#super[G] definita dai progettisti#super[G]. Oltre a ricoprire il ruolo chiave nella realizzazione del prodotto#super[G], ha anche il compito implicito di validare le scelte effettuate da analisti#super[G] e progettisti#super[G].


- *Verificatore#super[G]*: controlla, durante tutte le fasi dello sviluppo, che il software e la documentazione rispettino le specifiche e le norme adottate. Il suo ruolo è essenziale per individuare tempestivamente eventuali errori o incongruenze.
#v(1em)

#pagebreak()
== Budget e risorse
#v(1em)

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
  #v(1em)
  Si riporta un grafico a torta raffigurante la ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili:

  #align(center)[
    #figure(
      image("assets/chart.png", width: 13cm),
      caption: [Ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili]
    )
  ]
*/

=== Distribuzione ore per membri

I componenti del Team CodeAlchemists si impegnano in particolare a dedicare un totale di 90 ore ciascuno di lavoro ripartite come segue:


 #align(center)[
    #{
    show table.cell: cl => if cl.x == 0 and cl.y != 0 {
      align(left, cl)
    } else if cl.x == 0 {
      align(bottom + left, cl)
    } else if cl.y == 0 {
      rotate(-45deg, reflow: false, align(left, cl))
    } else {
      align(bottom + center, cl)
    }
    figure(
      table(
        columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
        inset: 1.1em,
        stroke: (x, y) => if y >= 1 {
          1pt + black
        } else {
          none
        },
        table.header(
          [],
          [*Responsabile#super[G]*],
          [*Amministratore#super[G]*],
          [*Analista#super[G]*],
          [*Progettista#super[G]*],
          [*Programmatore#super[G]*],
          [*Verificatore#super[G]*],
          [*Totale*],
        ),
  
      [Nicolò Bolzon],[8],[8],[9],[19],[26],[20],[*90*],
      [Mattia Dalla Pozza],[8],[8],[9],[20],[29],[16],[*90*],
      [Sebastiano Marana],[8],[7],[10],[19],[28],[18],[*90*],
      [Nicholas Moretto],[9],[7],[10],[19],[28],[18],[*90*],
      [Matteo Pretto],[9],[8],[10],[19],[26],[18],[*90*],
      [Alex Shu],[8],[8],[9],[19],[26],[20],[*90*],
      [Stefano Speranza],[9],[7],[10],[20],[27],[17],[*90*],
      [Ramona Zangla],[8],[8],[9],[20],[29],[16],[*90*],
      [*Totale*],[*67*],[*61*],[*76*],[*156*],[*218*],[*142*],[*720*]
      ),
      caption: [Ore di ogni componente per ciascun ruolo],
    )
  }
]


== Attività previste per la Requirements and Technology Baseline#super[G] (RTB#super[G])
#v(1em)

Durante l'RTB#super[G] sono previste due attività principali:

  - Redazione di documenti;

  - Sviluppo.

La prima verrà portata avanti durante tutti gli sprint#super[G] a seconda
delle esigenze e necessità del momento.
La seconda verrà iniziata successivamente alla produzione di:
Analisi dei Requisiti#super[G]; Casi d'uso; Architettura#super[G] preliminare.

Di seguito vengono indicate le più nel dettaglio le principali 
attività previste durante la fase RTB#super[G] del progetto: 

#v(1em)
1. *Redazione Analisi dei Requisiti#super[G]* (in stesura)

  - Stesura della struttura;

  - Lettura accurata del capitolato#super[G];

  - Estrapolazione dei requisiti#super[G];

  - Creazione dei casi d'uso.

#v(1em)
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

#v(1em)
3. *Redazione piano di Qualifica#super[G]* (in stesura)

  - Stesura della struttura;

  - Metriche di monitoraggio#super[G];

  - Implementazione del cruscotto di valutazione;

    - aggiornamento continuo delle metriche.

  - Compilazione e ricerca per le considerazioni di miglioramento continuo;

  - Definizione di test sulla base dell'analisi dei requisiti#super[G]. 

#v(1em)
4. *Redazione Norme di progetto* (in stesura)

  - Stesura della struttura;
    - Test delle tecnologie scelte.

  - Processi Primari;

  - Processi di Supporto;

  - Processi Organizzativi;

  - Metriche utilizzate.

#v(1em)
5. *Redazione del Glossario#super[G]* (in stesura)

  - Stesura della struttura;

  - Aggiunta automatizzata dei termini.

#v(1em)
6. *Sviluppo POC#super[G] (Proof of concept#super[G])* (in stesura)

  - Definizione di una possibile architettura#super[G];
  
  - Sviluppo;

    - Magazzino locale;

    - Cloud;

    - Sistema centralizzato.























== Attività previste per la Product Baseline#super[G] (PB)
#v(1em)

La redazione di questo paragrafo sarà effettuato in seguito al superamento della
*Requirements and Technology Baseline#super[G] (RTB#super[G])*.

#pagebreak()
= Pianificazione nel breve termine
#v(1em)
== Introduzione
#v(1em)

A seguito del primo incontro di gruppo, il team _Code Alchemists_ ha deciso di impegnarsi ad adottare come strumento di sviluppo principale la metodologia *Agile#super[G]* per la gestione del progetto. 
In particolare, si è deciso di utilizzare il framework *Scrum#super[G]*, che prevede numerosi *sprint#super[G]*, 
ovvero periodi di tempo ben definiti in cui il team si impegna a concentrarsi su un insieme finito di attività specifiche.\
Il team ha deciso di adottare una durata dello sprint#super[G] pari a *2 settimane*; ciò aiuterà ad ottenere un buon bilanciamento#super[G] tra pianificazione e esecuzione delle attività. 
Inoltre, durante ogni sprint#super[G] verranno effettuate diverse riunioni per discutere sia i progressi di ogni membro e le difficoltà riscontrate. Queste riunioni permettono una comunicazione continua tra i membri e una rapida risoluzione dei problemi che potrebbero insorgere.\
#v(1em)

Il team ha deciso di utilizzare un approccio *iterativo#super[G]* e di miglioramento *incrementale#super[G]*, 
per permettere di adattare il lavoro in base alle esigenze del cliente#super[G], feedback ricevuti e necessità. 
Inoltre, si è deciso di utilizzare un *gestore di attività*, in particolare JIRA, per *tracciare il lavoro svolto e le scadenze*.
Questo garantirà innanzitutto una buona gestione del progetto, ma anche una migliore pianificazione, riducendo al minimo i potenziali rischi e massimizzando le possibilità di successo.
#v(1em)

Inoltre alcune particolari caratteristiche che il team ha deciso di adottare dopo un primo periodo di prova includono:

- L'uso di sottoresponsabili informali per responsabilizzare maggiormente più membri e ottenere una comunicazione più efficace e diretta;
- La redazione di una "Lettera di sprint#super[G]" da parte del responsabile#super[G] entrante per definire meglio gli obbiettivi attuali, la quale viene redatta e diventa presenta almeno il giorno prima dell'inizio del nuovo sprint#super[G];
- Un cambio di ruoli per sprint#super[G] basato sul ruolo della persona e dalle competenze ottenute nello sprint#super[G] appena terminato.
   Questo permette in particolare, oltre a ruotare i ruoli tra i membri, di svolgere una transizione molto più fluida e funzionale tra sprint#super[G].
#v(1em)

Infine il team si impegna a *concordare riunioni periodiche* con l'azienda proponente del progetto _M31_ 
per discutere progressi ed eventuali modifiche in corso d'opera. 
Le riunioni garantiranno che il lavoro svolto sia in coerente con le aspettative 
del cliente#super[G] e per ottenere feedback su quanto realizzato.

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
== Requirements and Technology Baseline#super[G] (RTB#super[G])
#v(1em)
=== Sprint#super[G] 1    //mantenere le seguenti distanze
#v(1em)
Inizio: #h(1.99cm)*28-03-2025*\
Fine Prevista: #h(0.65cm)*11-04-2025*\
Fine Reale: #h(1.12cm)*11-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

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
#v(1em)

I possibili rischi :
- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RI1: Rischio Individuale derivante dalle altre attività;
- RG1: Rischio Globale derivato da incomprensione del capitolato#super[G] ;
- RG2: Rischio Globale legato a pareri contrastanti.

==== Preventivo
#v(1em)
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
  didascalia: "Sprint#super[G] 1 - Preventivo ore per ciascun componente"
)
]
#v(1em)

==== Consuntivo

#v(1em)
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
  didascalia: "Sprint#super[G] 1 - Consuntivo ore per ciascun componente"
)
]
#v(1em)

==== Aggiornamento delle risorse rimanenti  

#v(1em)
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
    didascalia: "Sprint#super[G] 1 - Aggiornamento delle risorse disponibili"
  )
]
==== Rischi incontrati
#v(1em)

Durante questo primo sprint#super[G] abbiamo avuto principalmente
difficoltà con una distribuzione dell'impegno non
completamente equo. L'indisponibilità di un membro del team ha 
portato gli altri membri a dover ulteriormente assorbire 
il lavoro in eccesso.

Alcuni rallentamenti inoltre sono stati dovuti ad un primo periodo
di approccio a JIRA da parte del gruppo non efficiente. Questi rallentamenti sono stati dunque dovuti all'inesperienza
dell'utilizzo dello strumento e in aggiunta ad un 
organizzazione degli incontri più spontanea e meno organizzata.

=== Retrospettiva
#v(1em)

Durante lo sprint#super[G] ci siamo dedicati principalmente ad una prima impostazione del progetto. Per primo, è stata organizzata la repo GitHub e sono state create delle automazioni. Ci si è concentrati anche sulla progettazione di una prima ipotesi architetturale/tecnologica a caldo e alla prima stesura dei documenti necessari con un discreto successo.
Non siamo riusciti, tuttavia, a rendere l'ipotesi architetturale definitiva, in quanto effettuata precedentemente a una ricerca dello stato dell'arte approfondita, e quindi da una scarsità di informazioni.

=== Sprint#super[G] 2
#v(1em)
Inizio: #h(1.99cm)*11-04-2025*\
Fine Prevista: #h(0.65cm)*24-04-2025*\
Fine Reale: #h(1.12cm)*24-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

Questo secondo sprint#super[G] ha avuto principalmente come obbiettivo la continuazione e il miglioramento di quanto iniziato nel primo sprint#super[G], sulla base di quanto discusso con l'azienda proponente.

In particolare, le attività previste sono:

- Analisi allo stato dell'arte;
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
#v(1em)

I possibili rischi:
- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RI1: Rischio Individuale derivante dalle altre attività;
- RG2: Rischio Globale legato a pareri contrastanti.

==== Preventivo 
#v(1em)
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
  didascalia: "Sprint#super[G] 2 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#v(1em)
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
  didascalia: "Sprint#super[G] 2 - Preventivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti 
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]], [30€/h], [5], [150€], [62 (-5)], [1860€ (-150€)],
      [Amministratore#super[G]], [20€/h], [4], [80€], [61 (-4)], [1220€ (-80€)],
      [Analista#super[G]], [25€/h], [17], [500€], [51 (-17)], [1275€ (-425€)],
      [Progettista#super[G]], [25€/h], [-], [-], [156], [3900€],
      [Programmatore#super[G]], [15€/h], [-], [-], [215], [3225€],
      [Verificatore#super[G]], [15€/h], [9], [135€], [130 (-9)], [1980€ (-135€)],
      [*Totale*], [*-*], [*38*], [*865€*], [*675 (-43)*], [*13460€ (-790€)*],
  ),
    didascalia: "Sprint#super[G] 1 - Aggiornamento delle risorse disponibili"
  )
]
#v(1em)

==== Rischi incontrati
#v(1em)

Il principale rischio di questo secondo sprint#super[G] è stato il lungo periodo di festività, come quello pasquale, che ha rallentato notevolmente il progresso di tutte le attività attese.

Inoltre, si è riscontata una difficoltà nell'identificare con decisione i principali punti su cui concentrarsi per avanzare nella produzione di un POC#super[G]. Tale difficoltà ha portato il team ad effettuare un analisi dello stato dell'arte, posponendo quindi l'avanzamento dell'ipotesi architetturale e quindi della produzione stessa del POC#super[G].


=== Retrospettiva
#v(1em)

Le difficoltà incontrare hanno portato alla luce come fosse e sia essenziale avere una migliore panoramica dell'ambito di sviluppo del progetto. Si è inoltre notato come sviluppare parallelamente una prima base di POC#super[G] sia essenziale al fine stesso di capire meglio il contesto e identificare in anticipo eventuali problemi.


=== Sprint#super[G] 3
#v(1em)
Inizio: #h(1.99cm)*25-04-2025*\
Fine Prevista: #h(0.65cm)*09-05-2025*\
Fine Reale: #h(1.12cm)*Da inserire*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

In particolare, le attività previste sono:

- Termine architettura#super[G] POC#super[G];
- Continuazione stesura documenti;
  - Piano di progetto;
  - Piano di qualifica#super[G];
  - Glossario#super[G];
  - Analisi dei requisiti#super[G];
  - Norme di progetto.


==== Rischi attesi
#v(1em)

I possibili rischi :
- RI1: Rischio Individuale derivante dalle altre attività.



==== Preventivo
#v(1em)
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[-],[],[],[],
      [Mattia Dalla Pozza],[],[-],[],[],[],[],
      [Sebastiano Marana],[],[],[],[],[],[-],
      [Nicholas Moretto],[-],[],[],[],[],[],
      [Matteo Pretto],[],[],[-],[],[],[],
      [Alex Shu],[],[],[-],[],[],[],
      [Stefano Speranza],[],[],[],[-],[],[],
      [Ramona Zangla],[],[],[],[-],[],[],
  ),
  didascalia: "Sprint#super[G] 3 - Preventivo ore per ciascun componente"
)
]
#v(1em)

==== Consuntivo

#v(1em)
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
      [Nicolò Bolzon],[],[],[-],[],[],[],
      [Mattia Dalla Pozza],[],[-],[],[],[],[],
      [Sebastiano Marana],[],[],[],[],[],[-],
      [Nicholas Moretto],[-],[],[],[],[],[],
      [Matteo Pretto],[],[],[-],[],[],[],
      [Alex Shu],[],[],[-],[],[],[],
      [Stefano Speranza],[],[],[],[-],[],[],
      [Ramona Zangla],[],[],[],[-],[],[],
  ),
  didascalia: "Sprint#super[G] 3 - Consuntivo ore per ciascun componente"
)
]
#v(1em)

==== Aggiornamento delle risorse rimanenti  
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]], [30€/h], [], [], [], [],
      [Amministratore#super[G]], [20€/h], [], [], [], [],
      [Analista#super[G]], [25€/h], [], [], [], [],
      [Progettista#super[G]], [25€/h], [], [], [], [],
      [Programmatore#super[G]], [15€/h], [], [], [], [],
      [Verificatore#super[G]], [15€/h], [], [], [], [],
      [*Totale*], [*-*], [**], [**], [**], [**],
  ),
    didascalia: "Sprint#super[G] 3 - Aggiornamento delle risorse disponibili"
  )
]
#v(1em)

==== Rischi incontrati
#v(1em)

=== Retrospettiva
#v(1em)
