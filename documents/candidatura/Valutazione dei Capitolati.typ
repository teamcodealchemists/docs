#import "../../src/basic.typ": *

// VARIABILI
#let titolo = "Valutazione dei Capitolati"
#let status = "Approvato"
#let versione = "1.0.0"
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.0.0],
    [20/03/2025],
    [S. Marana],
    [N. Moretto],
    [Verifica e approvazione interna del documento],
    
    [0.3.0],
    [19/03/2025],
    [M. Dalla Pozza],
    [S. Marana],
    [Aggiunte informazioni, revisione e correzione di alcuni errori minori],

    [0.2.0],
    [19/03/2025],
    [M. Dalla Pozza],
    [N. Moretto],
    [Stesura completa capitolati C4, C6, C1],
    
    [0.1.0],
    [18/03/2025],
    [N. Bolzon],
    [N. Moretto],
    [Prima stesura del documento: aspetti positivi e negativi dei capitolati; compimento stesura capitolato C3],
    
    [0.0.1],
    [11/03/2025],
    [N. Bolzon],
    [R. Zangla],
    [Creazione template e struttura del documento],

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


// INSERIRE QUI CONTENUTO
#align(left)[
  = 1. Informazioni generali
  Il presente documento è stato redatto, in continuità a quanto indicato nella lettera di candidatura, al fine di motivare la scelta del team _Code Alchemists_ di candidarsi per il capitolato:
  #align(center)[*C6: Sistema di gestione di un magazzino distribuito*.]
  
  = 2. Capitolati
  Per ciascun capitolato, dopo un riepilogo generale, saranno riportati sia gli aspetti *positivi* sia quelli *negativi* individuati dai membri del team _Code Alchemists_ durante la fase di lettura personale e discussione in gruppo degli stessi.

  Di seguito, un riassunto di quanto scelto dal team _Code Alchemists_:

    #set table(
    fill:(_,y)=>if y==0 {gray}
    )
  
    #table(
    columns: (auto,auto,auto,auto,auto),
    inset: 10pt,
    align: center,
    table.header(
      [*Nr.*], [*Titolo*], [*Azienda \ Proponente*], [*Conclusione \ Discussione*], [*Ordine \ Pref.*]
    ),
    
    [*C1*],
    [Artificial QI],
    [_Zucchetti_],
    [#text(red,"NON CANDIDATI")],
    [-],

    [*C3*],
    [Automatizzare le routine digitali tramite l’intelligenza generativa],
    [_Var Group_],
    [#text(orange," VALUTATO MA NON CANDIDATI")],
    [3],

    [*C4*],
    [NearYou - Smart custom advertising platform],
    [_Sync Lab_],
    [#text(orange,"VALUTATO MA NON CANDIDATI")],
    [2],

    [*C6*],
    [Sistema di gestione di un magazzino distribuito],
    [_M31_],
    [#text(green,"CANDIDATI")],
    [1]
  )
  
  
  #pagebreak()
  == 2.1 Capitolato C1: Artificial QI di _Zucchetti_
  === 2.1.1 Informazioni generali
  Il progetto consiste nella creazione di un'applicazione per testare e valutare sistemi basati su Intelligenza Artificiale che utilizzano Large Language Models (LLM). Questi modelli, grazie alla loro capacità di comprendere il linguaggio naturale, generano risposte variabili e difficili da prevedere, rendendo necessaria una valutazione accurata dei risultati.
  
  L'applicazione dovrà archiviare domande e risposte attese, eseguire test tramite API esterne e valutare la correttezza delle risposte. Dovrà anche fornire un’interfaccia user-friendly e presentare i risultati in modo chiaro.
  
  La valutazione delle risposte potrà avvenire tramite LLM aggiuntivi o metodi tradizionali come BM25 per identificare risposte imprecise. Il sistema dovrà essere integrato e permettere un flusso di lavoro continuo, senza l'uso di strumenti separati.
  
  Il progetto si dividerà in fasi: la prima si concentrerà sul miglioramento degli algoritmi di confronto delle risposte, mentre la seconda prevede la realizzazione di una versione base (MVP) con i requisiti obbligatori. Il sistema dovrà essere costantemente aggiornato e testato per garantirne qualità e robustezza.
  === 2.1.2 Aspetti positivi
  Il progetto si inserisce in un contesto altamente innovativo, legato allo sviluppo continuo dell'Intelligenza Artificiale e all’espansione degli Large Language Models (LLM), rendendolo particolarmente interessante per chi vuole esplorare tecnologie all’avanguardia. L'uso degli LLM, in costante evoluzione, offre un'opportunità unica di applicare tecniche avanzate in un campo in crescita, ponendo il progetto in linea con le attuali tendenze tecnologiche.
  
  Uno degli aspetti positivi del progetto è la sua struttura integrata. La possibilità di sviluppare un sistema completo, che unisce archiviazione, esecuzione di test e valutazione delle risposte, semplifica la gestione e migliora l’efficienza. In particolare, il progetto permette di esplorare vari metodi di confronto tra risposte ottenute e risposte attese, favorendo lo sviluppo di competenze avanzate nella valutazione delle prestazioni dei sistemi IA.
  
  Inoltre, il progetto ha un ampio potenziale applicativo in settori pratici, come la gestione delle informazioni legali o la creazione di assistenti virtuali, dove l’affidabilità delle risposte è cruciale. In questo senso, lavorare su un sistema che migliora la qualità delle risposte degli LLM potrebbe avere un impatto concreto in molti ambiti. Nel complesso, il progetto offre un’opportunità formativa di grande valore, che consente di approfondire la conoscenza di una delle tecnologie più promettenti dell’Intelligenza Artificiale.

  === 2.1.3 Aspetti Negativi
  Il gruppo ha notato una poca trasparenza di quale sarà il lavoro da svolgere se un gruppo prenderà in considerazione di sviluppare questo capitolato.\
  Viene fornita un'idea di base, nulla di ben dettagliato.
  Altro aspetto valutato negativamente, a confronto con gli altri capitolati, è che quest'ultimo non presenta nessun tipo di indicazione circa la tipologia di tecnologie raccomandate o consigliate per lo sviluppo del progetto.
  La presentazione in aula del capitolato è stata valutata un po' negativamente, questo perchè (così è apparso) che l'azienda preferisse parlare del contesto aziendale, obiettivi aziendali, fatturato, politiche aziendali, ecc… piuttosto di presentare il capitolato più dettagliatamente.

  Sebbene gli _LLM_ siano un aspetto da valutare positivamente, sono state avanzate anche alcune perplessità circa il il futuro di quanto sviluppato in quanto progetti atti alla valutazione di LLM sono tutt’ora in sviluppo.

  === 2.1.4 Conclusione
  Dopo aver valutato attentamente il capitolato, il team Code Alchemists ha deciso di non candidarsi per l'aggiudicazione di questo progetto. Sebbene l'idea di lavorare con gli Large Language Models (LLM) offra delle opportunità interessanti, il gruppo ha riscontrato alcune criticità che hanno influenzato la decisione finale.
  
  In primo luogo, è emerso un certo disinteresse nel concentrarsi esclusivamente su un progetto che ruota attorno agli LLM, in quanto il team ritiene che altre tecnologie possano offrire maggiori stimoli e opportunità di crescita. Inoltre, la poca trasparenza riguardo al lavoro concreto da svolgere e la mancanza di dettagli sulle tecnologie consigliate per lo sviluppo hanno sollevato dubbi sull’organizzazione e sulla chiarezza del progetto.
  
  Considerando tutti questi aspetti, il team Code Alchemists ha preferito orientarsi verso opportunità che offrano maggiori certezze e che siano più in linea con gli interessi e le competenze del gruppo.

  /*
  Dopo un'attenta valutazione, il team _Code Alchemists_ ha deciso di *NON candidarsi* per l'aggiudicazione di questo capitolato aggiungendo lo scarso interesse del gruppo nello sviluppare un progetto totalmente incentrato sugli LLM _(Large Language Model)_.
  */
  
  #pagebreak()
  == 2.2 Capitolato C3: Automatizzare le routine digitali tramite l’intelligenza generativa di _Var Group_
  === 2.1.1 Informazioni generali
  Il progetto proposto da Var Group mira alla creazione di un applicativo che consenta agli utenti di costruire e automatizzare workflow tramite l'Intelligenza Artificiale (IA). L’obiettivo principale è quello di sviluppare un sistema che semplifichi attività quotidiane, come la gestione delle email e degli appuntamenti, mediante l'automazione di compiti ripetitivi utilizzando moduli applicativi specifici (es. Outlook, Word). L'utente, sfruttando l'intelligenza artificiale, può creare automatismi più complessi che interagiscono con software locali e cloud, migliorando l'efficienza nelle operazioni quotidiane.

  Il progetto include la possibilità di sviluppare moduli per diverse applicazioni, come la gestione del calendario (Outlook), l'invio di email, e altre operazioni che possano essere automatizzate con l'uso di API. Inoltre, l'utente sarà in grado di esprimere la logica del workflow tramite un’interfaccia conversazionale, usando il linguaggio naturale. Il sistema sarà accessibile sia da ambiente Windows che Mac, permettendo al team di scegliere la piattaforma più adatta per la realizzazione.
  
  Le tecnologie raccomandate per il progetto sono Python, C\#, MongoDB, React, Swift, NodeJS, Python, Typescript, e AWS. L'azienda fornirà un supporto continuo durante tutto il processo, con sessioni di design thinking e formazione sulle tecnologie utilizzate. Alla fine del progetto, il team sarà tenuto a fornire un Proof of Concept (PoC), un Minimum Viable Product (MVP), e a condurre test automatici sul codice sviluppato.
  
  
  === 2.1.2 Aspetti positivi
  Il capitolato che ci è stato proposto presenta diversi aspetti positivi che lo rendono particolarmente interessante dal punto di vista tecnico e pratico. In primo luogo, la presentazione degli obiettivi e dei passi da seguire è stata molto chiara e dettagliata. È stato utile comprendere fin da subito le risorse disponibili e i vari step del progetto, il che ci ha permesso di avere una visione complessiva del lavoro da svolgere.

  Un altro punto positivo riguarda il concept del progetto, che si caratterizza per la sua applicabilità trasversale. La possibilità di automatizzare eventi quotidiani attraverso l'uso di intelligenza artificiale e l'integrazione con strumenti già utilizzati da diversi tipi di utenti offre ampie potenzialità. Infatti, la piattaforma proposta permette di automatizzare flussi di lavoro in modo modulare, un aspetto che potrebbe rendere il progetto interessante in una vasta gamma di contesti professionali e personali.
  
  Dal punto di vista tecnico, le tecnologie raccomandate nel capitolato sono molto moderne e rilevanti. L'uso di linguaggi di programmazione come Python, C\#, e Swift, così come di strumenti come MongoDB, React e Amazon Web Services (AWS), è sicuramente vantaggioso, poiché ci permetterebbe di lavorare con tecnologie consolidata e ampiamente adottate nel settore. Questo potrebbe ridurre la curva di apprendimento e facilitare lo sviluppo del progetto. Inoltre, la possibilità di ricevere supporto dal team di Var Group, tramite formazione e sessioni di review, rappresenta una risorsa molto utile, che potrebbe aiutarci a evitare errori e a migliorare la qualità del nostro lavoro.
  
  In generale, il progetto presenta un buon equilibrio tra innovazione tecnologica e applicabilità pratica, il che lo rende un'opzione interessante da considerare per il nostro team. La possibilità di lavorare su un sistema che integra intelligenza artificiale con l'automazione di flussi di lavoro quotidiani ci sembra una sfida stimolante, con potenziale per generare risultati di impatto.


  === 2.1.3 Aspetti Negativi
  Uno degli aspetti critici riguarda la possibile instabilità o la modificabilità delle API dei servizi esterni utilizzati nel progetto. Se queste API dovessero cambiare o subire modifiche significative, potrebbe essere necessario rivedere gran parte del lavoro svolto, con il rischio che le funzionalità sviluppate non siano più compatibili o funzionanti. In tal caso, le modifiche richieste potrebbero comportare un notevole impegno per il team, rallentando il progresso e aumentando il rischio di dover fare modifiche consistenti al codice. Questo aspetto potrebbe rappresentare una sfida in un contesto in cui la stabilità e l'affidabilità sono essenziali.

  Un altro punto di preoccupazione riguarda l'interesse del gruppo nei confronti dell'Intelligenza Artificiale Generativa. Sebbene questa tecnologia sia al centro del progetto, abbiamo riscontrato un certo scetticismo e scarso entusiasmo da parte di alcuni membri del team riguardo l'approccio focalizzato sull'uso dell'IA generativa. Poiché il progetto prevede l'automazione dei flussi di lavoro utilizzando modelli di IA che si basano sulla generazione di contenuti, la mancanza di motivazione o di preparazione adeguata su questi temi potrebbe influire negativamente sull'impegno del team e sulla qualità del lavoro svolto. 
  
  Infine, è stato riscontrato dopo l'incontro con l'azienda la necessità di sviluppare un sistema di valutazione dei risultati dell'IA, il quale comporta un notevole studio e ricerca non immediata che potrebbero essere dispendiosi in termini di tempo per quanto riguarda la formazione ed il testing.
  
  /*La gestione di tecnologie avanzate richiede una buona comprensione delle sfide e delle implicazioni legate all'uso dell'IA, e la mancanza di interesse potrebbe rallentare il processo di sviluppo e l'apprendimento necessario.*/
  
  /*Infine, l'architettura cloud e la gestione dell'integrazione tra i vari ambienti locali e i servizi cloud possono presentare delle difficoltà tecniche non indifferenti, soprattutto quando si cerca di garantire la compatibilità tra diversi sistemi operativi e piattaforme. Questo potrebbe richiedere un impegno extra, sia in termini di tempo che di risorse, per affrontare le sfide di integrazione e garantire un'esperienza utente fluida e senza interruzioni.*/
  
  === 2.1.4 Conclusione
  In conclusione, il progetto presentato offre numerosi stimoli interessanti per lo sviluppo di competenze avanzate nell'ambito dell'automazione dei flussi di lavoro e dell'Intelligenza Artificiale Generativa. La possibilità di lavorare con tecnologie moderne come Python, C\#, MongoDB, React, Swift, e AWS apre la porta a numerosi apprendimenti, soprattutto per quanto riguarda l'integrazione di sistemi locali con il cloud e l'uso delle API per creare automazioni su misura.

Il concetto stesso del progetto è altamente innovativo e pratico, rispondendo a una reale esigenza di automazione delle attività quotidiane che possono essere semplificate con l'uso di Intelligenza Artificiale. Inoltre, la possibilità di costruire un’applicazione che supporti una varietà di utenti e processi offre una grande flessibilità e potenziale di sviluppo.

Tuttavia, il team deve affrontare alcune sfide significative. La potenziale instabilità delle API esterne e la necessità di adattare il sistema a eventuali modifiche potrebbe comportare imprevisti durante lo sviluppo e il testing. Inoltre, la scarsità di interesse all'interno del gruppo per lavorare su un progetto centrato sull’IA Generativa potrebbe limitare l'impegno e la motivazione di alcuni membri, con possibili conseguenze sul progresso del lavoro.

Nonostante questi aspetti negativi, il progetto presenta comunque molte opportunità di crescita, sia dal punto di vista tecnico che professionale.
  
#pagebreak()
  == 2.3 Capitolato C4: NearYou - Smart custom advertising platform di _Sync Lab_
  === 2.1.1 Informazioni generali
  Il progetto proposto riguarda lo sviluppo di una piattaforma di pubblicità personalizzata che sfrutta l'intelligenza artificiale (IA) per creare messaggi pubblicitari dinamici e pertinenti, ottimizzati per il contesto dell'utente. L'idea principale è migliorare l'efficacia degli annunci pubblicitari, evitando che gli utenti siano bombardati da messaggi generici e irrilevanti. La piattaforma analizza diversi dati relativi agli utenti, come la loro posizione geografica, comportamento online, interazioni passate con contenuti pubblicitari, e preferenze personali, per generare messaggi pubblicitari personalizzati in tempo reale. L'integrazione con tecnologie di prossimità assicura che gli annunci siano visualizzati quando e dove sono più rilevanti per l'utente, aumentando la possibilità di interazione e migliorando il ritorno sull'investimento (ROI) per i brand.

Un esempio pratico del funzionamento della piattaforma è l'integrazione con veicoli come biciclette a noleggio, che mostrano annunci personalizzati attraverso un display. La piattaforma raccoglie dati di localizzazione tramite GPS e altre informazioni relative all'utente, per poi visualizzare messaggi mirati in base al percorso dell'utente e alle attività commerciali vicine. Il sistema, quindi, non solo fornisce pubblicità personalizzate, ma ottimizza anche il momento e il luogo in cui vengono presentate, garantendo una pubblicità più efficace e meno invasiva.
  === 2.1.2 Aspetti positivi
  Un aspetto che spicca del progetto NearYou è sicuramente la sua innovazione nel campo della pubblicità digitale. L’idea di utilizzare Large Language Models per generare messaggi pubblicitari personalizzati in tempo reale è un approccio avanzato che potrebbe portare significativi miglioramenti rispetto agli annunci generici a cui siamo abituati. La possibilità di adattare la pubblicità alla posizione dell'utente e alle sue preferenze personali rappresenta un’opportunità unica per i brand di aumentare il coinvolgimento e, di conseguenza, le conversioni.

Un altro aspetto positivo è la personalizzazione dell’esperienza per l'utente. Spesso gli utenti sono infastiditi dalla pubblicità generica che non rispecchia i loro interessi, ma grazie alla profilazione avanzata e all’integrazione della localizzazione, il sistema si propone di inviare messaggi pertinenti che hanno più probabilità di essere apprezzati e interagiti. Questo potrebbe ridurre il fastidio legato alla pubblicità e migliorare l’esperienza dell'utente.

Inoltre, l’azienda Sync Lab ci ha offerto un supporto continuo e una guida dettagliata per aiutarci a prendere decisioni tecniche. Non ci hanno imposto tecnologie specifiche, ma ci hanno fornito le informazioni necessarie per fare scelte informate, e hanno dato la possibilità di lavorare in autonomia, con il supporto di documentazione già ben strutturata. La suddivisione del lavoro in sprint di due settimane inizialmente, che si ridurranno successivamente a una settimana, fornirà al team il tempo necessario per concentrarsi su ogni fase del progetto in maniera efficiente.
 
  === 2.1.3 Aspetti Negativi
  Un possibile aspetto negativo riguarda la gestione della profilazione degli utenti e le implicazioni legate al trattamento dei dati personali. Alcuni membri del nostro team, che hanno seguito corsi di diritto e informatica, hanno sollevato dubbi riguardo al rispetto delle normative europee, come il GDPR. La raccolta e la gestione dei dati relativi agli utenti, in particolare la profilazione basata su informazioni sensibili (comportamento, preferenze, posizione geografica), potrebbe rappresentare un rischio se non gestito correttamente. La piattaforma dovrà garantire la piena conformità alle normative sulla privacy, cosa che potrebbe richiedere un'attenzione particolare durante la fase di sviluppo.

Un altro punto da considerare è la scalabilità del sistema. Se il numero di utenti dovesse aumentare significativamente, la piattaforma dovrà essere in grado di supportare numerosi utenti contemporaneamente senza compromettere le prestazioni. Gestire una piattaforma che deve operare in tempo reale con una grande quantità di dati potrebbe risultare impegnativo e dispendioso in termini di risorse, sia dal punto di vista tecnico che economico. La piattaforma potrebbe necessitare di un'infrastruttura robusta, e il mantenimento della qualità del servizio, soprattutto durante i picchi di utilizzo, potrebbe comportare costi elevati.

Infine, sebbene il progetto preveda l’utilizzo di dati GPS pre-simulati, non è chiaro come la gestione delle traiettorie degli utenti possa essere integrata con la realizzazione di un sistema di messaggi in tempo reale. Non affrontare il calcolo del percorso potrebbe sembrare un vantaggio, ma potrebbe anche limitare l'adattabilità del sistema in scenari complessi, dove la gestione dinamica delle traiettorie degli utenti è cruciale.


  === 2.1.4 Conclusione
  In generale, il progetto NearYou presenta sicuramente un grande potenziale, grazie all’uso di tecnologie all’avanguardia come i Large Language Models per la personalizzazione dei messaggi pubblicitari. Le prospettive di innovazione in questo settore sono interessanti, e la proposta di Sync Lab ci offre la possibilità di lavorare su un progetto tecnologicamente stimolante e attuale. Il supporto fornito dall'azienda, la flessibilità nella scelta delle tecnologie e l’approccio pratico alla gestione del progetto sono sicuramente punti di forza.

Tuttavia, ci sono alcuni aspetti critici, come la gestione dei dati personali e le problematiche legate alla scalabilità del sistema, che richiederanno particolare attenzione. In ogni caso, il supporto da parte dell'azienda e la possibilità di scegliere autonomamente le soluzioni tecniche ci permetterebbe di affrontare le sfide con maggiore consapevolezza. Nel complesso, NearYou rappresenta un'opportunità interessante per applicare conoscenze avanzate di intelligenza artificiale e pubblicità digitale, ma con una dose di attenzione alla privacy e alla gestione delle risorse.
  #pagebreak()
  == 2.4 Capitolato C6: Sistema di gestione di un magazzino distribuito di _M31_
  
  === 2.1.1 Informazioni generali
  Il progetto riguarda lo sviluppo di un sistema di gestione per magazzini distribuiti, con l'obiettivo di ottimizzare la gestione dell'inventario in una rete di magazzini geograficamente separati. Questo sistema deve garantire che i flussi di materiali e prodotti tra i magazzini siano gestiti in tempo reale, evitando rotture di stock e migliorando la distribuzione delle scorte. Il sistema dovrà anche ridurre i livelli medi di inventario, mantenendo però scorte di sicurezza per gestire variazioni nella domanda o ritardi nelle consegne.

La soluzione proposta si baserà su un'architettura a microservizi, che permetterà a ogni magazzino di gestire autonomamente il proprio inventario, mentre le informazioni verranno sincronizzate in tempo reale con un sistema centrale. Il sistema dovrà essere in grado di monitorare i livelli di inventario, gestire conflitti derivanti da aggiornamenti simultanei, implementare riassortimenti predittivi basati su machine learning e garantire una visibilità centralizzata in tempo reale delle operazioni. Inoltre, saranno utilizzate tecnologie moderne e scalabili come Node.js, Typescript, Go, Kafka e Google Cloud, per garantire prestazioni elevate e l'interoperabilità tra i magazzini.

In sintesi, il progetto si propone di migliorare l’efficienza operativa della gestione logistica, riducendo i rischi legati alla gestione delle scorte e ottimizzando i flussi tra i magazzini.
  === 2.1.2 Aspetti positivi
   Dopo aver esaminato il capitolato, il nostro team ha identificato diversi aspetti positivi che ci hanno convinto a scegliere questo progetto. In primo luogo, la presentazione risulta particolarmente esaustiva, delineando chiaramente gli obiettivi, le tecnologie consigliate e i vari step da seguire. Questo approccio ci permette di avere una visione completa e strutturata dell'intero processo, facilitando la pianificazione delle attività.

Inoltre, gli strumenti proposti, come Google Cloud Platform e Kubernetes, sono ampiamente riconosciuti e utilizzati nel settore. La loro adozione non solo è fondamentale per la realizzazione del progetto, ma rappresenta anche un'opportunità interessante per approfondire tecnologie moderne e di grande rilevanza, ampliando il nostro bagaglio tecnico.

Pur essendo un progetto complesso, le logiche applicative e i concetti che dovremo affrontare sono altamente stimolanti. La possibilità di lavorare su tematiche avanzate, infatti, rappresenta un'opportunità di crescita significativa, permettendoci di acquisire competenze importanti per il nostro futuro professionale. Le tecnologie raccomandate, infine, sono tutte estremamente pertinenti e presentano un alto potenziale di approfondimento, rendendo il progetto ancora più interessante dal punto di vista formativo.
  === 2.1.3 Aspetti Negativi
  Il progetto presenta alcune difficoltà legate alla complessità del sistema a microservizi, che potrebbe generare problemi nella sincronizzazione dei dati tra i vari magazzini, in particolare in scenari ad alta concorrenza. La gestione dei conflitti di aggiornamento simultaneo può risultare complessa, soprattutto quando si verificano discrepanze nei dati tra magazzini. Inoltre, l'integrazione con i sistemi preesistenti potrebbe richiedere un significativo sforzo tecnico e tempi lunghi per l'adattamento. La dipendenza dalla connessione di rete potrebbe compromettere l'affidabilità delle operazioni, e l'affidamento ai dati storici per le previsioni di domanda potrebbe non sempre essere preciso, influenzando la capacità di rispondere efficacemente alle fluttuazioni della domanda.
  === 2.1.4 Conclusione
  In conclusione, la valutazione complessiva del capitolato ci ha permesso di acquisire una visione chiara e approfondita sia delle opportunità che delle sfide legate al progetto. Rispetto agli altri capitolati esaminati, questo si distingue per la sua enfasi sull'uso dell'Intelligenza Artificiale non come elemento centrale, ma come supporto all'ottimizzazione e predizione dei flussi dati. Inoltre, la gestione di magazzini decentralizzati e la sfida della sincronizzazione dei dati in scenari di incertezze operative sono tematiche stimolanti e rilevanti, che offrono numerosi spunti di sviluppo.

La riunione con i rappresentanti dell'azienda M31 ha contribuito a chiarire diversi punti, risolvendo i dubbi sollevati dal nostro team. Grazie alla disponibilità e alla professionalità dimostrata durante l'incontro, siamo riusciti a comprendere meglio le aspettative e i requisiti tecnici del progetto. Questo incontro ha inoltre confermato che, pur trattandosi di un progetto complesso, le linee guida fornite dall'azienda ci permetteranno di affrontarlo in modo strutturato, con il giusto supporto e le risorse adeguate.

Nel complesso, riteniamo che il progetto rappresenti una valida opportunità per approfondire tematiche moderne e di grande rilevanza, come la gestione logistica in scenari distribuiti e l'applicazione di tecnologie come l'Intelligenza Artificiale per la predizione dei flussi. L'approccio proposto da M31, pur richiedendo un impegno considerevole, ci offre un quadro chiaro per un possibile sviluppo e una solida base su cui costruire la soluzione finale. Siamo quindi pronti a procedere con l'implementazione, consapevoli delle sfide da affrontare ma anche delle potenzialità che questo progetto offre.
]
