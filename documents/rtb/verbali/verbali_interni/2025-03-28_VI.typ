#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "28/03/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.alex,
  p.stefano,
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  
    [1.0.0],
    [31/03/2025],
    [-],
    [N. Bolzon],
    [Approvazione del documento],

    [0.2.0],
    [18/03/2025],
    [N. Bolzon],
    [N. Moretto],
    [Aggiunta informazioni circa la riunione con _M31_],
    
    [0.1.0],
    [18/03/2025],
    [N. Bolzon],
    [N. Moretto],
    [Prima stesura del documento],

)
#let contenuto = (
    // Voci in prima pagina
    voce("Stato", status),
    voce("Versione", versione),
    voce("Presenze", presenze),
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

// INSERIRE QUI CONTENUTO
  = 1. Informazioni generali    //punto dell'indice
    In data *28 marzo 2025*, dalle ore *9:10* alle ore *11:00*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchmists_.\
    La riunione si è svolta secondo il seguente ordine del giorno:

    == 1.1 Ordine del Giorno
    + Migliorie alla parte pubblica del repository#super[G];
    + Indicazioni e cambiamenti circa la redazione dei verbali;
    + Decisioni in merito alla rotazione dei ruoli;
    + Redazione di ulteriori documenti _(Norme di Progetto, Glossario, ...)_;
    + Contattare _M31_ per fissare un incontro;
    + Assegnazione ruoli fino al giorno 11-04-2025;
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *Nicolò Bolzon* e come revisore *Nicholas Moretto*.

  == 2.1 Migliorie alla parte pubblica del repository#super[G]#super("G")
  In seguito al riscontro del prof. Vardanega, è stato accolto il suggerimento di migliorare il sito del Team, con l'obiettivo di valorizzare la documentazione.\
  
  A tal fine, alcune sezioni verranno riorganizzate per *centralizzare i contenuti*, mentre il sito subirà un restyling volto a renderlo più *moderno, accessibile e conforme agli standard attuali*. In particolare, sarà adottato un *layout più ampio e chiaro* per ottimizzare la fruibilità delle informazioni.\

  Parallelamente, per migliorare la repository#super[G], è stato stabilito di inserire i nuovi documenti prodotti a partire dal *31 marzo 2025* (31-03-2025) fino al superamento della *_Requirements and Technology Baseline#super[G]_ (RTB#super[G])* nella sezione dedicata appositamente realizzata.
  
  == 2.2 Indicazioni e cambiamenti circa la redazione dei verbali
  
  === 2.2.1 Modifica alla struttura dei verbali
  I verbali seguiranno la struttura indicata di seguito, comprendendo le seguenti sezioni:

  #set table(
    fill:(_,y)=>if y==0 {gray}
  )
  #align(center)[
  #table(
    columns: (auto,auto),
    inset: 10pt,
    align: left,
    table.header(
      [*Verbale Interno*], [*Verbale Esterno*]
    ), 
    [+ Informazioni generali\
        1.1 Ordine del giorno
     + Dettagli riunione\
        2.1 Primo punto 'odg'\
        2.2 Secondo punto 'odg' \
        2.3 ...
     + Esiti della riunione\
     + Tabella delle decisioni e azioni\ ],
     
     [+ Informazioni generali\
        1.1 Ordine del giorno
     + Dettagli riunione\
        2.1 Primo punto 'odg'\
        2.2 Secondo punto 'odg' \
        2.3 ...
     + Esiti della riunione\
     + Tabella delle decisioni e azioni\
     + Approvazione esterna\ ],
  )
]

  === 2.2.2 Sistema di versionamento
  Il sistema di versionamento dei documenti seguirà la seguente semantica:
  #align(center)[*MAJOR.MINOR.PATCH*]
  dove:
  - *MAJOR*: il valore viene incrementato *solamente* alla pubblicazione finale, dopo approvazione interna e, per i verbali esterni, dopo anche l'approvazione esterna;
  - *MINOR*: il valore viene incrementato *solamente* quando viene completato il processo di modifica e di relativa verifica;
  - *PATCH*: il valore viene incrementato *solamente* per modifiche di entità minore, quali correzioni ortografiche, di sintassi, creazione del template del documento, ...
  
  === 2.2.3 Inserimento Tabella Decisioni
  Per garantire una documentazione chiara e strutturata, il Team ha deciso di adottare l’inserimento di una *Tabella Decisioni* all’interno di ogni verbale. Questa scelta risponde a criteri di buona prassi documentale e ha l'obiettivo di rendere immediatamente accessibili le decisioni prese durante le riunioni. \

  L’adozione della Tabella Decisioni offrirà diversi vantaggi, tra cui:
  - *Chiarezza e sintesi:* consente di evidenziare in modo conciso le decisioni chiave.
  - *Tracciabilità:* acilita il monitoraggio delle scelte effettuate e delle relative motivazioni, favorendo una maggiore trasparenza.
  - *Efficienza operativa:* permette ai membri del team di reperire rapidamente le informazioni necessarie per l'attuazione delle decisioni, riducendo il rischio di ambiguità o incomprensioni.
  - *Migliore organizzazione della documentazione:* contribuisce a strutturare il verbale in modo più professionale e ordinato.

  La *Tabella delle decisioni* avrà la seguente struttura:
  #align(center)[
  #table(
    columns: (1fr,3fr),
    inset: 10pt,
    align: center,
    table.header([*ID*],[*Descrizione*])
  )
  ]

  dove:
  - *ID* rappresenta un codice#super[G] univoco che identifica una decisione presa o un'azione da intraprendere. È strutturato in modo progressivo a partire dal numero 1 e può assumere i seguenti formati:
      - *D\#*: indica una decisione interna del team con effetto immediato.\
      - *A\#*: ndica un'attività o azione che viene registrata nel sistema di Ticketing e Gestione Progetto del team.
      - *DOC\#*: ndica un'attività finalizzata alla modifica o aggiornamento della documentazione.
      
  - *Descrizione* è una breve descrizione della decisione presa o dell'azione da svolgere. \

  === 2.2.4 Recupero precedenti decisioni e azioni
  Al fine di garantire una documentazione accurata, il Team ha effettuato una rilettura dei verbali precedenti per recuperare le decisioni già assunte e avviare un tracciamento tabellare coerente con quanto stabilito nelle riunioni precedenti.
  
  Le decisioni e le azioni precedentemente individuate sono le seguenti:
  
  #let recupero_decisioni = (
    [D1], [Decisione del nome del team],
    [D2], [Decisione del logo del team],
    [D3], [Decisione su indirizzo email per comunicazioni ufficiali],
    [D4], [Decisione sui canali di comunicazione (Telegram, Discord)],
    [D5], [Decisione su uso di _Jira_ come software per monitoraggio ticketing e gestione progetto],
    [D6], [Utilizzo di Google Calendar per la gestione degli eventi],
    [D7], [Contattare azienda _M31_],
    [D8], [Contattare azienda _VarGroup_],
    [D9], [Contattare azienda _SyncLab_],
    [D10],[Scelta finale del capitolato#super[G]#super("G") *C6* avente come proponente _M31_],
    [D11],[Invio email di candidatura per il capitolato#super[G]#super("G") *C6* ai docenti],
    [A1], [Creazione account Google per email],
    [A2], [Creazione canali di comunicazione (Telegram, Discord)],
    [A3], [Creazione dashboard#super[G] su _Jira_ per monitoraggio ticketing e gestione],
    [A5], [Invio Verbale Esterno ad azienda _SyncLab_ per approvazione],
    [A6], [Invio Verbale Esterno ad azienda _M31_ per approvazione],
    [A7], [Invio Verbale Esterno ad azienda _VarGroup_ per approvazione],
    [A8], [Creazione repository#super[G]#super("G") e sito di riflessione documentazione su _GitHub_],
    [DOC1], [Stesura del Verbale Interno del 06-03-2025],
    [DOC2], [Stesura del Verbale Interno del 10-03-2025],
    [DOC3], [Stesura del documento "Valutazione Capitolati"],
    [DOC4], [Stesura del Verbale Esterno del 13-03-2025 (Meeting con _SyncLab_)],
    [DOC5], [Stesura del Verbale Esterno del 14-03-2025 (Meeting con _M31_)],
    [DOC6], [Stesura del Verbale Esterno del 17-03-2025 (Meeting con _VarGroup_)],
    [DOC7], [Stesura del Verbale Interno del 18-03-2025],
    [DOC8], [Stesura del documento "Dichirazione Impegni"],
    [DOC9], [Stesura del documento "Lettera di Presentazione"],
  )
  
  #show: decision_table.with(
  voci: recupero_decisioni
  )
  
  == 2.3 Decisioni in merito alla rotazione dei ruoli
  Il Team _Code Alchemists_ ha preso atto della segnalazione riguardante l'assenza di indicazioni sulla rotazione dei ruoli nei documenti di candidatura.

  Considerata l'importanza di definire e regolamentare tale aspetto, il team ha stabilito un periodo di rotazione della durata di *due settimane (14 giorni)*. Questo intervallo è stato scelto in quanto rappresenta il tempo minimo necessario per garantire progressi concreti, difficilmente ottenibili con una rotazione più frequente.

  == 2.4 Redazione di di ulteriori documenti
  Il gruppo ha deciso di avviare la redazione del presente verbale, nonché di ulteriori documenti, tra cui il *Glossario*, il documento di *Analisi dei Requisiti#super[G]* e il documento sulle *Norme di Progetto*.
  
  == 2.5 Richiesto incontro con _M31_
  Il Team ha deciso di contattare _M31_ tramite la posta elettronica per comunicare l'aggiudicazione del loro capitolato#super[G]#super("G") e concordare un primo incontro dedicato alla definizione delle tecnologie da adottare e di altri aspetti chiave per l'avvio del progetto.

  _M31_ ha risposto tempestivamente, confermando la riunione per *venerdì 4 aprile 2025 (04-04-2025) alle ore 10:00*, in presenza presso la loro sede per 5-6 membri del Team, con la possibilità di partecipazione online per gli assenti.

  In vista dell’incontro, il Team ha ritenuto opportuno iniziare la redazione dei primi documenti di organizzazione interna ed esterna, così da affrontare la riunione in modo strutturato e preparato.
  
  == 2.6 Assegnazione dei ruoli fino al giorno 11-04-2025
  Ai componenti del Team vengono assegnati i seguenti ruoli fino alla data dell'*11 aprile 2025* (2025-04-11):

  *Bolzon Nicolò *→ Verificatore#super[G]\
  *Dalla Pozza Mattia *→ Analista#super[G]\
  *Marana Sebastiano *→ Responsabile#super[G]\
  *Moretto Nicholas *→ Analista#super[G]\
  *Pretto Matteo *→ Verificatore#super[G]\
  *Shu Alex *→ Programmatore#super[G]\
  *Speranza Stefano *→ Analista#super[G]\
  *Zangla Ramaona *→ Analista#super[G]\ 

  #pagebreak()
  = 3. Esiti della riunione
  La riunione si conclude con l’assegnazione dei ruoli e dei compiti, unitamente alla formalizzazione delle decisioni prese e delle azioni da intraprendere nel periodo successivo, fino alla prossima riunione del Team. \

  Il Team, e in particolare gli analisti#super[G], si impegnerà nel prossimo periodo ad esaminare approfonditamente il capitolato#super[G], al fine di garantire una discussione strutturata con l’azienda durante la riunione già programmata, come indicato al punto *2.5* del presente verbale. \

  I risultati derivanti dalla lettura del capitolato#super[G]#super("G"), dall'analisi correlata e dalle discussioni con l'azienda saranno esaminati e formalizzati per iscritto nelle prossime riunioni del Team. \

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
      [D12], [Assegnazione dei ruoli e compiti fino al 11-04-2025],
      [D13], [Contattare azienda _M31_],
      [A9], [Prima analisi dei requisiti#super[G]],
      [A10], [Individuazione delle domande per incontro con azienda],
      [A11], [Aggiornamento del sito con nuova veste grafica, aggiunta glossario],
      [DOC10],[Creazione e stesura del Glossario],
      [DOC11],[Stesura del Verbale Interno del 28-03-2025],
      [DOC12],[Creazione e stesura del documento "Norme di Progetto"],
      [DOC13],[Creazione e stesura del documento "Piano di Progetto"],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
