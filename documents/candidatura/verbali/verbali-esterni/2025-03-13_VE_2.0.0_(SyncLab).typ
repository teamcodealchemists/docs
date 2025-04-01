#import "/src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "13/03/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "2.0.0"
#let destinatario = "Sync Lab"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.stefano,
  p.alex,
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [2.0.0],
    [18/03/2025],
    [_Sync Lab_],
    [-],
    [Approvazione da parte di _Sync Lab_ del documento],
    
    [1.0.0],
    [13/03/2025],
    [N. Moretto],
    [N. Bolzon],
    [Verifica e approvazione interna del documento],

    [0.1.0],
    [13/03/2025],
    [N. Moretto],
    [N. Bolzon],
    [Redazione del documento],
  
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

#show: firma.with(
  destinatario: destinatario
)


// INSERIRE QUI CONTENUTO
= 1. Informazioni generali    //punto dell'indice
  In data *13 marzo 2025*, dalle ore *17:00* alle ore *17:30*,  è stata svolta, in modalità virtuale, una riunione con l'azienda _Sync Lab_ per discutere su quanto presentato nel capitolato d'appalto.
  
  A questo incontro, svoltosi tramite la piattaforma *Google Meet*, hanno partecipato per conto di _Sync Lab_:
  - Andrea Dorigo
  - Fabio Pallaro
  - Daniele Zorzi



= 2. Motivo della riunione
  Il Team _CodeAlchemists_ dopo aver letto e analizzato il capitolato _C4 - NearYou_, ha ritenuto opportuno richiedere un incontro per avere un'idea più chiara sul progetto da svolgere e per risolvere alcuni dubbi, tra i quali:
  
  + Organizzazione del lavoro;
  + Strumenti di comunicazione;
  + Supporto allo sviluppo del progetto

= 3. Chiarimento generale sul Capitolato
  L'azienda ha avviato l'incontro illustrandoci in modo più dettagliato il capitolato.\
  Hanno specificato che l'*obiettivo* è sviluppare una piattaforma in grado di simulare un numero variabile di utenti (tra dieci e venti), ciascuno con una propria profilazione che riflette le caratteristiche, le necessità e le preferenze individuali.\
  
  Quando un utente si avvicina ad un punto di interesse, scatta un meccanismo che verifica, in base alla profilazione dell'utente e del negozio in questione a cui si è avvicinato, se c'è bisogno di generare o meno un messaggio pubblicitario. Ogni volta l’algoritmo deve valutare se ha senso mostrare il messaggio pubblicitario e, in caso affermativo, personalizzare il messaggio in base alla tipologia di utente.\
  
  Ci è stato suggerito che possiamo sviluppare un algoritmo interno, senza fare ricorso all'intelligenza artificiale, oppure approcciarci a quest'ultima senza creare algoritmi specifici. In quest'ultimo caso, dovremo definire un prompt che venga utilizzato come input da un *Large Language Model*, che genererà quindi un messaggio pubblicitario personalizzato.\
  
  Il prodotto finale dovrà includere una *mappa geografica*, sulla quale saranno visualizzati vari *punti (utenti)* che si spostano seguendo un percorso realistico. Saranno previsti dei punti con *negozi fisici* (di diversa tipologia). Quando il sistema rileva che un utente si trova in prossimità di un negozio, deve essere generato un messaggio pubblicitario tramite il LLM.\
  
  Non è necessario affrontare la questione degli algoritmi di percorso minimo. Provvederemo noi stessi a creare file di testo contenenti le coordinate GPS, che verranno aggiornate ogni 5 secondi, in modo da definire un cammino predefinito senza ricorrere a algoritmi di calcolo del percorso.

== 3.1 Organizzazione del lavoro
  L'azienda ci ha informati che il lavoro sarà inizialmente suddiviso in sprint della durata di *2 settimane*, in quanto non sarà necessario un continuo scambio di idee e chiarimenti. Successivamente, quando le attività richiederanno un maggiore impegno e continuità, la durata degli sprint sarà ridotta a *1 settimana.*

== 3.2 Strumenti di comunicazione
  L'azienda ci ha comunicato che gli incontri iniziali saranno organizzati tramite *Google Meet*. Successivamente, metteranno a nostra disposizione un server sulla piattaforma *Discord*, che utilizzeremo sia internamente nel team per il lavoro collaborativo, sia per interagire con l'azienda e confrontarci.

== 3.3 Supporto allo sviluppo del progetto
  L'azienda ha precisato che la documentazione dei linguaggi di programmazione è già ben strutturata e che non sarà sempre necessario incontrarci per la formazione su di essi. Pertanto, l'apprendimento delle tecnologie avverrà in modo individuale.\
  
  L'azienda è disponibile ad assisterci in un incontro per discutere quali tecnologie adottare, fornendoci un'analisi dettagliata dei pro e dei contro di ciascuna. Successivamente, spetterà a noi scegliere la tecnologia più adatta alle esigenze.\
  
  Una aspetto importante comunicatoci è che non siamo vincolati a utilizzare tutte quelle proposte. Pertanto, è fondamentale valutare quale tecnologia adottare in base alle specifiche esigenze di sviluppo del prodotto.
  
  L'azienda ci ha comunicato, inoltre, che ci supporterà nella scelta, aiutandoci a riflettere sulle motivazioni alla base della selezione di una tecnologia rispetto a un'altra e sul relativo caso d'uso.

= 4. Conclusioni
  I rappresentanti dell'azienda, dopo aver affermato di seguire i gruppi di _Ingegneria del Software_ da 4-5 anni, ci hanno rassicurato riguardo al loro obiettivo nei nostri confronti come team: ci insegneranno a gestire il progetto, gestendo efficacemente il rapporto tra cliente e fornitore, attraverso la documentazione e l'interfacciarsi con il cliente stesso. Ci supporteranno anche nel porci correttamente nei confronti di loro.

  La riunione con _Sync Lab_ è stata chiara e ha risolto ogni nostro dubbio. I rappresentanti dell'azienda sono stati molto esaustivi nelle risposte e particolarmente disponibili nel ricevere domande su eventuali dubbi o incomprensioni.\
  
  Il Team _Code Alchemists_ ringrazia l'azienda _Sync Lab_ e i suoi rappresentanti per la pronta disponibilità e la professionalità mostrataci durante l'incontro e nella comunicazione tramite posta elettronica.

#pagebreak()

= 5. Approvazione Esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalemnte che il presente verbale è stato esaminato e approvato dai rappresentanti di _Sync Lab_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
