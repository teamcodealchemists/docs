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
#let status = "Approvato"
#let destinatario = "M31"
#let versione = "2.0.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
 
  [2.0.0],
  [14/09/2025],
  [R. Zangla],
  [S. Speranza],
  [Approvazione del documento.], 

  [1.4.0],
  [12/09/2025],
  [N. Moretto],
  [S. Speranza],
  [Completamento Sprint 12.],

  [1.3.0],
  [18/08/2025],
  [N. Bolzon],
  [N. Moretto],
  [Aggiunta del contenuto: Sprint 11, preventivo e pianificazione Sprint 12.], 

  [1.2.1],
  [18/08/2025],
  [N. Bolzon],
  [M. Dalla Pozza],
  [Piccola correzione grafica di visualizzazione tabelle Sprint 10.],  
  
  [1.2.0],
  [18/08/2025],
  [N. Bolzon],
  [M. Dalla Pozza],
  [Aggiunta del contenuto: Sprint 10, preventivo e pianificazione Sprint 11.],

  [1.1.0],
  [01/08/2025],
  [N. Bolzon],
  [S. Marana],
  [Aggiunta del contenuto: Sprint 9, preventivo e pianificazione Sprint 10.],

  [1.0.0],
  [16/07/2025],
  [M. Dalla Pozza],
  [N. Bolzon],
  [Rivisitazione contenuti Sprint],

  [0.8.0],
  [15/07/2025],
  [N. Moretto],
  [N. Bolzon],
  [Aggiunta del contenuto: Sprint 8, preventivo e pianificazione Sprint 9.],

  [0.7.0],
  [04/07/2025],
  [N. Moretto],
  [M. Pretto],
  [Aggiunta del contenuto: Sprint 7, preventivo e pianificazione Sprint 8.],
  

  [0.6.0],
  [20/06/2025],
  [R. Zangla],
  [M. Dalla Pozza],
  [Aggiunta del contenuto: Sprint 6. Preventivo e pianificazione Sprint 7.],


  [0.5.0],
  [06/06/2025],
  [S. Speranza],
  [R. Zangla],
  [Aggiunta del contenuto: Sprint 5. Preventivo e pianificazione Sprint 6.],

  [0.4.0],
  [25/05/2025],
  [S. Speranza],
  [R. Zangla],
  [Aggiunta del contenuto: Sprint 3 e Sprint 4. Preventivo e pianificazione Sprint 5.],

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
#v(1em)

Il *Piano di Progetto#super[G]* è un documento che definisce le modalità di gestione del progetto, le risorse necessarie e i rischi attesi.\ Il piano di progetto è un documento vivo, che viene aggiornato durante il ciclo di vita del progetto di *Ingegneria del Software*, in quanto le attività vengono pianificate volta per volta e le risorse vengono allocate in base alle necessità. Una progettazione dettagliata sul lungo termine, infatti, si rivelerebbe inefficace in quanto sensibile#super[G] ad imprevisti ed esigenze del cliente#super[G] o di sviluppo.

Il documento è importante per permettere una corretta pianificazione del lavoro e dei vari sprint#super[G]. Tale pianificazione analizza il tempo previsto ed effettivo per ogni attività, tenendo conto dei rischi e delle risorse disponibili.

== Informazioni sul prodotto
#v(1em)

Il progetto riguarda lo sviluppo di un sistema di gestione per magazzini distribuiti, con l'obiettivo di ottimizzare la gestione dell'inventario#super[G] in una rete di magazzini geograficamente separati. Questo sistema deve garantire che i flussi di materiali e prodotti tra i magazzini siano gestiti in tempo reale, evitando rotture di stock e migliorando la distribuzione delle scorte#super[G]. Il sistema dovrà anche ridurre i livelli medi di inventario#super[G], mantenendo però scorte#super[G] di sicurezza per gestire variazioni nella domanda o ritardi nelle consegne.

La soluzione proposta si baserà su un'architettura#super[G] a microservizi#super[G], che permetterà a ogni magazzino di gestire autonomamente il proprio inventario#super[G], mentre le informazioni verranno sincronizzate in tempo reale con un sistema centrale. Il sistema dovrà essere in grado di monitorare i livelli di inventario#super[G], gestire conflitti derivanti da aggiornamenti simultanei, implementare riassortimenti#super[G] predittivi basati su machine learning e garantire una visibilità centralizzata in tempo reale delle operazioni. Inoltre, saranno utilizzate tecnologie moderne e scalabili come Nest js, Typescript, NATS e Docker, per garantire prestazioni elevate e l'interoperabilità tra i magazzini.

In sintesi, il progetto si propone di migliorare l'efficienza operativa della gestione logistica, riducendo i rischi legati alla gestione delle scorte#super[G] e ottimizzando i flussi tra i magazzini.




== Glossario#super[G]
#v(1em)

La realizzazione di un software richiede, ancor prima dello sviluppo, una fase di analisi e progettazione. Dato che il lavoro durante questa fase è svolto da più persone e in modo asincrono, è necessario documentare tutte queste attività per tenere traccia di ciò che è stato fatto e per evitare confusione. 

Si potrà dedurre che questi documenti potrebbero contenere parole#super[G] o frasi che non sono di uso comune, scelte però per essere più specifiche ed evitare ambiguità. Per tale ragione, è stato creato un glossario#super[G] che contiene le definizioni di tali termini, al seguente #link("https://teamcodealchemists.github.io/glossario")[#underline[indirizzo]]. 

#pagebreak()

== Riferimenti
=== Riferimenti normativi
- *Capitolato#super[G] d'appalto C6 - Gestione di un magazzino distribuito - _M31_*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")
  \ Ultimo Accesso: 14 settembre 2025

- *Processi di ciclo di vita del software*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")
  \ Ultimo Accesso: 14 settembre 2025

- *Gestione di progetto*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")
  \ Ultimo Accesso: 14 settembre 2025

=== Riferimenti informativi
- *Glossario#super[G]* \
  #underline[#link("https://teamcodealchemists.github.io/glossario.html")]
  \ Ultimo Accesso: 14 settembre 2025

- *Piano di Qualifica#super[G]* \
  #underline[#link("https://teamcodealchemists.github.io/docs/pb/PdQ.pdf")]
  \ Ultimo Accesso: 14 settembre 2025

- *Norme di Progetto* \
  #underline[#link("https://teamcodealchemists.github.io/docs/pb/NdP.pdf")]
  \ Ultimo Accesso: 14 settembre 2025

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
#v(1em)


I rischi del progetto sono suddivisi in quattro categorie principali, in base al tipo di problematiche che potrebbero verificarsi:

- Rischi nell'organizzazione e gestione del progetto;

- Rischi nella comunicazione;

- Rischi individuali;

- Rischi di natura tecnologica.

Ogni rischio è identificato tramite un codice#super[G] univoco, strutturato come segue:

#align(center, block[*R[Categoria][Indice] - [Nome]*])

Dove:

+ *Categoria*: Rappresenta il tipo di rischio, che puo essere:

  - *P*: per i rischi di pianificazione;

  - *C*: per i rischi comunicativi;

  - *I*: per i rischi individuali;

  - *T*: per i rischi tecnologici.

+ *Indice*: ID progressivo unico all'interno della categoria.

+ *Nome*: Una descrizione basilare del rischio

== Rischi tecnologici //tecnologie utilizzate ed eventuali errori

=== RT1 - Inesperienza nell'uso delle tecnologie


#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
    [RT1],

    [*Gravità*],
    [Bassa],

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


=== RT2 - Uso errato delle tecnologie


#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
    [RT2],

    [*Gravità*],
    [Media],

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
    e in vasto uso nel mercato, come anche gli endpoint delle API#super[G] messe a disposizione, al fine di ridurre
    al minimo l'eventualità del problema.],
  ),
  didascalia: "Tabella RT4"
)

== Rischi comunicativi
#v(1em)


=== RC1 - Tempi di risposta lunghi


#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
    [RC1],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Media],

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
    eventuali incomprensioni e risolverle al più presto. In particolare la struttura a sottoresponsabili e sottogruppi
    aiuterà a individuare più facilmente i membri in questione.],
  ),
  didascalia: "Tabella RC2"
)


=== RC3 - Mancanza di comunicazione con l'azienda 


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



== Rischio individuale //altri impegni e attività individuale
#v(1em)

=== RI1 - Impegni personali, universitari e indisponibilità


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


=== RI2 - Scarsa collaborazione


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
    [Gli incontri regolari predisposti dal responsabile#super[G] del team aiuteranno a favorire il dialogo trasparente, la collaborazione e 
    mantenere attivo l'impegno di ciascun membro. Inoltre la scala della responsabilità
    più granulare aiuterà ad avere un riscontro continuo più diretto.],
  ),
  didascalia: "Tabella RI2"
)


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
    [I membri del team si impegnano a comunicare in modo trasparente e onesto le difficoltà nello svolgere
    il lavoro assegnato, mentre i restanti si impegnano ad aiutare chi si trova in tale situazione.],
  ),
  didascalia: "Tabella RI3"
)



== Rischio globale //valutare altri rischi
#v(1em)

=== RG1 - Incomprensione degli obbiettivi del capitolato#super[G] 


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
    al fine di individuare precisamente le richieste, nonché di avere una comunicazione frequente con l'azienda per 
    individuare eventuali incomprensioni.],
  ),
  didascalia: "Tabella RG1"
)


=== RG2 - Pareri contrastanti


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



== Tabella Riassuntiva
#v(1em)

#tabella_riassuntiva_rischi(
  dati: (
    [RT1],[Inesperienza nell'uso delle tecnologie nel progetto.],[Bassa],[Media],
    [RT2],[Utilizzo errato o non ottimale delle tecnologie.],[Media],[Media],
    [RT3],[Errori di programmazione.],[Bassa],[Alta],
    [RT4],[Supporto e versione delle tecnologie.],[Alta],[Bassa],
    [RC1],[Tempi di risposta lunghi.],[Media],[Media],
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
#v(1em)
== Struttura del team
#v(1em)

Di seguito vengono brevemente descritti i ruoli previsti all'interno del team, equamente distribuiti e ruotati tra i membri con cadenza bisettimanale. Ogni ruolo prevede specifiche mansioni e obiettivi:

- *Responsabile#super[G]*: coordina il gruppo di lavoro, assegnando i compiti, monitorando le attività e gestendo l’utilizzo delle risorse. Garantisce l’avanzamento del progetto e il rispetto delle tempistiche e delle risorse disponibili.


- *Amministratore#super[G]*: si occupa della gestione delle infrastrutture, incluso il setup degli strumenti utilizzati per la produzione del software e della documentazione, nonché dell’organizzazione e della produttività del team.


- *Analista#super[G]*: è responsabile della definizione dei requisiti#super[G] di progetto e dell’analisi delle funzionalità del software, al fine di determinare i casi d’uso. Il suo contributo è fondamentale nella fase iniziale, per permettere una progettazione ottimale da parte dei progettisti#super[G] e, successivamente, una corretta implementazione da parte dei programmatori#super[G].


- *Progettista#super[G]*: definisce l’architettura#super[G] del software, individuando i componenti e le interazioni tra essi sulla base dell’analisi dei requisiti#super[G] fornita dagli analisti#super[G]. Il ruolo è cruciale per una progettazione efficace del prodotto, sia nella fase preliminare del Proof of Concept#super[G] (POC#super[G]), sia nella realizzazione del Minimum Viable Product (MVP).


- *Programmatore#super[G]*: sviluppa il codice#super[G] del software secondo l’architettura#super[G] definita dai progettisti#super[G]. Oltre a ricoprire il ruolo chiave nella realizzazione del prodotto, ha anche il compito implicito di validare le scelte effettuate da analisti#super[G] e progettisti#super[G].


- *Verificatore#super[G]*: controlla, durante tutte le fasi dello sviluppo, che il software e la documentazione rispettino le specifiche e le norme adottate. Il suo ruolo è essenziale per individuare tempestivamente eventuali errori o incongruenze.


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
  
  Si riporta un grafico a torta raffigurante la ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili:

  #align(center)[
    #figure(
      image("assets/chart.png", width: 13cm),
      caption: [Ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili]
    )
  ]
*/


== Attività previste per la Requirements and Technology Baseline (RTB)
#v(1em)

Durante l'RTB#super[G] sono previste due attività principali:

  - Redazione di documenti;

  - Sviluppo.

La prima verra portata avanti durante tutti gli sprint#super[G] a seconda delle esigenze e necessità del momento.
La seconda verra iniziata successivamente alla produzione di:\
- Analisi dei Requisiti#super[G] ; 
- Casi d'uso; 
- Architettura#super[G] preliminare.

Di seguito vengono indicate le più nel dettaglio le principali 
attività previste durante la fase RTB#super[G] del progetto: 

#v(1em)
1. *Redazione Analisi dei Requisiti#super[G]* (in stesura)

  - Stesura della struttura;

  - Lettura accurata del capitolato#super[G] ;

  - Estrapolazione dei requisiti#super[G] ;

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

  - Metriche di monitoraggio#super[G] ;

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

5. *Redazione del Glossario#super[G]* (in stesura)
  - Stesura della struttura;

  - Aggiunta automatizzata dei termini.

6. *Sviluppo POC#super[G] (Proof of concept#super[G])* (in stesura)

  - Definizione di una possibile architettura#super[G] ;
  
  - Sviluppo;

    - Magazzino locale;

    - Cloud;

    - Sistema centralizzato.

== Attività previste per la Product Baseline (PB)
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
ovvero periodi di tempo ben definiti da una data di inizio e una data di fine in cui il team 
si impegna a concentrarsi su un insieme specifico e finito di attività.\
Il team ha deciso di utilizzare una durata dello sprint#super[G] pari a *2 settimane*, 
questo aiutera ad ottenere un buon bilanciamento tra pianificazione e esecuzione delle attività. 
Inoltre durante ogni sprint#super[G], verranno effettuate diverse riunioni per discutere
sia i progressi di ogni membro e le difficoltà riscontrate, per permettere una comunicazione continua tra i membri
e una rapida risoluzione dei problemi che potrebbero insorgere.\
#v(1em)

Il team ha deciso di utilizzare un approccio *iterativo#super[G]* e di miglioramento *incrementale#super[G]*, 
per permettere di adattare il lavoro in base alle esigenze del cliente#super[G], feedback ricevuti e necessità. 
Inoltre, si è deciso di utilizzare un *gestore di attività*, in particolare JIRA, per 
*tracciare il lavoro svolto e le scadenze*.
Questo garantirà innanzitutto una buona gestione del progetto ma anche una migliore pianificazione, 
riducendo al minimo i potenziali rischi e massimizzando le possibilità di successo.
#v(1em)

Inoltre alcune particolari caratteristiche che il team ha deciso di adottare dopo un primo periodo di prova includono:

- L'uso di sottoresponsabili informali per responsabilizzare maggiormente più membri e ottenere una comunicazione più efficace e diretta;

- La redazione di una "Lettera di sprint#super[G]" da parte del responsabile#super[G] entrante per definire meglio gli obbiettivi attuali, la quale
   viene redatta e presentata almeno il giorno prima dell'inizio del nuovo sprint#super[G];

- Un cambio di ruoli per sprint#super[G] basato sul ruolo della persona e dalle competenze ottenute nello sprint#super[G] appena terminato.
   Questo permette in particolare, oltre a ruotare i ruoli tra i membri, di svolgere una transizione molto più fluida e funzionale tra sprint#super[G].
#v(1em)

Infine il team si impegna a *concordare riunioni periodiche* con l'azienda proponente del progetto _M31_ 
per discutere progressi ed eventuali modifiche in corso d'opera. 
Le riunioni garantiranno che il lavoro svolto rimanga coerente con le aspettative 
del cliente#super[G] ottenendo feedback su quanto realizzato.

#pagebreak()
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

=== Sprint 1    //mantenere le seguenti distanze
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
#v(1em)


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
    didascalia: "Sprint - Aggiornamento delle risorse disponibili"
  )
]
#pagebreak()

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

==== Retrospettiva
#v(1em)

Durante lo sprint#super[G] ci siamo dedicati principalmente ad una prima impostazione del
progetto, tramite automazioni e organizzazione github, alla progettazione di una
prima ipotesi architetturale/tecnologica a caldo e alla prima stesura
dei documenti necessari con un discreto successo, almeno come primo inizio di progetto.
Non siamo riusciti tuttavia a rendere l'ipotesi architetturale definitiva, in quanto
effettuata precedentemente da una ricerca dello stato dell'arte approfondita e quindi
da una scarsità di informazioni.

#pagebreak()
=== Sprint 2
#v(1em)

Inizio: #h(1.99cm)*11-04-2025*\
Fine Prevista: #h(0.65cm)*24-04-2025*\
Fine Reale: #h(1.12cm)*24-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

Questo secondo sprint#super[G] ha avuto principalmente come obbiettivo la continuazione
e il miglioramento di quanto iniziato nel primo sprint#super[G] basandoci inoltre
su quanto discusso con l'azienda proponente.

In particolare, le attività previste sono:

- Analisi dello stato dell'Arte;
- Continuazione dell'ipotesi architetturale e tecnologica;
  - Approfondimento delle tecnologie proposte.
- Redazione dei casi d'uso;
- Continuazione del Glossario#super[G] ;
- Continuazione delle Norme di Progetto;
- Continuazione del Piano di Progetto;
- Continuazione dell'Analisi dei Requisiti#super[G] ;
- Miglioramento dell'utilizzo di JIRA ;
- Automazioni Github.


==== Rischi attesi
#v(1em)

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
#v(1em)
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
      [*Totale*], [*-*], [*38*], [*790€*], [*675 (-35)*], [*13460€ (-790€)*],
  ),
    didascalia: "Sprint 2 - Aggiornamento delle risorse disponibili"
  )
]

#pagebreak()
==== Rischi incontrati
#v(1em)

Il principale rischio di questo secondo sprint#super[G] è stato il lungo periodo 
di festività, come quello pasquale, che ha rallentato notevolmente
il progresso di tutte le attività attese.

Inoltre, un'iniziale difficoltà nell'identificare con decisione i principali
punti su cui concentrarsi per avanzare nella produzione di un POC#super[G] hanno portato
il team ad effettuare un'analisi dello stato dell'arte, posponendo quindi l'avanzamento
dell'ipotesi architetturale e quindi della produzione stessa del POC#super[G].


==== Retrospettiva
#v(1em)

Le difficoltà incontrare hanno portato alla luce come fosse e sia essenziale avere una
migliore panoramica dell'ambito di sviluppo del progetto, e di come iniziare a sviluppare
parallelamente una prima base di POC#super[G] sia essenziale al fine stesso di capire meglio
il contesto e identificare in anticipo eventuali ambiguità.


#pagebreak()
=== Sprint 3
#v(1em)

Inizio: #h(1.99cm)*25-04-2025*\
Fine Prevista: #h(0.65cm)*09-05-2025*\
Fine Reale: #h(1.12cm)*09-05-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

In particolare, le attività previste sono:

- Inizio sviluppo architettura#super[G] POC#super[G] ;
- Continuazione stesura documenti;
  - Piano di progetto;
  - Piano di qualifica#super[G] ;
  - Glossario#super[G] ;
  - Analisi dei requisiti#super[G] ;
  - Norme di progetto.


==== Rischi attesi
#v(1em)

I possibili rischi :
- RI1: Rischio Individuale derivante dalle altre attività.
- RI1: Rischio Individuale derivante dalle altre attività;
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
#v(1em)

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
      [*Totale*], [*-*], [*49*], [*1140€*], [*640 (-49)*], [*12670€ (-1140€)*],
  ),
    didascalia: "Sprint 3 - Aggiornamento delle risorse disponibili"
  )
]
#pagebreak()

==== Rischi incontrati
#v(1em)

Durante lo sprint gli analisti hanno riscontrato un problema con un membro del sottoteam, il quale non si è distinto per il suo lavoro svolto. \

Gli analisti infatti ritengono che oltre ad aver consegnato in modo frettoloso casi d'uso non completamente analizzati, ha partecipato poco attivamente alle attività di analisi e ha fornito un contributo insignificante al lavoro del team. 

==== Retrospettiva
#v(1em)

Durante il terzo sprint, il team si è concetrato  principalmente su attività di progettazione e sviluppo architetturale relative al POC.

Durante la prima settimana i progettisti, hanno progettato un'ipotesi di architettura del PoC#super[G] sulla base dell'analisi dello stato dell'arte svolto in precedenza.
Tale architettura è stata poi presentata a _M31_ durante la riunione del *05/05/2025*, dove sono stati chiarti dubbi e domande emerse durante l'analisi dei requisiti ed è stata migliorata l'organizazzione della comunicazione.\

Durante la seconda settimana dello sprint, i progettisti hanno modellato l'ipotesi di architettura del PoC#super[G] sulla base dei feedback ricevuti da _M31_, trovando una soluzione che potrebbe essere definitiva. \

Il lavoro non è ancora concluso, in quanto ci sono ancora alcuni aspetti da definire e da chiarire, i progettisti quindi hanno dichiarato di voler concludere l'attività di progettazione dell'architettura durante lo sprint successivo. \

In parallelo tuttavia è continuata la redazione dei documenti come inizialmente previsto.

Per quanto riguarda infine il rischio riscontrato il team ha deciso di cercare un riscontro diretto con questo membro e se non dovessero esserci miglioramenti risulterà necessario prendere provvedimenti. \

Viste le conclusioni dei vari lavori, e l'imminente inizio del PoC#super[G], si è deciso di introdurre un nuovo ruolo nel team: il *programmatore#super[G]*.\Durante questo sprint#super[G], gli analisti hanno riscontrato che il tempo inizialmente previsto non era sufficiente per completare tutte le attività richieste. Per questo motivo, hanno deciso di dedicare più tempo al lavoro di gruppo, collaborando più strettamente per portare a termine la stesura dei documenti e l'analisi dei requisiti#super[G]. 

Inoltre, vista la complessità emersa nella fase di progettazione, il team ha ritenuto opportuno confermare uno dei progettisti anche per lo sprint#super[G] successivo, così da garantire continuità e approfondire ulteriormente le scelte architetturali già avviate.

//-----------

#pagebreak()
=== Sprint 4
#v(1em)

Inizio: #h(1.99cm)*09-05-2025*\
Fine Prevista: #h(0.65cm)*23-05-2025*\
Fine Reale: #h(1.12cm)*23-05-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

Le attività previste sono:

- Continuazione dello sviluppo dell'architettura#super[G] ad alto livello;
- Creazione della Repository per il POC#super[G] ;
- Primo studio delle tecnologie per il POC#super[G] ;
- Continuazione della stesura dei documenti:
  - Piano di progetto;
  - Piano di qualifica#super[G] ;
  - Glossario#super[G] ;
  - Analisi dei requisiti#super[G] ;
  - Norme di progetto;

==== Rischi attesi
#v(1em)

I possibili rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato delle tecnologie;
- RI1: Rischio Individuale derivante dalle altre attività;
- RG2: Rischio Globale legato a pareri contrastanti.


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
#v(1em)

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
      [*Totale*],                 [*-*],     [*55*],[*1220€*],[*591 (-55)*],[*11530€ (-1220€)*],
    ),
    didascalia: "Sprint 4 - Aggiornamento delle risorse disponibili"
  )
]
#pagebreak()

==== Rischi incontrati
#v(1em)
Durante questo sprint#super[G] non sono emersi rischi critici, ma si sono riscontrati alcuni problemi minori di progettazione dovuti a difficoltà tecnologiche e a pareri contrastanti tra i membri del team sulle scelte architetturali. Queste situazioni sono state gestite tramite confronto diretto e approfondimenti tecnici condivisi.

==== Retrospettiva
#v(1em)

  Come stabilito i progettisti#super[G] hanno continuato l'attività di definizione dell'architettura#super[G] per il PoC#super[G]. \

  In particolare l'amministratore#super[G] ha studiato autonomamente i vari ambienti di sviluppo (come NATS, Docker, ...) cercando di comprendere il funzionamento e documentarlo per trasmettere quando appreso ai membri del Team tramite documenti facilitando poi quindi l'inizio dello sviluppo del PoC#super[G]. 

  Gli analisti#super[G] hanno continuato *l'analisi dei casi d'uso* la quale si è resa più dispendiosa del previsto. Si è cercato di adottare delle migliorie in due diverse modalità: migliorando la leggibilità della tabella e rendendo i requisiti#super[G] meno prolissi cercando inoltre di evitare ridondanza#super[G]. \
  L'attività è stata quasi completata, rendendo quindi ora necessarie solo minime modifiche. \

  I progettisti#super[G] hanno lavorato principalmente sulla *progettazione architetturale del PoC*#super[G].\
  Sono state effettuate le ultime modifiche all'architettura#super[G] ad alto livello ed è terminata la stesura del *Processo di Progettazione*. \
  Come per la stesura dei casi d'uso, anche questa attività è prossima alla conclusione. \

  Infine in parallelo come definito sono stati portati avanti i documenti. 

//-----------

#pagebreak()
=== Sprint 5
#v(1em)

Inizio: #h(1.99cm)*23-05-2025*\
Fine Prevista: #h(0.65cm)*06-06-2025*\
Fine Reale: #h(1.12cm)*06-06-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

- Ultimare l'analisi dei requisiti#super[G] ;
- Ultimare l'architettura#super[G] ad alto livello;
- Collaborazione tra progettisti#super[G] e programmatori#super[G] per aggiornarsi sulle tecnologie e sull'architettura#super[G] ;
- Attuare un primo studio e configurazione delle tecnologie;
- Sviluppo di POC;

==== Rischi attesi
#v(1em)

I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di codifica/programmazione;
- RI1: Rischio Individuale derivante dalle altre attività;
- RG2: Rischio Globale legato a pareri contrastanti;

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
#v(1em)

==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [47(-5)],   [1410€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [49(-4)],   [980€ (-80€)],
      [Analista#super[G]],        [25€/h],   [6],   [150€],   [13(-6)],    [325€ (-150€)],
      [Progettista#super[G]],     [25€/h],   [8],  [200€],   [116(-8)], [2900€ (-200€)],
      [Programmatore#super[G]],   [15€/h],   [15],   [225€],  [209(-15)],      [3135€ (-225€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [102(-10)],  [1560€ (-150€)],
      [*Totale*],                 [*-*],     [*48*],[*955€*],[*536 (-48)*],[*10310€ (-955€)*],
    ),
    didascalia: "Sprint 5 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati
#v(1em)

 Il principale problema di questo sprint riguarda i programmatori, in particolare del tipo RT1, RT2, RT3.

 Durante le due settimane hanno riscontrato diversi problemi: non conoscendo le tecnologie hanno dovuto documentarsi più approfonditamente di quanto stimato. 
 Nonostante questo, tuttavia, essendo tecnologie e modalità di lavoro che nessuno all'interno del team ha mai affrontato in precedenza,anche dopo una preparazione teorica la prima implementazione è risultata comunque lenta, auspicando però un'accelerazione nel momento in cui le tecnologie verrano conosciute e padroneggiate meglio.Durante questo sprint#super[G] si è verificato un rallentamento di alcune attività a causa dell'arrivo della sessione estiva e di alcune festività durante le due settimane di sprint. Questi fattori hanno limitato la disponibilità di alcuni membri del team, portando a una distribuzione meno uniforme del carico di lavoro e a un avanzamento più lento.


==== Retrospettiva
#v(1em)

Il documento “Analisi dei Requisiti” è pronto per l'approvazione da parte del proponente.

L'analista, con l'aiuto del progettista, ha completato i requisiti e i casi d'uso sulla base delle linee guida ricevute dall'ultimo incontro con il Professore Cardin.
  
È stato rimosso il sistema come attore dei casi d'uso, in quanto i casi d'uso riflettono le azione compiute da parte dell'utente. \

Durante questo lavoro, il progettista ha sollevato alcune scelte di progettazione fatte precedentemente e, sulla base dei nuovi requisiti e casi d'uso, ha apportato alcune modifiche per semplificare e/o chiarire degli aspetti della progettazione per renderla conforme con i requisiti e i casi d'uso.\
Verrano quindi rese effettive queste modifiche e fornite ai programmatori per l'implementazione.

I programmatori quindi hanno cercato di capire come strutturare la repository, ed è stato inoltre fatto il setup di tutta l'infrastruttura.\
  È stata fatta una divisione del lavoro tra i programmatori, che ha portato alle seguenti realizzazioni:
  - Iniziato il documento per i test;
  - Studiato MongoDB, e creati i primi database;
  - Iniziata la logica di business del servizio di inventario;
  - Implementato Docker, il quale funziona completamente.

Per ovviare ai rallentamenti dovuti allo studio e all'implementazione di queste nuove tecnologie, e alla sessione d'esami appena iniziata è stato richiesto per lo sprint successivo un contributo anche da parte degli altri membri che non sono programmatori per quanto possibile, velocizzando quindi i tempi di implementazione e di consegna del PoC.

È stato deciso di contattare il Professore Cardin per informarlo dell'aggiornamento dell'Analisi dei requisiti e per richiedere un incontro in cui discutre le modifiche.

Infine è stato deciso di contattare anche M31 per chiedere un'approvazione dei soli requisiti e per aggiornare il committente sullo stato del PoC.Durante questo sprint#super[G] il team ha avuto modo di confrontarsi con il #p.cardin, ricevendo preziosi suggerimenti per migliorare l'analisi dei requisiti#super[G]. In seguito a questo incontro, sono stati rivisti e resi più granulari i requisiti, migliorando la chiarezza e la tracciabilità del documento.

Parallelamente, è proseguita la progettazione, con particolare attenzione alla definizione della logica di business di alcuni microservizi#super[G] chiave. Gran parte del tempo è stato dedicato allo studio e allo sviluppo del Proof of Concept (PoC)#super[G], approfondendo le tecnologie coinvolte e la loro integrazione, la definizione dell'infrastruttura di deployment e l'avvio dello sviluppo dei microservizi#super[G] necessari per la presentazione del PoC#super[G].

//-----------

#pagebreak()
=== Sprint 6
Inizio: #h(1.99cm)*06-06-2025*\
Fine Prevista: #h(0.65cm)*20-06-2025*\
Fine Reale: #h(1.12cm)*20-06-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

- Studio dei microservizi#super[G] di aggregazione e di ordini da parte dei progettisti#super[G] ;
- Continuazione lavori sul PoC#super[G] e sviluppo del primo microservizio#super[G] di inventario;
- Verifica e riscrittura dei casi d'uso#super[G] ;
- Conclusione dell'analisi dei requisiti#super[G] .

==== Rischi attesi
#v(1em)

I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di codifica/programmazione
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;


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
#v(1em)

==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [42(-5)],   [1260€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [45(-4)],   [900€ (-80€)],
      [Analista#super[G]],        [25€/h],   [7],   [175€],   [7(-7)],    [175€ (-175€)],
      [Progettista#super[G]],     [25€/h],   [7],  [175€],   [108(-7)], [2700€ (-175€)],
      [Programmatore#super[G]],   [15€/h],   [18],   [270€],  [194(-18)],      [2910€ (-270€)],
      [Verificatore#super[G]],    [15€/h],   [9],   [135€],   [92(-9)],  [1410€ (-135€)],
      [*Totale*],                 [*-*],     [*50*],[*985€*],[*488 (-50)*],[*9355€ (-985€)*],
    ),
    didascalia: "Sprint 6 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati
#v(1em)

Oltre alla consueta difficoltà legata al rallentamento delle attività dovuto alla sessione d'esami, si sono riscontrate sfide pratiche nell'apprendimento delle nuove tecnologie adottate. Questo ha comportato una maggiore complessità nello sviluppo di codice efficiente e conforme agli standard previsti dal progetto.

==== Retrospettiva
#v(1em)

Durante questo sprint#super[G] è stato svolto un importante lavoro da parte dei programmatori#super[G]. In particolare, è stato completato il microservizio di "inventario" con il relativo collegamento al database. È stato inoltre definito uno standard per le richieste di dati tra i diversi microservizi#super[G], migliorando l'interoperabilità e la coerenza dell'architettura#super[G]. Parallelamente, è iniziato lo studio dell'API Gateway e lo sviluppo della tecnologia NATS, fondamentale per la comunicazione asincrona tra i servizi. Queste attività hanno permesso di consolidare la base tecnologica del progetto e di proseguire nello sviluppo del PoC#super[G].
Per quanto riguarda l'analisi dei requisiti#super[G], è stata completata la revisione e la riscrittura dei casi d'uso#super[G], rendendoli più chiari e dettagliati. Questo ha facilitato la comprensione delle funzionalità richieste e ha migliorato la tracciabilità dei requisiti stessi.

//-----------

#pagebreak()
=== Sprint 7
#v(1em)
Inizio: #h(1.99cm)*20-06-2025*\
Fine Prevista: #h(0.65cm)*04-07-2025*\
Fine Reale: #h(1.12cm)*04-07-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

- Completare lo sviluppo del PoC#super[G], includendo:
  - Inventario aggregato;
  - Microservizio di ordini;
  - API Gateway;
- Correggere i punti indicati dal secondo ricevimento con il #p.cardin riguardo l'analisi dei requisiti#super[G] .

==== Rischi attesi
#v(1em)

I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di programmazione;
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;


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
#v(1em)

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [37(-5)],   [1110€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [41(-4)],   [820€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],   [-],   [0],    [0€],
      [Progettista#super[G]],     [25€/h],   [-],  [-],   [101], [2525€],
      [Programmatore#super[G]],   [15€/h],   [40],   [600€],  [176(-40)], [2640€ (-600€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [83(-10)],  [1275€ (-150€)],
      [*Totale*],                 [*-*],     [*59*],[*980€*],[*438 (-59)*],[*8370€ (-980€)*],
    ),
    didascalia: "Sprint 7 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati
#v(1em)

Durante questo sprint#super[G] si è riscontrato un rallentamento delle attività, principalmente dovuto alla sessione estiva degli esami universitari#super[G]. Questa situazione, già prevista nel Piano di Progetto#super[G], ha avuto un impatto più contenuto rispetto agli sprint#super[G] precedenti, poiché diversi membri del team avevano già terminato gli esami e hanno potuto dedicare maggiore disponibilità al progetto. Il rallentamento si è manifestato soprattutto nello sviluppo del Proof of Concept (PoC)#super[G].

==== Retrospettiva
#v(1em)

Durante questo sprint#super[G] il team ha completato con successo lo sviluppo del Proof of Concept (PoC)#super[G]. 
In riferimento all'Analisi dei Requisiti#super[G], dopo aver analizzato attentamente gli errori e le criticità emerse, sono state implementate le necessarie correzioni e ottimizzazioni, con particolare attenzione alla coerenza e alla chiarezza dei contenuti. Queste attività hanno richiesto un notevole impegno, ma hanno permesso di migliorare la qualità complessiva del documento e di garantirne la conformità alle normative previste. La fase di revisione e aggiornamento si è conclusa negli ultimi giorni dello sprint#super[G], consentendo di presentare una versione aggiornata e più solida del lavoro svolto.

In conclusione si prevede che per l'ottavo sprint#super[G] si presenti il POC#super[G] all'azienda proponente in vista della candidatura RTB#super[G].

//-----------
#pagebreak()
=== Sprint 8
#v(1em)
Inizio: #h(1.99cm)*04-07-2025*\
Fine Prevista: #h(0.65cm)*18-07-2025*\
Fine Reale: #h(1.12cm)*18-07-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)
- Verificare la correttezza e la funzionalità del PoC#super[G], ultimandolo;
- Presentazione del PoC#super[G] all'azienda proponente;
- Preparare la documentazione necessaria per la candidatura RTB#super[G] .



==== Rischi attesi
#v(1em)

I possibili rischi :
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di programmazione;
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;
- RC1: Rischio dovuto a tempi di risposta lunghi da parte dell'azienda proponente;


==== Preventivo

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[],[10],
      [Mattia Dalla Pozza],[],[],[],[],[4],[],
      [Sebastiano Marana],[],[],[],[],[4],[],
      [Nicholas Moretto],[],[],[],[],[4],[],
      [Matteo Pretto],[5],[],[],[],[],[],
      [Alex Shu],[],[4],[],[],[],[],
      [Stefano Speranza],[],[],[],[],[4],[],
      [Ramona Zangla],[],[],[],[],[4],[],
  ),
  didascalia: "Sprint 8 - Preventivo ore per ciascun componente"
)
]


==== Consuntivo


#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [], [], [], [], [10],
    [Mattia Dalla Pozza],   [], [], [], [], [4 (-2)], [],
    [Sebastiano Marana],    [], [], [], [], [4 (-2)], [],
    [Nicholas Moretto],     [], [], [], [], [4 (-2)], [],
    [Matteo Pretto],        [5], [], [], [], [], [],
    [Alex Shu],             [], [4], [], [], [], [],
    [Stefano Speranza],     [], [], [], [], [4 (-2)], [],
    [Ramona Zangla],        [], [], [], [], [4 (-2)], [],
  ),
  didascalia: "Sprint 8 - Consuntivo ore per ciascun componente"
)
]


==== Aggiornamento delle risorse rimanenti  
#v(1em)

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [32 (-5)],    [960€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [37 (-4)],    [740€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],   [-],   [0],    [0€],
      [Progettista#super[G]],     [25€/h],   [-],  [-],   [101],            [2525€],
      [Programmatore#super[G]],   [15€/h],   [10],   [150€],  [136 (-10)],  [2040€ (-150€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [73 (-10)],  [1125€ (-150€)],
      [*Totale*],                 [*-*],     [*29*],[*530€*],[*438 (-29)*], [*7390€ (-530€)*],
    ),
    didascalia: "Sprint 8 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati
#v(1em)
Durante questo sprint#super[G] non sono stati riscontrati rischi critici, ma si è verificato un leggero rallentamento dovuto all'attesa di una risposta da parte dell'azienda proponente riguardo alla presentazione del PoC#super[G]. Fortunatamente in pochi giorni si è ricevuta una risposta positiva, permettendo di proseguire con la candidatura RTB#super[G].

==== Retrospettiva
#v(1em)
Durante questo sprint#super[G] il team verificato la correttezza e la funzionalità del Proof of Concept (PoC)#super[G], ultimandolo e preparandolo per la presentazione all'azienda proponente. Il PoC#super[G] ha dimostrato le funzionalità chiave del sistema, inclusi i microservizi#super[G] di inventario aggregato e ordini, nonché l'API Gateway per la gestione delle comunicazioni tra i servizi.\
Il PoC#super[G] è stato presentato all'azienda proponente, che ha espresso un feedback positivo, apprezzando l'approccio e le funzionalità implementate. Questo ha permesso di consolidare la fiducia tra il team e l'azienda, aprendo la strada per la candidatura RTB#super[G].\
Inoltre, il team ha lavorato alla preparazione della documentazione necessaria per la candidatura RTB#super[G], assicurandosi che tutti i requisiti e le specifiche fossero correttamente documentati e presentati in modo chiaro e professionale.


//-----------
#pagebreak()
=== Sprint 9
#v(1em)
Inizio: #h(1.99cm)*18-07-2025*\
Fine Prevista: #h(0.65cm)*01-08-2025*\
Fine Reale: #h(1.12cm)*01-08-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)
- Presentazione RTB#super[G] con i docenti;
- Inizio della progettazione dettagliata dell'MVP#super[G] ;
- Inizio della programmazione del MVP#super[G].

==== Rischi attesi
#v(1em)
I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di programmazione;
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[8],[],
    [Mattia Dalla Pozza],[],[],[],[],[8],[],
    [Sebastiano Marana],[5],[],[],[],[],[],
    [Nicholas Moretto],[],[4],[],[],[],[],
    [Matteo Pretto],[],[],[],[8],[],[],
    [Alex Shu],[],[],[],[8],[],[],
    [Stefano Speranza],[],[],[],[],[],[10],
    [Ramona Zangla],[],[],[],[8],[],[],
  ),
  didascalia: "Sprint 9 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [],   [],   [],   [],   [8],  [],
    [Mattia Dalla Pozza],   [],   [],   [],   [],   [8],  [],
    [Sebastiano Marana],    [5],  [],   [],   [],   [],   [],
    [Nicholas Moretto],     [],   [4],  [],   [],   [],   [],
    [Matteo Pretto],        [],   [],   [],   [8],  [],   [],
    [Alex Shu],             [],   [],   [],   [8],  [],   [],
    [Stefano Speranza],     [],   [],   [],   [],   [],   [9 (-1)],
    [Ramona Zangla],        [],   [],   [],   [8],  [],   [],
  ),
  didascalia: "Sprint 9 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti  
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],       [150€],         [27 (-5)],     [810€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],       [80€],          [33 (-4)],     [660€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],       [-],            [0],           [0€],
      [Progettista#super[G]],     [25€/h],   [24],      [600€],         [101 (-24)],   [2525€ (-600€)],
      [Programmatore#super[G]],   [15€/h],   [16],      [240€],         [126 (-16)],   [1890€ (-240€)],
      [Verificatore#super[G]],    [15€/h],   [8],       [120€],         [63 (-8)],     [975€ (-120€)],
      [*Totale*],                 [*-*],     [*57*],    [*1190€*],      [*350 (-57)*], [*6860€ (-1190€)*],
    ),
    didascalia: "Sprint 9 - Aggiornamento delle risorse disponibili"
  )
]

==== Retrospettiva
#v(1em)
  Nel nono sprint#super[G], il team ha svolto due incontri di revisione. Il primo si è tenuto il *21 luglio 2025* con il #p.cardin; in seguito, ottenuto il parere favorevole, si è svolto un secondo incontro il *31 luglio 2025* con il #p.tullio. Entrambe le revisioni si sono concluse con esito complessivamente positivo. \
  Contestualmente, il team ha lavorato alla preparazione delle presentazioni da esporre durante le due revisioni con i docenti. A seguito delle valutazioni positive ricevute, gli esiti degli incontri sono stati comunicati all’azienda.
  Dopo aver ottenuto il parere favorevole nella prima parte della revisione *RTB*#super[G], i progettisti e i programmatori hanno proseguito con le attività di progettazione per la fase *PB*#super[G], avviando contestualmente la configurazione software finalizzata alla realizzazione dell’*MVP*#super[G].


//-----------
#pagebreak()
=== Sprint 10
#v(1em)
Inizio: #h(1.99cm)*01-08-2025*\
Fine Prevista: #h(0.65cm)*16-08-2025*\
Fine Reale: #h(1.12cm)*16-08-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)
- Revisione esiti della RTB#super[G] ricevuti dai docenti;
- Aggiornamento della documentazione sulla base dei feedback ricevuti durante la revisione RTB#super[G];
- Progettazione dettagliata del MVP#super[G];
- Esercitazione pratica di programmazione.

==== Rischi attesi
#v(1em)
I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RC1: Tempi di risposta lunghi
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [], [], [8], [],  [],
    [Mattia Dalla Pozza],   [5],[], [], [],  [],  [],
    [Sebastiano Marana],    [], [], [], [],  [],  [10],
    [Nicholas Moretto],     [], [], [], [8], [],  [],
    [Matteo Pretto],        [], [4],[], [],  [],  [],
    [Alex Shu],             [], [], [], [],  [8], [],
    [Stefano Speranza],     [], [], [], [8], [],  [],
    [Ramona Zangla],        [], [], [], [8], [],  [],
  ),
  didascalia: "Sprint 10 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [],   [],   [],   [8],      [],         [],
    [Mattia Dalla Pozza],   [5],  [],   [],   [],       [],         [],
    [Sebastiano Marana],    [],   [],   [],   [],       [],         [10],
    [Nicholas Moretto],     [],   [],   [],   [8],      [],         [],
    [Matteo Pretto],        [],   [4],  [],   [],       [],         [],
    [Alex Shu],             [],   [],   [],   [],       [8(+2)],  [],
    [Stefano Speranza],     [],   [],   [],   [8],      [],         [],
    [Ramona Zangla],        [],   [],   [],   [8(+2)], [],         [],
  ),
  didascalia: "Sprint 10 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti  
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],       [150€],         [22 (-5)],     [660€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],       [80€],          [29 (-4)],     [580€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],       [-],            [0],           [0€],
      [Progettista#super[G]],     [25€/h],   [34],      [850€],         [77 (-34)],    [1925€ (-850€)],
      [Programmatore#super[G]],   [15€/h],   [10],      [150€],         [110 (-10)],   [1650€ (-150€)],
      [Verificatore#super[G]],    [15€/h],   [10],      [150€],         [56 (-10)],    [840€ (-150€)],
      [*Totale*],                 [*-*],     [*63*],    [*1380€*],      [*294 (-63)*], [*5655€ (-1380€)*],
    ),
    didascalia: "Sprint 10 - Aggiornamento delle risorse disponibili"
  )
]

==== Retrospettiva
#v(1em)
Nel decimo sprint#super[G], il team ha concentrato l’attenzione sulla progettazione dettagliata dei microservizi#super[G], con l’obiettivo di consolidare le basi architetturali del sistema e definire in modo chiaro le responsabilità dei singoli componenti. Sono stati completati i moduli Inventory, Inventory Aggregate, Orders, State e Cloud State, risultato che ha permesso di affinare la comprensione delle interazioni tra i servizi e di ridurre il rischio di incoerenze a livello architetturale. È emersa tuttavia l’esigenza di anticipare alcune scelte tecnologiche, così da evitare possibili attività di rework nelle fasi successive. Parallelamente è proseguita l’attività documentale: il documento di Analisi dei Requisiti#super[G] è stato rivisto e migliorato sulla base delle osservazioni del #p.cardin nella fase RTB#super[G], mentre il Piano di Progetto#super[G] è stato aggiornato rafforzando gli strumenti di rendicontazione e monitoraggio#super[G]. Contestualmente è stata avviata la stesura del documento di Specifica Tecnica, destinato a definire in dettaglio l’architettura#super[G] del sistema. Questa attività ha messo in evidenza la necessità di un coordinamento più stretto tra la progettazione e la documentazione, in modo da mantenere un allineamento costante lungo l’intero ciclo di sviluppo. Nel complesso, lo sprint ha portato a risultati concreti e tangibili sia sul fronte progettuale sia su quello documentale, evidenziando punti di forza del team nella gestione della complessità architetturale e aprendo al contempo spunti di miglioramento legati alla pianificazione tecnica anticipata e all’integrazione continua tra le diverse attività.

//-----------
#pagebreak()
=== Sprint 11
#v(1em)
Inizio: #h(1.99cm)*18-08-2025*\
Fine Prevista: #h(0.65cm)*29-08-2025*\
Fine Reale: #h(1.12cm)*29-08-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)
- Completamento della progettazione dettagliata dell’MVP#super[G];
- Programmazione dei microservizi del MVP#super[G].
- Continuazione della stesura dei documenti (Piano di Progetto, Specifica Tecnica)

==== Rischi attesi
#v(1em)
I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Errori di codifica o programmazione;
- RT4: Rischio di supporto e versione delle tecnologie;
- RI3: Difficoltà di "comprensione" o lavoro;

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [], [], [8], [],  [],
    [Mattia Dalla Pozza],   [], [], [], [],  [],  [10],
    [Sebastiano Marana],    [], [], [], [],  [10],[],
    [Nicholas Moretto],     [5],[], [], [],  [],  [],
    [Matteo Pretto],        [], [], [], [],  [10],[],
    [Alex Shu],             [], [], [], [8], [],  [],
    [Stefano Speranza],     [], [], [], [8], [],  [],
    [Ramona Zangla],        [], [], [], [],  [10],[],
  ),
  didascalia: "Sprint 11 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [],   [],   [],   [8(+4)],[],      [],
    [Mattia Dalla Pozza],   [],   [],   [],   [],      [],      [10],
    [Sebastiano Marana],    [],   [],   [],   [],      [10(+4)],[],
    [Nicholas Moretto],     [5],  [],   [],   [],      [],      [],
    [Matteo Pretto],        [],   [],   [],   [],      [10],    [],
    [Alex Shu],             [],   [],   [],   [8(+4)],[],      [],
    [Stefano Speranza],     [],   [],   [],   [8],     [],      [],
    [Ramona Zangla],        [],   [],   [],   [],      [10(+4)],[],
  ),
  didascalia: "Sprint 11 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti  
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],       [150€],         [17 (-5)],           [510€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [-],       [-],            [25],           [500€],
      [Analista#super[G]],        [25€/h],   [-],       [-],            [0],           [0€],
      [Progettista#super[G]],     [25€/h],   [32],      [800€],         [43 (-32)],           [1075€ (-800€)],
      [Programmatore#super[G]],   [15€/h],   [38],      [570€],         [100 (-38)],           [1500€ (-570€)],
      [Verificatore#super[G]],    [15€/h],   [10],      [150€],         [46 (-10)],           [690€ (-150€)],
      [*Totale*],                 [*-*],     [*85*],    [*1670€*],      [*231 (-85)*],         [*4275€ (-1670€)*],
    ),
    didascalia: "Sprint 11 - Aggiornamento delle risorse disponibili"
  )
]

==== Retrospettiva
#v(1em)
Nel corso dell’undicesimo sprint#super[G], il team ha concentrato le attività sul completamento della progettazione dettagliata e sull’avanzamento della fase di codifica, mentre in parallelo è proseguita la redazione della documentazione tecnica e si è svolto un incontro di aggiornamento con l’azienda M31. La progettazione dei microservizi#super[G] ha visto il completamento di quelli relativi alla gestione degli ordini#super[G] aggregati, all’autenticazione#super[G], al sistema centralizzato e al routing. L’analisi del microservizio#super[G] di autenticazione#super[G] mediante ResGate ha però evidenziato alcune criticità, principalmente legate alla complessità della tecnologia adottata e alla limitata disponibilità di documentazione ufficiale. In questa fase è stato definito il flusso architetturale che prevede l’invio della richiesta di autenticazione#super[G] dal client a un microservizio#super[G] del sistema, il quale la inoltra a ResGate: quest’ultimo, tramite token, verifica la validità della connessione e delle credenziali dell’utente, consentendo successivamente a ogni microservizio destinatario di validare i permessi e autorizzare l’accesso alle risorse richieste. Sul fronte della codifica, è stato completato il microservizio#super[G] di inventario#super[G] sia in implementazione che in testing, mentre lo sviluppo del microservizio#super[G] di ordini#super[G] è attualmente in fase di completamento. In parallelo, è proseguita la redazione della documentazione di progetto, con particolare attenzione al Piano di Progetto e alla Specifica Tecnica. Nel complesso, lo sprint ha consolidato i progressi sia a livello architetturale sia implementativo, pur facendo emergere alcuni rischi, in particolare la complessità nell’adozione di tecnologie nuove e poco documentate, la possibile dilatazione delle tempistiche di sviluppo dei microservizi#super[G] più critici e la necessità di mantenere allineate in modo costante le attività di progettazione, codifica e documentazione.

//-----------
#pagebreak()
=== Sprint 12
#v(1em)
Inizio: #h(1.99cm)*29-08-2025*\
Fine Prevista: #h(0.65cm)*12-09-2025*\
Fine Reale: #h(1.12cm)*15-09-2025*\
Giorni di ritardo: #h(0.15cm)*3*

==== Informazioni generali e attività da svolgere
#v(1em)
- Completamento programmazione dei microservizi del MVP#super[G].
- Ultimazione stesura dei documenti necessari alla fase PB.
- Approvazione finale dell'MVP da parte dell'azienda.
- Revisione PB,

==== Rischi attesi
#v(1em)
I possibili rischi :
- RT3: Errori di codifica o programmazione;
- RI3: Difficoltà di "comprensione" o lavoro;

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [], [], [],  [10],  [],
    [Mattia Dalla Pozza],   [], [], [], [],  [10],  [],
    [Sebastiano Marana],    [], [], [], [],  [10],  [],
    [Nicholas Moretto],     [],[], [], [],  [],  [10],
    [Matteo Pretto],        [], [], [], [],  [10],  [],
    [Alex Shu],             [], [], [], [], [10],  [],
    [Stefano Speranza],     [], [], [], [], [],  [10],
    [Ramona Zangla],        [5], [], [], [],  [],  [],
  ),
  didascalia: "Sprint 12 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [],   [],   [],   [],      [10(+2)],   [],
    [Mattia Dalla Pozza],   [],   [],   [],   [],      [10],   [],
    [Sebastiano Marana],    [],   [],   [],   [],      [10(+5)],   [],
    [Nicholas Moretto],     [],   [],   [],   [],      [],         [10(+4)],
    [Matteo Pretto],        [],   [],   [],   [],      [10],   [],
    [Alex Shu],             [],   [],   [],   [],      [10(+5)],   [],
    [Stefano Speranza],     [],   [],   [],   [],      [],         [10(-2)],
    [Ramona Zangla],        [5],   [],   [],   [],      [],         [],
  ),
  didascalia: "Sprint 12 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],       [150€],         [12 (-5)],           [360€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [-],       [-],            [25],           [500€],
      [Analista#super[G]],      [25€/h],   [-],       [-],            [0],           [0€],
      [Progettista#super[G]],     [25€/h],   [-],      [-],         [11],           [275€],
      [Programmatore#super[G]],   [15€/h],   [62],      [930€],         [62 (-62)],           [930€ (-930€)],
      [Verificatore#super[G]],    [15€/h],   [22],      [330€],         [36 (-22)],           [540€ (-330€)],
      [*Totale*],                 [*-*],     [*89*],  [*1410€*],      [*146 (-89)*],         [*2605€ (-1410€)*],
    ),
    didascalia: "Sprint 12 - Aggiornamento delle risorse disponibili"
  )
]

==== Retrospettiva
#v(1em)
Nel corso del dodicesimo sprint#super[G], il team ha concentrato gli sforzi sul completamento della programmazione dei microservizi#super[G] previsti per l’MVP#super[G], sull’ultimazione della documentazione tecnica e sulla preparazione per l'accettazione finale da parte dell’azienda. La fase di codifica ha visto il completamento di tutti i microservizi#super[G]. Inoltre, sono stati avviati i test di integrazione per garantire che tutti i microservizi#super[G] funzionassero correttamente insieme. Parallelamente, il team ha lavorato all’ultimazione della documentazione tecnica, con particolare attenzione alla Specifica Tecnica e al Piano di Progetto, assicurandosi che fossero allineati con lo stato attuale del progetto e pronti per la revisione finale. Un incontro di aggiornamento con l’azienda M31 ha permesso di presentare i progressi fatti e di raccogliere feedback preziosi per eventuali aggiustamenti finali.\ Nonostante alcuni ritardi dovuti a imprevisti tecnici e alla necessità di approfondire alcune tecnologie, il team è riuscito a mantenere un buon ritmo di lavoro, dimostrando capacità di adattamento e collaborazione efficace. In conclusione, lo sprint ha portato a risultati significativi sia sul fronte implementativo sia su quello documentale, ponendo solide basi per le fasi successive del progetto.

= Riassunto delle risorse utilizzate durante il progetto

#align(center)[
    #figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: center,
    table.header(
      [*Ruolo*], [*Costo/ora*], [*Ore Totali*], [*Costo Totale*]
    ),
    [Responsabile], [30€/h], [60], [1800€],
    [Amministratore], [20€/h], [36], [720€],
    [Analista], [25€/h], [76], [1900€],
    [Progettista], [25€/h], [145], [3625€],
    [Programmatore], [15€/h], [218], [3270€],
    [Verificatore], [15€/h], [128], [1920€],
    [*Totale*], [*-*], [*663*], [*13235€*],
  ),
  caption: [Tabella utilizzo delle risorse]
)
]

Come possiamo evincere dalla tabella sopra, il team termina la realizzazione di quanto necessario per affrontare la _Product Baseline_ con un costo totale che ammonta a *13.235€* e con un totale di *663 ore* lavorate dai vari membri del team.
La spesa è al di sotto del budget preventivato di *14.430€*, con un risparmio di *1.195€*.

  #v(4em)
  #align(center)[
    #{
    show table.cell: cl => if cl.x == 0 and cl.y != 0 {
      align(left, cl)
    } else if cl.x == 0 {
      align(bottom + left, cl)
    } else if cl.y == 0 {
      rotate(-70deg, reflow: true, align(left, cl))
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
          [*Responsabile*],
          [*Amministratore*],
          [*Analista*],
          [*Progettista*],
          [*Programmatore*],
          [*Verificatore*],
          [*Totale*],
        ),
  
      [Nicolò Bolzon],[5],[4],[11],[20],[32],[18],[*90*],
      [Mattia Dalla Pozza],[10],[4],[7],[8],[34],[19],[*82*],
      [Sebastiano Marana],[10],[4],[13],[8],[39],[19],[*93*],
      [Nicholas Moretto],[10],[4],[11],[18],[12],[24],[*79*],
      [Matteo Pretto],[5],[8],[6],[8],[31],[12],[*70*],
      [Alex Shu],[5],[4],[11],[20],[36],[4],[*80*],
      [Stefano Speranza],[5],[4],[11],[32],[10],[16],[*78*],
      [Ramona Zangla],[10],[4],[6],[26],[24],[15],[*85*],
      [*Totale*],[*60*],[*36*],[*76*],[*140*],[*218*],[*127*],[*657*]
      ),
      caption: [Ore di ogni componente per ciascun ruolo],
    )
  }
]

Dalla tabella sopra possiamo vedere il totale delle ore lavorate da ogni componente del team, suddivise per ruolo.
Notiamo che è stato necessario modificare il quantitativo di ore preventivate per ciascun ruolo, ma il totale delle ore rimane comunque inferiore a quello preventivato, con un risparmio di *57 ore*.#import "../../src/basic.typ": *
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
#let status = "Approvato"
#let destinatario = "M31"
#let versione = "2.0.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
 
  [2.0.0],
  [14/09/2025],
  [R. Zangla],
  [S. Speranza],
  [Approvazione del documento.], 

  [1.4.0],
  [12/09/2025],
  [N. Moretto],
  [S. Speranza],
  [Completamento Sprint 12.],

  [1.3.0],
  [18/08/2025],
  [N. Bolzon],
  [N. Moretto],
  [Aggiunta del contenuto: Sprint 11, preventivo e pianificazione Sprint 12.], 

  [1.2.1],
  [18/08/2025],
  [N. Bolzon],
  [M. Dalla Pozza],
  [Piccola correzione grafica di visualizzazione tabelle Sprint 10.],  
  
  [1.2.0],
  [18/08/2025],
  [N. Bolzon],
  [M. Dalla Pozza],
  [Aggiunta del contenuto: Sprint 10, preventivo e pianificazione Sprint 11.],

  [1.1.0],
  [01/08/2025],
  [N. Bolzon],
  [S. Marana],
  [Aggiunta del contenuto: Sprint 9, preventivo e pianificazione Sprint 10.],

  [1.0.0],
  [16/07/2025],
  [M. Dalla Pozza],
  [N. Bolzon],
  [Rivisitazione contenuti Sprint],

  [0.8.0],
  [15/07/2025],
  [N. Moretto],
  [N. Bolzon],
  [Aggiunta del contenuto: Sprint 8, preventivo e pianificazione Sprint 9.],

  [0.7.0],
  [04/07/2025],
  [N. Moretto],
  [M. Pretto],
  [Aggiunta del contenuto: Sprint 7, preventivo e pianificazione Sprint 8.],
  

  [0.6.0],
  [20/06/2025],
  [R. Zangla],
  [M. Dalla Pozza],
  [Aggiunta del contenuto: Sprint 6. Preventivo e pianificazione Sprint 7.],


  [0.5.0],
  [06/06/2025],
  [S. Speranza],
  [R. Zangla],
  [Aggiunta del contenuto: Sprint 5. Preventivo e pianificazione Sprint 6.],

  [0.4.0],
  [25/05/2025],
  [S. Speranza],
  [R. Zangla],
  [Aggiunta del contenuto: Sprint 3 e Sprint 4. Preventivo e pianificazione Sprint 5.],

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
#v(1em)

Il *Piano di Progetto#super[G]* è un documento che definisce le modalità di gestione del progetto, le risorse necessarie e i rischi attesi.\ Il piano di progetto è un documento vivo, che viene aggiornato durante il ciclo di vita del progetto di *Ingegneria del Software*, in quanto le attività vengono pianificate volta per volta e le risorse vengono allocate in base alle necessità. Una progettazione dettagliata sul lungo termine, infatti, si rivelerebbe inefficace in quanto sensibile#super[G] ad imprevisti ed esigenze del cliente#super[G] o di sviluppo.

Il documento è importante per permettere una corretta pianificazione del lavoro e dei vari sprint#super[G]. Tale pianificazione analizza il tempo previsto ed effettivo per ogni attività, tenendo conto dei rischi e delle risorse disponibili.

== Informazioni sul prodotto
#v(1em)

Il progetto riguarda lo sviluppo di un sistema di gestione per magazzini distribuiti, con l'obiettivo di ottimizzare la gestione dell'inventario#super[G] in una rete di magazzini geograficamente separati. Questo sistema deve garantire che i flussi di materiali e prodotti tra i magazzini siano gestiti in tempo reale, evitando rotture di stock e migliorando la distribuzione delle scorte#super[G]. Il sistema dovrà anche ridurre i livelli medi di inventario#super[G], mantenendo però scorte#super[G] di sicurezza per gestire variazioni nella domanda o ritardi nelle consegne.

La soluzione proposta si baserà su un'architettura#super[G] a microservizi#super[G], che permetterà a ogni magazzino di gestire autonomamente il proprio inventario#super[G], mentre le informazioni verranno sincronizzate in tempo reale con un sistema centrale. Il sistema dovrà essere in grado di monitorare i livelli di inventario#super[G], gestire conflitti derivanti da aggiornamenti simultanei, implementare riassortimenti#super[G] predittivi basati su machine learning e garantire una visibilità centralizzata in tempo reale delle operazioni. Inoltre, saranno utilizzate tecnologie moderne e scalabili come Nest js, Typescript, NATS e Docker, per garantire prestazioni elevate e l'interoperabilità tra i magazzini.

In sintesi, il progetto si propone di migliorare l'efficienza operativa della gestione logistica, riducendo i rischi legati alla gestione delle scorte#super[G] e ottimizzando i flussi tra i magazzini.




== Glossario#super[G]
#v(1em)

La realizzazione di un software richiede, ancor prima dello sviluppo, una fase di analisi e progettazione. Dato che il lavoro durante questa fase è svolto da più persone e in modo asincrono, è necessario documentare tutte queste attività per tenere traccia di ciò che è stato fatto e per evitare confusione. 

Si potrà dedurre che questi documenti potrebbero contenere parole#super[G] o frasi che non sono di uso comune, scelte però per essere più specifiche ed evitare ambiguità. Per tale ragione, è stato creato un glossario#super[G] che contiene le definizioni di tali termini, al seguente #link("https://teamcodealchemists.github.io/glossario")[#underline[indirizzo]]. 

#pagebreak()

== Riferimenti
=== Riferimenti normativi
- *Capitolato#super[G] d'appalto C6 - Gestione di un magazzino distribuito - _M31_*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")
  \ Ultimo Accesso: 14 settembre 2025

- *Processi di ciclo di vita del software*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")
  \ Ultimo Accesso: 14 settembre 2025

- *Gestione di progetto*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf")
  \ Ultimo Accesso: 14 settembre 2025

=== Riferimenti informativi
- *Glossario#super[G]* \
  #underline[#link("https://teamcodealchemists.github.io/glossario.html")]
  \ Ultimo Accesso: 14 settembre 2025

- *Piano di Qualifica#super[G]* \
  #underline[#link("https://teamcodealchemists.github.io/docs/pb/PdQ.pdf")]
  \ Ultimo Accesso: 14 settembre 2025

- *Norme di Progetto* \
  #underline[#link("https://teamcodealchemists.github.io/docs/pb/NdP.pdf")]
  \ Ultimo Accesso: 14 settembre 2025

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
#v(1em)


I rischi del progetto sono suddivisi in quattro categorie principali, in base al tipo di problematiche che potrebbero verificarsi:

- Rischi nell'organizzazione e gestione del progetto;

- Rischi nella comunicazione;

- Rischi individuali;

- Rischi di natura tecnologica.

Ogni rischio è identificato tramite un codice#super[G] univoco, strutturato come segue:

#align(center, block[*R[Categoria][Indice] - [Nome]*])

Dove:

+ *Categoria*: Rappresenta il tipo di rischio, che puo essere:

  - *P*: per i rischi di pianificazione;

  - *C*: per i rischi comunicativi;

  - *I*: per i rischi individuali;

  - *T*: per i rischi tecnologici.

+ *Indice*: ID progressivo unico all'interno della categoria.

+ *Nome*: Una descrizione basilare del rischio

== Rischi tecnologici //tecnologie utilizzate ed eventuali errori

=== RT1 - Inesperienza nell'uso delle tecnologie


#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
    [RT1],

    [*Gravità*],
    [Bassa],

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


=== RT2 - Uso errato delle tecnologie


#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
    [RT2],

    [*Gravità*],
    [Media],

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
    e in vasto uso nel mercato, come anche gli endpoint delle API#super[G] messe a disposizione, al fine di ridurre
    al minimo l'eventualità del problema.],
  ),
  didascalia: "Tabella RT4"
)

== Rischi comunicativi
#v(1em)


=== RC1 - Tempi di risposta lunghi


#tabella_rischi(
  dati: (
    [*Codice#super[G]*],
    [RC1],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Media],

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
    eventuali incomprensioni e risolverle al più presto. In particolare la struttura a sottoresponsabili e sottogruppi
    aiuterà a individuare più facilmente i membri in questione.],
  ),
  didascalia: "Tabella RC2"
)


=== RC3 - Mancanza di comunicazione con l'azienda 


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



== Rischio individuale //altri impegni e attività individuale
#v(1em)

=== RI1 - Impegni personali, universitari e indisponibilità


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


=== RI2 - Scarsa collaborazione


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
    [Gli incontri regolari predisposti dal responsabile#super[G] del team aiuteranno a favorire il dialogo trasparente, la collaborazione e 
    mantenere attivo l'impegno di ciascun membro. Inoltre la scala della responsabilità
    più granulare aiuterà ad avere un riscontro continuo più diretto.],
  ),
  didascalia: "Tabella RI2"
)


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
    [I membri del team si impegnano a comunicare in modo trasparente e onesto le difficoltà nello svolgere
    il lavoro assegnato, mentre i restanti si impegnano ad aiutare chi si trova in tale situazione.],
  ),
  didascalia: "Tabella RI3"
)



== Rischio globale //valutare altri rischi
#v(1em)

=== RG1 - Incomprensione degli obbiettivi del capitolato#super[G] 


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
    al fine di individuare precisamente le richieste, nonché di avere una comunicazione frequente con l'azienda per 
    individuare eventuali incomprensioni.],
  ),
  didascalia: "Tabella RG1"
)


=== RG2 - Pareri contrastanti


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



== Tabella Riassuntiva
#v(1em)

#tabella_riassuntiva_rischi(
  dati: (
    [RT1],[Inesperienza nell'uso delle tecnologie nel progetto.],[Bassa],[Media],
    [RT2],[Utilizzo errato o non ottimale delle tecnologie.],[Media],[Media],
    [RT3],[Errori di programmazione.],[Bassa],[Alta],
    [RT4],[Supporto e versione delle tecnologie.],[Alta],[Bassa],
    [RC1],[Tempi di risposta lunghi.],[Media],[Media],
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
#v(1em)
== Struttura del team
#v(1em)

Di seguito vengono brevemente descritti i ruoli previsti all'interno del team, equamente distribuiti e ruotati tra i membri con cadenza bisettimanale. Ogni ruolo prevede specifiche mansioni e obiettivi:

- *Responsabile#super[G]*: coordina il gruppo di lavoro, assegnando i compiti, monitorando le attività e gestendo l’utilizzo delle risorse. Garantisce l’avanzamento del progetto e il rispetto delle tempistiche e delle risorse disponibili.


- *Amministratore#super[G]*: si occupa della gestione delle infrastrutture, incluso il setup degli strumenti utilizzati per la produzione del software e della documentazione, nonché dell’organizzazione e della produttività del team.


- *Analista#super[G]*: è responsabile della definizione dei requisiti#super[G] di progetto e dell’analisi delle funzionalità del software, al fine di determinare i casi d’uso. Il suo contributo è fondamentale nella fase iniziale, per permettere una progettazione ottimale da parte dei progettisti#super[G] e, successivamente, una corretta implementazione da parte dei programmatori#super[G].


- *Progettista#super[G]*: definisce l’architettura#super[G] del software, individuando i componenti e le interazioni tra essi sulla base dell’analisi dei requisiti#super[G] fornita dagli analisti#super[G]. Il ruolo è cruciale per una progettazione efficace del prodotto, sia nella fase preliminare del Proof of Concept#super[G] (POC#super[G]), sia nella realizzazione del Minimum Viable Product (MVP).


- *Programmatore#super[G]*: sviluppa il codice#super[G] del software secondo l’architettura#super[G] definita dai progettisti#super[G]. Oltre a ricoprire il ruolo chiave nella realizzazione del prodotto, ha anche il compito implicito di validare le scelte effettuate da analisti#super[G] e progettisti#super[G].


- *Verificatore#super[G]*: controlla, durante tutte le fasi dello sviluppo, che il software e la documentazione rispettino le specifiche e le norme adottate. Il suo ruolo è essenziale per individuare tempestivamente eventuali errori o incongruenze.


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
  
  Si riporta un grafico a torta raffigurante la ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili:

  #align(center)[
    #figure(
      image("assets/chart.png", width: 13cm),
      caption: [Ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili]
    )
  ]
*/


== Attività previste per la Requirements and Technology Baseline (RTB)
#v(1em)

Durante l'RTB#super[G] sono previste due attività principali:

  - Redazione di documenti;

  - Sviluppo.

La prima verra portata avanti durante tutti gli sprint#super[G] a seconda delle esigenze e necessità del momento.
La seconda verra iniziata successivamente alla produzione di:\
- Analisi dei Requisiti#super[G] ; 
- Casi d'uso; 
- Architettura#super[G] preliminare.

Di seguito vengono indicate le più nel dettaglio le principali 
attività previste durante la fase RTB#super[G] del progetto: 

#v(1em)
1. *Redazione Analisi dei Requisiti#super[G]* (in stesura)

  - Stesura della struttura;

  - Lettura accurata del capitolato#super[G] ;

  - Estrapolazione dei requisiti#super[G] ;

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

  - Metriche di monitoraggio#super[G] ;

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

5. *Redazione del Glossario#super[G]* (in stesura)
  - Stesura della struttura;

  - Aggiunta automatizzata dei termini.

6. *Sviluppo POC#super[G] (Proof of concept#super[G])* (in stesura)

  - Definizione di una possibile architettura#super[G] ;
  
  - Sviluppo;

    - Magazzino locale;

    - Cloud;

    - Sistema centralizzato.

== Attività previste per la Product Baseline (PB)
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
ovvero periodi di tempo ben definiti da una data di inizio e una data di fine in cui il team 
si impegna a concentrarsi su un insieme specifico e finito di attività.\
Il team ha deciso di utilizzare una durata dello sprint#super[G] pari a *2 settimane*, 
questo aiutera ad ottenere un buon bilanciamento tra pianificazione e esecuzione delle attività. 
Inoltre durante ogni sprint#super[G], verranno effettuate diverse riunioni per discutere
sia i progressi di ogni membro e le difficoltà riscontrate, per permettere una comunicazione continua tra i membri
e una rapida risoluzione dei problemi che potrebbero insorgere.\
#v(1em)

Il team ha deciso di utilizzare un approccio *iterativo#super[G]* e di miglioramento *incrementale#super[G]*, 
per permettere di adattare il lavoro in base alle esigenze del cliente#super[G], feedback ricevuti e necessità. 
Inoltre, si è deciso di utilizzare un *gestore di attività*, in particolare JIRA, per 
*tracciare il lavoro svolto e le scadenze*.
Questo garantirà innanzitutto una buona gestione del progetto ma anche una migliore pianificazione, 
riducendo al minimo i potenziali rischi e massimizzando le possibilità di successo.
#v(1em)

Inoltre alcune particolari caratteristiche che il team ha deciso di adottare dopo un primo periodo di prova includono:

- L'uso di sottoresponsabili informali per responsabilizzare maggiormente più membri e ottenere una comunicazione più efficace e diretta;

- La redazione di una "Lettera di sprint#super[G]" da parte del responsabile#super[G] entrante per definire meglio gli obbiettivi attuali, la quale
   viene redatta e presentata almeno il giorno prima dell'inizio del nuovo sprint#super[G];

- Un cambio di ruoli per sprint#super[G] basato sul ruolo della persona e dalle competenze ottenute nello sprint#super[G] appena terminato.
   Questo permette in particolare, oltre a ruotare i ruoli tra i membri, di svolgere una transizione molto più fluida e funzionale tra sprint#super[G].
#v(1em)

Infine il team si impegna a *concordare riunioni periodiche* con l'azienda proponente del progetto _M31_ 
per discutere progressi ed eventuali modifiche in corso d'opera. 
Le riunioni garantiranno che il lavoro svolto rimanga coerente con le aspettative 
del cliente#super[G] ottenendo feedback su quanto realizzato.

#pagebreak()
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

=== Sprint 1    //mantenere le seguenti distanze
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
#v(1em)


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
    didascalia: "Sprint - Aggiornamento delle risorse disponibili"
  )
]
#pagebreak()

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

==== Retrospettiva
#v(1em)

Durante lo sprint#super[G] ci siamo dedicati principalmente ad una prima impostazione del
progetto, tramite automazioni e organizzazione github, alla progettazione di una
prima ipotesi architetturale/tecnologica a caldo e alla prima stesura
dei documenti necessari con un discreto successo, almeno come primo inizio di progetto.
Non siamo riusciti tuttavia a rendere l'ipotesi architetturale definitiva, in quanto
effettuata precedentemente da una ricerca dello stato dell'arte approfondita e quindi
da una scarsità di informazioni.

#pagebreak()
=== Sprint 2
#v(1em)

Inizio: #h(1.99cm)*11-04-2025*\
Fine Prevista: #h(0.65cm)*24-04-2025*\
Fine Reale: #h(1.12cm)*24-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

Questo secondo sprint#super[G] ha avuto principalmente come obbiettivo la continuazione
e il miglioramento di quanto iniziato nel primo sprint#super[G] basandoci inoltre
su quanto discusso con l'azienda proponente.

In particolare, le attività previste sono:

- Analisi dello stato dell'Arte;
- Continuazione dell'ipotesi architetturale e tecnologica;
  - Approfondimento delle tecnologie proposte.
- Redazione dei casi d'uso;
- Continuazione del Glossario#super[G] ;
- Continuazione delle Norme di Progetto;
- Continuazione del Piano di Progetto;
- Continuazione dell'Analisi dei Requisiti#super[G] ;
- Miglioramento dell'utilizzo di JIRA ;
- Automazioni Github.


==== Rischi attesi
#v(1em)

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
#v(1em)
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
      [*Totale*], [*-*], [*38*], [*790€*], [*675 (-35)*], [*13460€ (-790€)*],
  ),
    didascalia: "Sprint 2 - Aggiornamento delle risorse disponibili"
  )
]

#pagebreak()
==== Rischi incontrati
#v(1em)

Il principale rischio di questo secondo sprint#super[G] è stato il lungo periodo 
di festività, come quello pasquale, che ha rallentato notevolmente
il progresso di tutte le attività attese.

Inoltre, un'iniziale difficoltà nell'identificare con decisione i principali
punti su cui concentrarsi per avanzare nella produzione di un POC#super[G] hanno portato
il team ad effettuare un'analisi dello stato dell'arte, posponendo quindi l'avanzamento
dell'ipotesi architetturale e quindi della produzione stessa del POC#super[G].


==== Retrospettiva
#v(1em)

Le difficoltà incontrare hanno portato alla luce come fosse e sia essenziale avere una
migliore panoramica dell'ambito di sviluppo del progetto, e di come iniziare a sviluppare
parallelamente una prima base di POC#super[G] sia essenziale al fine stesso di capire meglio
il contesto e identificare in anticipo eventuali ambiguità.


#pagebreak()
=== Sprint 3
#v(1em)

Inizio: #h(1.99cm)*25-04-2025*\
Fine Prevista: #h(0.65cm)*09-05-2025*\
Fine Reale: #h(1.12cm)*09-05-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

In particolare, le attività previste sono:

- Inizio sviluppo architettura#super[G] POC#super[G] ;
- Continuazione stesura documenti;
  - Piano di progetto;
  - Piano di qualifica#super[G] ;
  - Glossario#super[G] ;
  - Analisi dei requisiti#super[G] ;
  - Norme di progetto.


==== Rischi attesi
#v(1em)

I possibili rischi :
- RI1: Rischio Individuale derivante dalle altre attività.
- RI1: Rischio Individuale derivante dalle altre attività;
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
#v(1em)

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
      [*Totale*], [*-*], [*49*], [*1140€*], [*640 (-49)*], [*12670€ (-1140€)*],
  ),
    didascalia: "Sprint 3 - Aggiornamento delle risorse disponibili"
  )
]
#pagebreak()

==== Rischi incontrati
#v(1em)

Durante lo sprint gli analisti hanno riscontrato un problema con un membro del sottoteam, il quale non si è distinto per il suo lavoro svolto. \

Gli analisti infatti ritengono che oltre ad aver consegnato in modo frettoloso casi d'uso non completamente analizzati, ha partecipato poco attivamente alle attività di analisi e ha fornito un contributo insignificante al lavoro del team. 

==== Retrospettiva
#v(1em)

Durante il terzo sprint, il team si è concetrato  principalmente su attività di progettazione e sviluppo architetturale relative al POC.

Durante la prima settimana i progettisti, hanno progettato un'ipotesi di architettura del PoC#super[G] sulla base dell'analisi dello stato dell'arte svolto in precedenza.
Tale architettura è stata poi presentata a _M31_ durante la riunione del *05/05/2025*, dove sono stati chiarti dubbi e domande emerse durante l'analisi dei requisiti ed è stata migliorata l'organizazzione della comunicazione.\

Durante la seconda settimana dello sprint, i progettisti hanno modellato l'ipotesi di architettura del PoC#super[G] sulla base dei feedback ricevuti da _M31_, trovando una soluzione che potrebbe essere definitiva. \

Il lavoro non è ancora concluso, in quanto ci sono ancora alcuni aspetti da definire e da chiarire, i progettisti quindi hanno dichiarato di voler concludere l'attività di progettazione dell'architettura durante lo sprint successivo. \

In parallelo tuttavia è continuata la redazione dei documenti come inizialmente previsto.

Per quanto riguarda infine il rischio riscontrato il team ha deciso di cercare un riscontro diretto con questo membro e se non dovessero esserci miglioramenti risulterà necessario prendere provvedimenti. \

Viste le conclusioni dei vari lavori, e l'imminente inizio del PoC#super[G], si è deciso di introdurre un nuovo ruolo nel team: il *programmatore#super[G]*.\Durante questo sprint#super[G], gli analisti hanno riscontrato che il tempo inizialmente previsto non era sufficiente per completare tutte le attività richieste. Per questo motivo, hanno deciso di dedicare più tempo al lavoro di gruppo, collaborando più strettamente per portare a termine la stesura dei documenti e l'analisi dei requisiti#super[G]. 

Inoltre, vista la complessità emersa nella fase di progettazione, il team ha ritenuto opportuno confermare uno dei progettisti anche per lo sprint#super[G] successivo, così da garantire continuità e approfondire ulteriormente le scelte architetturali già avviate.

//-----------

#pagebreak()
=== Sprint 4
#v(1em)

Inizio: #h(1.99cm)*09-05-2025*\
Fine Prevista: #h(0.65cm)*23-05-2025*\
Fine Reale: #h(1.12cm)*23-05-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

Le attività previste sono:

- Continuazione dello sviluppo dell'architettura#super[G] ad alto livello;
- Creazione della Repository per il POC#super[G] ;
- Primo studio delle tecnologie per il POC#super[G] ;
- Continuazione della stesura dei documenti:
  - Piano di progetto;
  - Piano di qualifica#super[G] ;
  - Glossario#super[G] ;
  - Analisi dei requisiti#super[G] ;
  - Norme di progetto;

==== Rischi attesi
#v(1em)

I possibili rischi:

- RT1: Rischio Tecnologico legato alla tecnologia utilizzata;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato delle tecnologie;
- RI1: Rischio Individuale derivante dalle altre attività;
- RG2: Rischio Globale legato a pareri contrastanti.


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
#v(1em)

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
      [*Totale*],                 [*-*],     [*55*],[*1220€*],[*591 (-55)*],[*11530€ (-1220€)*],
    ),
    didascalia: "Sprint 4 - Aggiornamento delle risorse disponibili"
  )
]
#pagebreak()

==== Rischi incontrati
#v(1em)
Durante questo sprint#super[G] non sono emersi rischi critici, ma si sono riscontrati alcuni problemi minori di progettazione dovuti a difficoltà tecnologiche e a pareri contrastanti tra i membri del team sulle scelte architetturali. Queste situazioni sono state gestite tramite confronto diretto e approfondimenti tecnici condivisi.

==== Retrospettiva
#v(1em)

  Come stabilito i progettisti#super[G] hanno continuato l'attività di definizione dell'architettura#super[G] per il PoC#super[G]. \

  In particolare l'amministratore#super[G] ha studiato autonomamente i vari ambienti di sviluppo (come NATS, Docker, ...) cercando di comprendere il funzionamento e documentarlo per trasmettere quando appreso ai membri del Team tramite documenti facilitando poi quindi l'inizio dello sviluppo del PoC#super[G]. 

  Gli analisti#super[G] hanno continuato *l'analisi dei casi d'uso* la quale si è resa più dispendiosa del previsto. Si è cercato di adottare delle migliorie in due diverse modalità: migliorando la leggibilità della tabella e rendendo i requisiti#super[G] meno prolissi cercando inoltre di evitare ridondanza#super[G]. \
  L'attività è stata quasi completata, rendendo quindi ora necessarie solo minime modifiche. \

  I progettisti#super[G] hanno lavorato principalmente sulla *progettazione architetturale del PoC*#super[G].\
  Sono state effettuate le ultime modifiche all'architettura#super[G] ad alto livello ed è terminata la stesura del *Processo di Progettazione*. \
  Come per la stesura dei casi d'uso, anche questa attività è prossima alla conclusione. \

  Infine in parallelo come definito sono stati portati avanti i documenti. 

//-----------

#pagebreak()
=== Sprint 5
#v(1em)

Inizio: #h(1.99cm)*23-05-2025*\
Fine Prevista: #h(0.65cm)*06-06-2025*\
Fine Reale: #h(1.12cm)*06-06-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

- Ultimare l'analisi dei requisiti#super[G] ;
- Ultimare l'architettura#super[G] ad alto livello;
- Collaborazione tra progettisti#super[G] e programmatori#super[G] per aggiornarsi sulle tecnologie e sull'architettura#super[G] ;
- Attuare un primo studio e configurazione delle tecnologie;
- Sviluppo di POC;

==== Rischi attesi
#v(1em)

I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di codifica/programmazione;
- RI1: Rischio Individuale derivante dalle altre attività;
- RG2: Rischio Globale legato a pareri contrastanti;

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
#v(1em)

==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [47(-5)],   [1410€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [49(-4)],   [980€ (-80€)],
      [Analista#super[G]],        [25€/h],   [6],   [150€],   [13(-6)],    [325€ (-150€)],
      [Progettista#super[G]],     [25€/h],   [8],  [200€],   [116(-8)], [2900€ (-200€)],
      [Programmatore#super[G]],   [15€/h],   [15],   [225€],  [209(-15)],      [3135€ (-225€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [102(-10)],  [1560€ (-150€)],
      [*Totale*],                 [*-*],     [*48*],[*955€*],[*536 (-48)*],[*10310€ (-955€)*],
    ),
    didascalia: "Sprint 5 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati
#v(1em)

 Il principale problema di questo sprint riguarda i programmatori, in particolare del tipo RT1, RT2, RT3.

 Durante le due settimane hanno riscontrato diversi problemi: non conoscendo le tecnologie hanno dovuto documentarsi più approfonditamente di quanto stimato. 
 Nonostante questo, tuttavia, essendo tecnologie e modalità di lavoro che nessuno all'interno del team ha mai affrontato in precedenza,anche dopo una preparazione teorica la prima implementazione è risultata comunque lenta, auspicando però un'accelerazione nel momento in cui le tecnologie verrano conosciute e padroneggiate meglio.Durante questo sprint#super[G] si è verificato un rallentamento di alcune attività a causa dell'arrivo della sessione estiva e di alcune festività durante le due settimane di sprint. Questi fattori hanno limitato la disponibilità di alcuni membri del team, portando a una distribuzione meno uniforme del carico di lavoro e a un avanzamento più lento.


==== Retrospettiva
#v(1em)

Il documento “Analisi dei Requisiti” è pronto per l'approvazione da parte del proponente.

L'analista, con l'aiuto del progettista, ha completato i requisiti e i casi d'uso sulla base delle linee guida ricevute dall'ultimo incontro con il Professore Cardin.
  
È stato rimosso il sistema come attore dei casi d'uso, in quanto i casi d'uso riflettono le azione compiute da parte dell'utente. \

Durante questo lavoro, il progettista ha sollevato alcune scelte di progettazione fatte precedentemente e, sulla base dei nuovi requisiti e casi d'uso, ha apportato alcune modifiche per semplificare e/o chiarire degli aspetti della progettazione per renderla conforme con i requisiti e i casi d'uso.\
Verrano quindi rese effettive queste modifiche e fornite ai programmatori per l'implementazione.

I programmatori quindi hanno cercato di capire come strutturare la repository, ed è stato inoltre fatto il setup di tutta l'infrastruttura.\
  È stata fatta una divisione del lavoro tra i programmatori, che ha portato alle seguenti realizzazioni:
  - Iniziato il documento per i test;
  - Studiato MongoDB, e creati i primi database;
  - Iniziata la logica di business del servizio di inventario;
  - Implementato Docker, il quale funziona completamente.

Per ovviare ai rallentamenti dovuti allo studio e all'implementazione di queste nuove tecnologie, e alla sessione d'esami appena iniziata è stato richiesto per lo sprint successivo un contributo anche da parte degli altri membri che non sono programmatori per quanto possibile, velocizzando quindi i tempi di implementazione e di consegna del PoC.

È stato deciso di contattare il Professore Cardin per informarlo dell'aggiornamento dell'Analisi dei requisiti e per richiedere un incontro in cui discutre le modifiche.

Infine è stato deciso di contattare anche M31 per chiedere un'approvazione dei soli requisiti e per aggiornare il committente sullo stato del PoC.Durante questo sprint#super[G] il team ha avuto modo di confrontarsi con il #p.cardin, ricevendo preziosi suggerimenti per migliorare l'analisi dei requisiti#super[G]. In seguito a questo incontro, sono stati rivisti e resi più granulari i requisiti, migliorando la chiarezza e la tracciabilità del documento.

Parallelamente, è proseguita la progettazione, con particolare attenzione alla definizione della logica di business di alcuni microservizi#super[G] chiave. Gran parte del tempo è stato dedicato allo studio e allo sviluppo del Proof of Concept (PoC)#super[G], approfondendo le tecnologie coinvolte e la loro integrazione, la definizione dell'infrastruttura di deployment e l'avvio dello sviluppo dei microservizi#super[G] necessari per la presentazione del PoC#super[G].

//-----------

#pagebreak()
=== Sprint 6
Inizio: #h(1.99cm)*06-06-2025*\
Fine Prevista: #h(0.65cm)*20-06-2025*\
Fine Reale: #h(1.12cm)*20-06-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

- Studio dei microservizi#super[G] di aggregazione e di ordini da parte dei progettisti#super[G] ;
- Continuazione lavori sul PoC#super[G] e sviluppo del primo microservizio#super[G] di inventario;
- Verifica e riscrittura dei casi d'uso#super[G] ;
- Conclusione dell'analisi dei requisiti#super[G] .

==== Rischi attesi
#v(1em)

I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di codifica/programmazione
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;


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
#v(1em)

==== Aggiornamento delle risorse rimanenti  

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [42(-5)],   [1260€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [45(-4)],   [900€ (-80€)],
      [Analista#super[G]],        [25€/h],   [7],   [175€],   [7(-7)],    [175€ (-175€)],
      [Progettista#super[G]],     [25€/h],   [7],  [175€],   [108(-7)], [2700€ (-175€)],
      [Programmatore#super[G]],   [15€/h],   [18],   [270€],  [194(-18)],      [2910€ (-270€)],
      [Verificatore#super[G]],    [15€/h],   [9],   [135€],   [92(-9)],  [1410€ (-135€)],
      [*Totale*],                 [*-*],     [*50*],[*985€*],[*488 (-50)*],[*9355€ (-985€)*],
    ),
    didascalia: "Sprint 6 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati
#v(1em)

Oltre alla consueta difficoltà legata al rallentamento delle attività dovuto alla sessione d'esami, si sono riscontrate sfide pratiche nell'apprendimento delle nuove tecnologie adottate. Questo ha comportato una maggiore complessità nello sviluppo di codice efficiente e conforme agli standard previsti dal progetto.

==== Retrospettiva
#v(1em)

Durante questo sprint#super[G] è stato svolto un importante lavoro da parte dei programmatori#super[G]. In particolare, è stato completato il microservizio di "inventario" con il relativo collegamento al database. È stato inoltre definito uno standard per le richieste di dati tra i diversi microservizi#super[G], migliorando l'interoperabilità e la coerenza dell'architettura#super[G]. Parallelamente, è iniziato lo studio dell'API Gateway e lo sviluppo della tecnologia NATS, fondamentale per la comunicazione asincrona tra i servizi. Queste attività hanno permesso di consolidare la base tecnologica del progetto e di proseguire nello sviluppo del PoC#super[G].
Per quanto riguarda l'analisi dei requisiti#super[G], è stata completata la revisione e la riscrittura dei casi d'uso#super[G], rendendoli più chiari e dettagliati. Questo ha facilitato la comprensione delle funzionalità richieste e ha migliorato la tracciabilità dei requisiti stessi.

//-----------

#pagebreak()
=== Sprint 7
#v(1em)
Inizio: #h(1.99cm)*20-06-2025*\
Fine Prevista: #h(0.65cm)*04-07-2025*\
Fine Reale: #h(1.12cm)*04-07-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)

- Completare lo sviluppo del PoC#super[G], includendo:
  - Inventario aggregato;
  - Microservizio di ordini;
  - API Gateway;
- Correggere i punti indicati dal secondo ricevimento con il #p.cardin riguardo l'analisi dei requisiti#super[G] .

==== Rischi attesi
#v(1em)

I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di programmazione;
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;


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
#v(1em)

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [37(-5)],   [1110€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [41(-4)],   [820€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],   [-],   [0],    [0€],
      [Progettista#super[G]],     [25€/h],   [-],  [-],   [101], [2525€],
      [Programmatore#super[G]],   [15€/h],   [40],   [600€],  [176(-40)], [2640€ (-600€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [83(-10)],  [1275€ (-150€)],
      [*Totale*],                 [*-*],     [*59*],[*980€*],[*438 (-59)*],[*8370€ (-980€)*],
    ),
    didascalia: "Sprint 7 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati
#v(1em)

Durante questo sprint#super[G] si è riscontrato un rallentamento delle attività, principalmente dovuto alla sessione estiva degli esami universitari#super[G]. Questa situazione, già prevista nel Piano di Progetto#super[G], ha avuto un impatto più contenuto rispetto agli sprint#super[G] precedenti, poiché diversi membri del team avevano già terminato gli esami e hanno potuto dedicare maggiore disponibilità al progetto. Il rallentamento si è manifestato soprattutto nello sviluppo del Proof of Concept (PoC)#super[G].

==== Retrospettiva
#v(1em)

Durante questo sprint#super[G] il team ha completato con successo lo sviluppo del Proof of Concept (PoC)#super[G]. 
In riferimento all'Analisi dei Requisiti#super[G], dopo aver analizzato attentamente gli errori e le criticità emerse, sono state implementate le necessarie correzioni e ottimizzazioni, con particolare attenzione alla coerenza e alla chiarezza dei contenuti. Queste attività hanno richiesto un notevole impegno, ma hanno permesso di migliorare la qualità complessiva del documento e di garantirne la conformità alle normative previste. La fase di revisione e aggiornamento si è conclusa negli ultimi giorni dello sprint#super[G], consentendo di presentare una versione aggiornata e più solida del lavoro svolto.

In conclusione si prevede che per l'ottavo sprint#super[G] si presenti il POC#super[G] all'azienda proponente in vista della candidatura RTB#super[G].

//-----------
#pagebreak()
=== Sprint 8
#v(1em)
Inizio: #h(1.99cm)*04-07-2025*\
Fine Prevista: #h(0.65cm)*18-07-2025*\
Fine Reale: #h(1.12cm)*18-07-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)
- Verificare la correttezza e la funzionalità del PoC#super[G], ultimandolo;
- Presentazione del PoC#super[G] all'azienda proponente;
- Preparare la documentazione necessaria per la candidatura RTB#super[G] .



==== Rischi attesi
#v(1em)

I possibili rischi :
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di programmazione;
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;
- RC1: Rischio dovuto a tempi di risposta lunghi da parte dell'azienda proponente;


==== Preventivo

#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[],[10],
      [Mattia Dalla Pozza],[],[],[],[],[4],[],
      [Sebastiano Marana],[],[],[],[],[4],[],
      [Nicholas Moretto],[],[],[],[],[4],[],
      [Matteo Pretto],[5],[],[],[],[],[],
      [Alex Shu],[],[4],[],[],[],[],
      [Stefano Speranza],[],[],[],[],[4],[],
      [Ramona Zangla],[],[],[],[],[4],[],
  ),
  didascalia: "Sprint 8 - Preventivo ore per ciascun componente"
)
]


==== Consuntivo


#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [], [], [], [], [10],
    [Mattia Dalla Pozza],   [], [], [], [], [4 (-2)], [],
    [Sebastiano Marana],    [], [], [], [], [4 (-2)], [],
    [Nicholas Moretto],     [], [], [], [], [4 (-2)], [],
    [Matteo Pretto],        [5], [], [], [], [], [],
    [Alex Shu],             [], [4], [], [], [], [],
    [Stefano Speranza],     [], [], [], [], [4 (-2)], [],
    [Ramona Zangla],        [], [], [], [], [4 (-2)], [],
  ),
  didascalia: "Sprint 8 - Consuntivo ore per ciascun componente"
)
]


==== Aggiornamento delle risorse rimanenti  
#v(1em)

#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],   [150€],   [32 (-5)],    [960€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],   [80€],    [37 (-4)],    [740€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],   [-],   [0],    [0€],
      [Progettista#super[G]],     [25€/h],   [-],  [-],   [101],            [2525€],
      [Programmatore#super[G]],   [15€/h],   [10],   [150€],  [136 (-10)],  [2040€ (-150€)],
      [Verificatore#super[G]],    [15€/h],   [10],   [150€],   [73 (-10)],  [1125€ (-150€)],
      [*Totale*],                 [*-*],     [*29*],[*530€*],[*438 (-29)*], [*7390€ (-530€)*],
    ),
    didascalia: "Sprint 8 - Aggiornamento delle risorse disponibili"
  )
]


==== Rischi incontrati
#v(1em)
Durante questo sprint#super[G] non sono stati riscontrati rischi critici, ma si è verificato un leggero rallentamento dovuto all'attesa di una risposta da parte dell'azienda proponente riguardo alla presentazione del PoC#super[G]. Fortunatamente in pochi giorni si è ricevuta una risposta positiva, permettendo di proseguire con la candidatura RTB#super[G].

==== Retrospettiva
#v(1em)
Durante questo sprint#super[G] il team verificato la correttezza e la funzionalità del Proof of Concept (PoC)#super[G], ultimandolo e preparandolo per la presentazione all'azienda proponente. Il PoC#super[G] ha dimostrato le funzionalità chiave del sistema, inclusi i microservizi#super[G] di inventario aggregato e ordini, nonché l'API Gateway per la gestione delle comunicazioni tra i servizi.\
Il PoC#super[G] è stato presentato all'azienda proponente, che ha espresso un feedback positivo, apprezzando l'approccio e le funzionalità implementate. Questo ha permesso di consolidare la fiducia tra il team e l'azienda, aprendo la strada per la candidatura RTB#super[G].\
Inoltre, il team ha lavorato alla preparazione della documentazione necessaria per la candidatura RTB#super[G], assicurandosi che tutti i requisiti e le specifiche fossero correttamente documentati e presentati in modo chiaro e professionale.


//-----------
#pagebreak()
=== Sprint 9
#v(1em)
Inizio: #h(1.99cm)*18-07-2025*\
Fine Prevista: #h(0.65cm)*01-08-2025*\
Fine Reale: #h(1.12cm)*01-08-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)
- Presentazione RTB#super[G] con i docenti;
- Inizio della progettazione dettagliata dell'MVP#super[G] ;
- Inizio della programmazione del MVP#super[G].

==== Rischi attesi
#v(1em)
I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Rischio Tecnologico legato ad errori di programmazione;
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[8],[],
    [Mattia Dalla Pozza],[],[],[],[],[8],[],
    [Sebastiano Marana],[5],[],[],[],[],[],
    [Nicholas Moretto],[],[4],[],[],[],[],
    [Matteo Pretto],[],[],[],[8],[],[],
    [Alex Shu],[],[],[],[8],[],[],
    [Stefano Speranza],[],[],[],[],[],[10],
    [Ramona Zangla],[],[],[],[8],[],[],
  ),
  didascalia: "Sprint 9 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [],   [],   [],   [],   [8],  [],
    [Mattia Dalla Pozza],   [],   [],   [],   [],   [8],  [],
    [Sebastiano Marana],    [5],  [],   [],   [],   [],   [],
    [Nicholas Moretto],     [],   [4],  [],   [],   [],   [],
    [Matteo Pretto],        [],   [],   [],   [8],  [],   [],
    [Alex Shu],             [],   [],   [],   [8],  [],   [],
    [Stefano Speranza],     [],   [],   [],   [],   [],   [9 (-1)],
    [Ramona Zangla],        [],   [],   [],   [8],  [],   [],
  ),
  didascalia: "Sprint 9 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti  
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],       [150€],         [27 (-5)],     [810€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],       [80€],          [33 (-4)],     [660€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],       [-],            [0],           [0€],
      [Progettista#super[G]],     [25€/h],   [24],      [600€],         [101 (-24)],   [2525€ (-600€)],
      [Programmatore#super[G]],   [15€/h],   [16],      [240€],         [126 (-16)],   [1890€ (-240€)],
      [Verificatore#super[G]],    [15€/h],   [8],       [120€],         [63 (-8)],     [975€ (-120€)],
      [*Totale*],                 [*-*],     [*57*],    [*1190€*],      [*350 (-57)*], [*6860€ (-1190€)*],
    ),
    didascalia: "Sprint 9 - Aggiornamento delle risorse disponibili"
  )
]

==== Retrospettiva
#v(1em)
  Nel nono sprint#super[G], il team ha svolto due incontri di revisione. Il primo si è tenuto il *21 luglio 2025* con il #p.cardin; in seguito, ottenuto il parere favorevole, si è svolto un secondo incontro il *31 luglio 2025* con il #p.tullio. Entrambe le revisioni si sono concluse con esito complessivamente positivo. \
  Contestualmente, il team ha lavorato alla preparazione delle presentazioni da esporre durante le due revisioni con i docenti. A seguito delle valutazioni positive ricevute, gli esiti degli incontri sono stati comunicati all’azienda.
  Dopo aver ottenuto il parere favorevole nella prima parte della revisione *RTB*#super[G], i progettisti e i programmatori hanno proseguito con le attività di progettazione per la fase *PB*#super[G], avviando contestualmente la configurazione software finalizzata alla realizzazione dell’*MVP*#super[G].


//-----------
#pagebreak()
=== Sprint 10
#v(1em)
Inizio: #h(1.99cm)*01-08-2025*\
Fine Prevista: #h(0.65cm)*16-08-2025*\
Fine Reale: #h(1.12cm)*16-08-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)
- Revisione esiti della RTB#super[G] ricevuti dai docenti;
- Aggiornamento della documentazione sulla base dei feedback ricevuti durante la revisione RTB#super[G];
- Progettazione dettagliata del MVP#super[G];
- Esercitazione pratica di programmazione.

==== Rischi attesi
#v(1em)
I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RC1: Tempi di risposta lunghi
- RI1: Rischio Individuale legato a impegni personali, universitari e indisponibilità;

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [], [], [8], [],  [],
    [Mattia Dalla Pozza],   [5],[], [], [],  [],  [],
    [Sebastiano Marana],    [], [], [], [],  [],  [10],
    [Nicholas Moretto],     [], [], [], [8], [],  [],
    [Matteo Pretto],        [], [4],[], [],  [],  [],
    [Alex Shu],             [], [], [], [],  [8], [],
    [Stefano Speranza],     [], [], [], [8], [],  [],
    [Ramona Zangla],        [], [], [], [8], [],  [],
  ),
  didascalia: "Sprint 10 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [],   [],   [],   [8],      [],         [],
    [Mattia Dalla Pozza],   [5],  [],   [],   [],       [],         [],
    [Sebastiano Marana],    [],   [],   [],   [],       [],         [10],
    [Nicholas Moretto],     [],   [],   [],   [8],      [],         [],
    [Matteo Pretto],        [],   [4],  [],   [],       [],         [],
    [Alex Shu],             [],   [],   [],   [],       [8(+2)],  [],
    [Stefano Speranza],     [],   [],   [],   [8],      [],         [],
    [Ramona Zangla],        [],   [],   [],   [8(+2)], [],         [],
  ),
  didascalia: "Sprint 10 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti  
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],       [150€],         [22 (-5)],     [660€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [4],       [80€],          [29 (-4)],     [580€ (-80€)],
      [Analista#super[G]],        [25€/h],   [-],       [-],            [0],           [0€],
      [Progettista#super[G]],     [25€/h],   [34],      [850€],         [77 (-34)],    [1925€ (-850€)],
      [Programmatore#super[G]],   [15€/h],   [10],      [150€],         [110 (-10)],   [1650€ (-150€)],
      [Verificatore#super[G]],    [15€/h],   [10],      [150€],         [56 (-10)],    [840€ (-150€)],
      [*Totale*],                 [*-*],     [*63*],    [*1380€*],      [*294 (-63)*], [*5655€ (-1380€)*],
    ),
    didascalia: "Sprint 10 - Aggiornamento delle risorse disponibili"
  )
]

==== Retrospettiva
#v(1em)
Nel decimo sprint#super[G], il team ha concentrato l’attenzione sulla progettazione dettagliata dei microservizi#super[G], con l’obiettivo di consolidare le basi architetturali del sistema e definire in modo chiaro le responsabilità dei singoli componenti. Sono stati completati i moduli Inventory, Inventory Aggregate, Orders, State e Cloud State, risultato che ha permesso di affinare la comprensione delle interazioni tra i servizi e di ridurre il rischio di incoerenze a livello architetturale. È emersa tuttavia l’esigenza di anticipare alcune scelte tecnologiche, così da evitare possibili attività di rework nelle fasi successive. Parallelamente è proseguita l’attività documentale: il documento di Analisi dei Requisiti#super[G] è stato rivisto e migliorato sulla base delle osservazioni del #p.cardin nella fase RTB#super[G], mentre il Piano di Progetto#super[G] è stato aggiornato rafforzando gli strumenti di rendicontazione e monitoraggio#super[G]. Contestualmente è stata avviata la stesura del documento di Specifica Tecnica, destinato a definire in dettaglio l’architettura#super[G] del sistema. Questa attività ha messo in evidenza la necessità di un coordinamento più stretto tra la progettazione e la documentazione, in modo da mantenere un allineamento costante lungo l’intero ciclo di sviluppo. Nel complesso, lo sprint ha portato a risultati concreti e tangibili sia sul fronte progettuale sia su quello documentale, evidenziando punti di forza del team nella gestione della complessità architetturale e aprendo al contempo spunti di miglioramento legati alla pianificazione tecnica anticipata e all’integrazione continua tra le diverse attività.

//-----------
#pagebreak()
=== Sprint 11
#v(1em)
Inizio: #h(1.99cm)*18-08-2025*\
Fine Prevista: #h(0.65cm)*29-08-2025*\
Fine Reale: #h(1.12cm)*29-08-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
#v(1em)
- Completamento della progettazione dettagliata dell’MVP#super[G];
- Programmazione dei microservizi del MVP#super[G].
- Continuazione della stesura dei documenti (Piano di Progetto, Specifica Tecnica)

==== Rischi attesi
#v(1em)
I possibili rischi :
- RT1: Rischio Tecnologico derivato da inesperienza nell'uso delle tecnologie nel progetto;
- RT2: Rischio Tecnologico derivato dall'utilizzo errato o non ottimale delle tecnologie;
- RT3: Errori di codifica o programmazione;
- RT4: Rischio di supporto e versione delle tecnologie;
- RI3: Difficoltà di "comprensione" o lavoro;

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [], [], [8], [],  [],
    [Mattia Dalla Pozza],   [], [], [], [],  [],  [10],
    [Sebastiano Marana],    [], [], [], [],  [10],[],
    [Nicholas Moretto],     [5],[], [], [],  [],  [],
    [Matteo Pretto],        [], [], [], [],  [10],[],
    [Alex Shu],             [], [], [], [8], [],  [],
    [Stefano Speranza],     [], [], [], [8], [],  [],
    [Ramona Zangla],        [], [], [], [],  [10],[],
  ),
  didascalia: "Sprint 11 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [],   [],   [],   [8(+4)],[],      [],
    [Mattia Dalla Pozza],   [],   [],   [],   [],      [],      [10],
    [Sebastiano Marana],    [],   [],   [],   [],      [10(+4)],[],
    [Nicholas Moretto],     [5],  [],   [],   [],      [],      [],
    [Matteo Pretto],        [],   [],   [],   [],      [10],    [],
    [Alex Shu],             [],   [],   [],   [8(+4)],[],      [],
    [Stefano Speranza],     [],   [],   [],   [8],     [],      [],
    [Ramona Zangla],        [],   [],   [],   [],      [10(+4)],[],
  ),
  didascalia: "Sprint 11 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti  
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],       [150€],         [17 (-5)],           [510€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [-],       [-],            [25],           [500€],
      [Analista#super[G]],        [25€/h],   [-],       [-],            [0],           [0€],
      [Progettista#super[G]],     [25€/h],   [32],      [800€],         [43 (-32)],           [1075€ (-800€)],
      [Programmatore#super[G]],   [15€/h],   [38],      [570€],         [100 (-38)],           [1500€ (-570€)],
      [Verificatore#super[G]],    [15€/h],   [10],      [150€],         [46 (-10)],           [690€ (-150€)],
      [*Totale*],                 [*-*],     [*85*],    [*1670€*],      [*231 (-85)*],         [*4275€ (-1670€)*],
    ),
    didascalia: "Sprint 11 - Aggiornamento delle risorse disponibili"
  )
]

==== Retrospettiva
#v(1em)
Nel corso dell’undicesimo sprint#super[G], il team ha concentrato le attività sul completamento della progettazione dettagliata e sull’avanzamento della fase di codifica, mentre in parallelo è proseguita la redazione della documentazione tecnica e si è svolto un incontro di aggiornamento con l’azienda M31. La progettazione dei microservizi#super[G] ha visto il completamento di quelli relativi alla gestione degli ordini#super[G] aggregati, all’autenticazione#super[G], al sistema centralizzato e al routing. L’analisi del microservizio#super[G] di autenticazione#super[G] mediante ResGate ha però evidenziato alcune criticità, principalmente legate alla complessità della tecnologia adottata e alla limitata disponibilità di documentazione ufficiale. In questa fase è stato definito il flusso architetturale che prevede l’invio della richiesta di autenticazione#super[G] dal client a un microservizio#super[G] del sistema, il quale la inoltra a ResGate: quest’ultimo, tramite token, verifica la validità della connessione e delle credenziali dell’utente, consentendo successivamente a ogni microservizio destinatario di validare i permessi e autorizzare l’accesso alle risorse richieste. Sul fronte della codifica, è stato completato il microservizio#super[G] di inventario#super[G] sia in implementazione che in testing, mentre lo sviluppo del microservizio#super[G] di ordini#super[G] è attualmente in fase di completamento. In parallelo, è proseguita la redazione della documentazione di progetto, con particolare attenzione al Piano di Progetto e alla Specifica Tecnica. Nel complesso, lo sprint ha consolidato i progressi sia a livello architetturale sia implementativo, pur facendo emergere alcuni rischi, in particolare la complessità nell’adozione di tecnologie nuove e poco documentate, la possibile dilatazione delle tempistiche di sviluppo dei microservizi#super[G] più critici e la necessità di mantenere allineate in modo costante le attività di progettazione, codifica e documentazione.

//-----------
#pagebreak()
=== Sprint 12
#v(1em)
Inizio: #h(1.99cm)*29-08-2025*\
Fine Prevista: #h(0.65cm)*12-09-2025*\
Fine Reale: #h(1.12cm)*15-09-2025*\
Giorni di ritardo: #h(0.15cm)*3*

==== Informazioni generali e attività da svolgere
#v(1em)
- Completamento programmazione dei microservizi del MVP#super[G].
- Ultimazione stesura dei documenti necessari alla fase PB.
- Approvazione finale dell'MVP da parte dell'azienda.
- Revisione PB,

==== Rischi attesi
#v(1em)
I possibili rischi :
- RT3: Errori di codifica o programmazione;
- RI3: Difficoltà di "comprensione" o lavoro;

==== Preventivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [], [], [], [],  [10],  [],
    [Mattia Dalla Pozza],   [], [], [], [],  [10],  [],
    [Sebastiano Marana],    [], [], [], [],  [10],  [],
    [Nicholas Moretto],     [],[], [], [],  [],  [10],
    [Matteo Pretto],        [], [], [], [],  [10],  [],
    [Alex Shu],             [], [], [], [], [10],  [],
    [Stefano Speranza],     [], [], [], [], [],  [10],
    [Ramona Zangla],        [5], [], [], [],  [],  [],
  ),
  didascalia: "Sprint 12 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],        [],   [],   [],   [],      [10(+2)],   [],
    [Mattia Dalla Pozza],   [],   [],   [],   [],      [10],   [],
    [Sebastiano Marana],    [],   [],   [],   [],      [10(+5)],   [],
    [Nicholas Moretto],     [],   [],   [],   [],      [],         [10(+4)],
    [Matteo Pretto],        [],   [],   [],   [],      [10],   [],
    [Alex Shu],             [],   [],   [],   [],      [10(+5)],   [],
    [Stefano Speranza],     [],   [],   [],   [],      [],         [10(-2)],
    [Ramona Zangla],        [5],   [],   [],   [],      [],         [],
  ),
  didascalia: "Sprint 12 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile#super[G]],    [30€/h],   [5],       [150€],         [12 (-5)],           [360€ (-150€)],
      [Amministratore#super[G]],  [20€/h],   [-],       [-],            [25],           [500€],
      [Analista#super[G]],      [25€/h],   [-],       [-],            [0],           [0€],
      [Progettista#super[G]],     [25€/h],   [-],      [-],         [11],           [275€],
      [Programmatore#super[G]],   [15€/h],   [62],      [930€],         [62 (-62)],           [930€ (-930€)],
      [Verificatore#super[G]],    [15€/h],   [22],      [330€],         [36 (-22)],           [540€ (-330€)],
      [*Totale*],                 [*-*],     [*89*],  [*1410€*],      [*146 (-89)*],         [*2605€ (-1410€)*],
    ),
    didascalia: "Sprint 12 - Aggiornamento delle risorse disponibili"
  )
]

==== Retrospettiva
#v(1em)
Nel corso del dodicesimo sprint#super[G], il team ha concentrato gli sforzi sul completamento della programmazione dei microservizi#super[G] previsti per l’MVP#super[G], sull’ultimazione della documentazione tecnica e sulla preparazione per l'accettazione finale da parte dell’azienda. La fase di codifica ha visto il completamento di tutti i microservizi#super[G]. Inoltre, sono stati avviati i test di integrazione per garantire che tutti i microservizi#super[G] funzionassero correttamente insieme. Parallelamente, il team ha lavorato all’ultimazione della documentazione tecnica, con particolare attenzione alla Specifica Tecnica e al Piano di Progetto, assicurandosi che fossero allineati con lo stato attuale del progetto e pronti per la revisione finale. Un incontro di aggiornamento con l’azienda M31 ha permesso di presentare i progressi fatti e di raccogliere feedback preziosi per eventuali aggiustamenti finali.\ Nonostante alcuni ritardi dovuti a imprevisti tecnici e alla necessità di approfondire alcune tecnologie, il team è riuscito a mantenere un buon ritmo di lavoro, dimostrando capacità di adattamento e collaborazione efficace. In conclusione, lo sprint ha portato a risultati significativi sia sul fronte implementativo sia su quello documentale, ponendo solide basi per le fasi successive del progetto.

= Riassunto delle risorse utilizzate durante il progetto

#align(center)[
    #figure(
  table(
    columns: (1fr, 1fr, 1fr, 1fr),
    inset: 10pt,
    align: center,
    table.header(
      [*Ruolo*], [*Costo/ora*], [*Ore Totali*], [*Costo Totale*]
    ),
    [Responsabile], [30€/h], [60], [1800€],
    [Amministratore], [20€/h], [36], [720€],
    [Analista], [25€/h], [76], [1900€],
    [Progettista], [25€/h], [145], [3625€],
    [Programmatore], [15€/h], [218], [3270€],
    [Verificatore], [15€/h], [128], [1920€],
    [*Totale*], [*-*], [*663*], [*13235€*],
  ),
  caption: [Tabella utilizzo delle risorse]
)
]

Come possiamo evincere dalla tabella sopra, il team termina la realizzazione di quanto necessario per affrontare la _Product Baseline_ con un costo totale che ammonta a *13.235€* e con un totale di *663 ore* lavorate dai vari membri del team.
La spesa è al di sotto del budget preventivato di *14.430€*, con un risparmio di *1.195€*.

  #v(4em)
  #align(center)[
    #{
    show table.cell: cl => if cl.x == 0 and cl.y != 0 {
      align(left, cl)
    } else if cl.x == 0 {
      align(bottom + left, cl)
    } else if cl.y == 0 {
      rotate(-70deg, reflow: true, align(left, cl))
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
          [*Responsabile*],
          [*Amministratore*],
          [*Analista*],
          [*Progettista*],
          [*Programmatore*],
          [*Verificatore*],
          [*Totale*],
        ),
  
      [Nicolò Bolzon],[5],[4],[11],[20],[32],[18],[*90*],
      [Mattia Dalla Pozza],[10],[4],[7],[8],[34],[19],[*82*],
      [Sebastiano Marana],[10],[4],[13],[8],[39],[19],[*93*],
      [Nicholas Moretto],[10],[4],[11],[18],[12],[24],[*79*],
      [Matteo Pretto],[5],[8],[6],[8],[31],[12],[*70*],
      [Alex Shu],[5],[4],[11],[20],[36],[4],[*80*],
      [Stefano Speranza],[5],[4],[11],[32],[10],[16],[*78*],
      [Ramona Zangla],[10],[4],[6],[26],[24],[15],[*85*],
      [*Totale*],[*60*],[*36*],[*76*],[*140*],[*218*],[*127*],[*657*]
      ),
      caption: [Ore di ogni componente per ciascun ruolo],
    )
  }
]

Dalla tabella emerge il totale delle ore effettivamente svolte da ciascun componente del team, suddivise per ruolo. Si osserva che è stato necessario ricalibrare le ore preventivate per ogni ruolo; tuttavia, il monte ore complessivo risulta comunque inferiore a quanto inizialmente stimato, con un risparmio complessivo di *57 ore*.