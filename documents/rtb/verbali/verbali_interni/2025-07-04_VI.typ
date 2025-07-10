#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "04/07/2025"
#let titolo = titolo + data
#let status = "Non approvato"
#let versione = "0.1.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.nicholas,
  p.matteo,
  p.ramona,
  p.alex
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.0.0], [07/06/2025], [-], [N. Bolzon], [Revisione e approvazione del documento],
    [0.1.1], [06/07/2025], [N. Bolzon], [N. Bolzon], [Piccola miglioria con correzione sintattica],
    [0.1.0], [06/07/2025], [A. Shu], [N. Bolzon], [Prima stesura del documento]

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
    In data *4 luglio 2025*, dalle ore *14:30* alle ore *15:00*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta al termine del settimo sprint#super[G] per fare il punto della situazione, discutere le prossime attività da intraprendere e definire ruoli e responsabilità di ciascun membro del team. \

    == 1.1 Ordine del Giorno
    + Discussione sui lavori svolti durante lo sprint#super[G] RTB#super[G] 7.
    + Analisi delle criticità emerse.
    + Valutazione dello stato di avanzamento del lavoro.
    + Pianificazione del prossimo sprint#super[G] e delle attività da intraprendere.
    + Assegnazione di ruoli e responsabilità ai membri del team.
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.alex* e verificato da *#p.nicolo*. La riunione è stata moderata dal responsabile uscente, *#p.alex*. \

  == 2.1 Lavori svolti durante lo sprint RTB 7
  Nel settimo sprint#super[G], il team si è concentrato principalmente sul miglioramento del documento di Analisi dei Requisiti e soprattutto sullo sviluppo del PoC _(Proof of Concept)_. \

  === 2.1.1 Miglioramento analisi dei requisiti
  A seguito di un incontro di confronto con il prof. Cardin, sono emerse alcune imprecisioni nei casi d’uso e nel documento di Analisi dei Requisiti. Dopo aver analizzato e compreso gli errori riscontrati, sono state apportate le opportune correzioni e migliorie. Sebbene le modifiche abbiano richiesto un impegno considerevole in termini di tempo, esse hanno contribuito a garantire una maggiore coerenza, chiarezza e conformità alle normative nella stesura del documento. La revisione e l’aggiornamento del documento si sono conclusi negli ultimi giorni.

  === 2.1.2 Sviluppo del PoC
  Lo sviluppo del Proof of Concept (PoC) risulta completato. Sono stati conclusi i microservizi relativi a ordine, inventario e inventario cloud, nonché il collegamento tra i microservizi tramite API, che è stato correttamente configurato.
  I programmatori hanno portato a termine le seguenti attività: creazione del microservizio di ordine, configurazione del database per il servizio ordine e sviluppo del microservizio di inventario aggregato. Restano invece ancora in corso il setup dell’API Gateway e la configurazione di NATS JetStream, attività per le quali si prevede il completamento entro la prima metà dell’ottavo sprint.
  Al fine di garantire maggiore chiarezza e manutenibilità del codice, il team ha inoltre eseguito attività di pulizia del codice.

  == 2.2 Analisi delle criticità e valutazione avanzamento del lavoro
  Durante la riunione, il team ha fornito un aggiornamento sulla situazione attuale, sottolineando la criticità rappresentata dal rallentamento delle attività dovuto alla sessione estiva degli esami. Tale circostanza, attesa e coerente con quanto previsto nel Piano di Progetto, ha avuto un impatto meno significativo nell’ultimo sprint, grazie al fatto che molti membri del team hanno concluso i propri esami e risultano ora maggiormente disponibili. Il rallentamento è stato avvertito in particolare nello sviluppo del Proof of Concept (PoC).

  == 2.3 Definizione del prossimo sprint
  Dopo aver considerato concluso il settimo sprint, il team ha provveduto all’assegnazione dei ruoli e delle responsabilità ai membri, come riportato nella sezione seguente del presente documento.
  L’ottavo sprint, anch’esso della durata di due settimane, avrà inizio il *7 luglio* e si concluderà il *18 luglio*. A questo sprint#super[G] si farà riferimento come Sprint#super[G] RTB#super[G] 8. Il prossimo sprint sarà focalizzato principalmente sulla presentazione del Proof of Concept (PoC)#super[G] all’azienda e sulla sottomissione della candidatura per la verifica RTB#super[G].

  === 2.3.1 Assegnazione di ruoli e responsabilità ai membri del team
  Durante la riunione, il team ha discusso e assegnato i ruoli e le responsabilità di ciascun membro, conformemente a quanto stabilito nelle Norme di Progetto. In linea con tali indicazioni, la rotazione dei ruoli è avvenuta come segue:
  - *Responsabile#super[G]*: #p.matteo
  - *Amministratore#super[G]*: #p.alex
  - *Programmatori#super[G]*: #p.mattia, #p.sebastiano, #p.nicholas, #p.stefano, #p.ramona
  - *Verificatore#super[G]*: #p.nicolo

  === 2.3.2 Definizione delle attività da intraprendere
  Al termine della riunione, il nuovo responsabile#super[G], #p.matteo, ha redatto un documento interno contenente l’elenco delle attività di progetto, successivamente condiviso con tutti i membri del team.
  Il documento è consultabile #link("https://docs.google.com/document/d/1JHYJu6UcfCuIRmfppRCBLCG1_0VfJx1tzNEtufwApdQ/edit?usp=sharing")[#underline[qui]].

  #pagebreak()
  = 3. Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.3* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [A23], [Terminare il POC nella prima metà dell'ottavo sprint],
    [D39], [Effettuare un incontro con M31 dopo la conclusione del POC],
    [A24], [Ultimare la stesura dei documenti],
    [A25], [Invio richiesta di candidatura RTB],
    [DOC28], [Stesura del verbale interno in data 04/07/2025]
  )

  #show: decision_table.with(
  voci: voci_tabella
  )
  
