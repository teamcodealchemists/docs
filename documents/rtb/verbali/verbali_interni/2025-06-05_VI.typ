#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "05/06/2025"
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
  p.ramona,
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.0.0], [07/06/2025], [-], [R. Zangla], [Approvazione del documento],
    [0.1.0], [06/06/2025], [N. Bolzon],[R. Zangla], [Prima stesura del documento]

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
= 1. Informazioni generali
    In data *05 giugno 2025*, dalle ore *14:30* alle ore *15:30*, si è svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è tenuta al termine del quinto sprint#super[G] per fare il punto della situazione, discutere le prossime attività da intraprendere e definire ruoli e responsabilità di ciascun membro del team.

== 1.1 Ordine del Giorno
  + Discussione sui lavori svolti durante lo sprint#super[G] RTB#super[G] 5.
  + Analisi delle criticità emerse.
  + Valutazione dello stato di avanzamento del lavoro.
  + Pianificazione del prossimo sprint#super[G] e delle attività da intraprendere.
  + Assegnazione di ruoli e responsabilità ai membri del team.
    
  #pagebreak()
= 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicolo* e verificato da *#p.ramona*. La riunione è stata moderata dal responsabile uscente, *#p.nicolo*.\

== 2.1 Lavori svolti durante lo sprint RTB 5
  Nell’ambito del quinto sprint#super[G], il team si è concentrato principalmente sul miglioramento del documento di Analisi dei Requisiti, sull’elaborazione della progettazione architetturale dettagliata e sull’avanzamento dello sviluppo del PoC _(Proof of Concept)_.\

=== 2.1.1 Miglioramento analisi dei requisiti
  Per quanto riguarda il miglioramento del documento di Analisi dei Requisiti, il team ha svolto un lavoro di revisione e riscrittura di diversi requisiti, con l’obiettivo di renderli più granulari e privi di ambiguità. Tale attività ha tenuto conto dei diversi attori coinvolti e delle specifiche richieste, sia quelle esplicitate nel capitolato, sia quelle emerse durante le riunioni con l’azienda _M31_ o definite internamente dal team.

=== 2.1.2 Progettazione architetturale dettagliata
  Nello sprint appena concluso, è proseguita anche la progettazione architetturale dettagliata, con un’attenzione particolare alla definizione della logica di business di alcuni microservizi.

=== 2.1.3 Sviluppo del PoC
  Gran parte del tempo di lavoro è stata dedicata allo studio e allo sviluppo del PoC, con particolare attenzione all’analisi delle tecnologie coinvolte e della loro integrazione, alla definizione dell’infrastruttura di deployment e all’avvio dello sviluppo dei microservizi necessari per la presentazione del PoC.

== 2.2 Analisi delle criticità e valutazione avanzamento del lavoro
  Durante la riunione, il team ha effettuato un aggiornamento sulla situazione attuale, evidenziando due principali criticità: il rallentamento delle attività legato all'inizio della sessione estiva degli esami, un aspetto previsto e coerente con quanto indicato nel Piano di Progetto, e la ridotta disponibilità settimanale di giorni lavorativi, dovuta alla festività di lunedì 2 giugno e agli esami sostenuti da alcuni membri del team nella giornata di venerdì 6 giugno.

== 2.3 Definizione del prossimo sprint
  Dopo aver considerato concluso il quinto sprint, il team ha provveduto all’assegnazione dei ruoli e delle responsabilità ai membri, come riportato nella sezione seguente del presente documento.
  Il sesto sprint, anch’esso della durata di due settimane, avrà inizio il *9 giugno* e si concluderà il *20 giugno*. A questo sprint#super[G] si farà riferimento come Sprint#super[G] RTB#super[G] 6.

  Durante lo Sprint#super[G] RTB#super[G] 6, il team si concentrerà principalmente sul completamento del documento di *Analisi dei Requisiti*, in vista della successiva approvazione da parte dell’azienda. Proseguiranno inoltre la *progettazione dettagliata* del sistema e lo sviluppo del *PoC*, attività che richiederà un impegno significativo, come evidenziato dal numero di programmatori coinvolti in questo sprint. Parallelamente, continuerà anche la *redazione della documentazione progettuale*.

=== 2.3.1 Assegnazione di ruoli e responsabilità ai membri del team
  Durante la riunione, il team ha discusso e assegnato i ruoli e le responsabilità di ciascun membro, conformemente a quanto stabilito nelle Norme di Progetto. In linea con tali indicazioni, la rotazione dei ruoli è avvenuta come segue:
  - *Responsabile#super[G]*: #p.stefano
  - *Amministratore#super[G]*: #p.ramona
  - *Analista#super[G]*: #p.sebastiano
  - *Progettista#super[G]*: #p.nicholas
  - *Programmatori#super[G]*: #p.matteo, #p.alex, #p.nicolo
  - *Verificatore#super[G]*: #p.mattia

=== 2.3.2 Definizione delle attività da intraprendere
  Al termine della riunione, il nuovo responsabile#super[G], #p.stefano, ha redatto un documento interno contenente l’elenco delle attività di progetto, successivamente condiviso con tutti i membri del team.
  Il documento è consultabile #link("https://docs.google.com/document/d/1m22DyGmKMaKSyxiCURxow3LNKPGVmH2grjpeL66nB78/edit?usp=sharing")[#underline[qui]].

  
  #pagebreak()
= 3. Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.3* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.


// DA SISTEMARE
  #pagebreak()
= 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D30], [Decisione di aumentare il numero di programmatori per velocizzare lo sviluppo del PoC],
    [D31], [Assegnazione dei ruoli per il prossimo sprint],
    [D32], [Decisione di terminare la stesura del documento Analisi dei Requisiti per approvazione dell'azienda],
    [D33], [Decisione di terminare la progettazione dettagliata necessaria per il PoC così da veloccizzare la candidatura per l'RTB],
    [A19], [Proseguimento con la stesura degli altri documenti di progetto],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
