#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "04/07/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.nicholas,
  p.matteo,
  p.sebastiano,
  p.alex
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    
    [1.0.0], [21/07/2025], [-], [S.Speranza], [Revisione del documento],
    [0.1.0], [21/07/2025], [M.Pretto], [S.Speranza], [Prima stesura del documento]

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
    In data *18 luglio 2025*, dalle ore *14:30* alle ore *15:00*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta al termine dell'ottavo sprint#super[G] per fare il punto della situazione, discutere le prossime attività da intraprendere e definire ruoli e responsabilità di ciascun membro del team. \

    == 1.1 Ordine del Giorno
    + Discussione sui lavori svolti durante lo sprint#super[G] RTB#super[G] 8.
    + Analisi delle criticità emerse.
    + Valutazione dello stato di avanzamento del lavoro.
    + Pianificazione del prossimo sprint#super[G] e delle attività da intraprendere.
    + Assegnazione di ruoli e responsabilità ai membri del team.
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.matteo* e verificato da *#p.stefano*. La riunione è stata moderata dal responsabile uscente, *#p.matteo*. \

  == 2.1 Lavori svolti durante lo sprint RTB 8
  Nell'ottavo sprint#super[G] il team, dopo aver completato lo sviluppo del PoC _(Proof of Concept)_, si è concentrato sul completamento e sulla relativa verifica dei documenti inerenti alla candidatura RTB. Dopo aver effettuato tali attività ha quindi proceduto con la candidatura stessa. \

 === 2.1.1 Completamento e verifica documenti
 Dopo aver terminato lo sviluppo del Proof of Concept (PoC), il team ha lavorato sull'ultimazione dei documenti necessari alla candidatura RTB, verificandoli e ultimandoli alla versione 1.0. Ecco i documenti sui quali si è lavorato:
 - Analisi dei Requisiti
 - Piano di Progetto
 - Piano di Qualifica
 - Norme di Progetto
 - Glossario

 === 2.1.2 Presentazione domanda candidatura RTB
 Oltre all'ultimazione dei documenti, si è inoltre proceduto con la presentazione della domanda di candidatura per la fase di RTB. Si è perciò scritta la relativa lettera e si è inviato una mail al #p.cardin con la richiesta di revisione.


  == 2.2 Analisi delle criticità e valutazione avanzamento del lavoro
  Durante la riunione, il team ha fornito un aggiornamento sulla situazione attuale, sottolineando la criticità rappresentata dal rallentamento delle attività dovuto alla sessione estiva degli esami. Tale circostanza, attesa e coerente con quanto previsto nel Piano di Progetto, ha avuto un impatto meno significativo nell’ultimo sprint, grazie al fatto che molti membri del team hanno concluso i propri esami e risultano ora maggiormente disponibili. Il rallentamento è stato avvertito in particolare nello sviluppo del Proof of Concept (PoC). Tale criticità non sarà più rilevata nel prossimo sprint.

  == 2.3 Definizione del prossimo sprint
  Dopo aver considerato concluso l'ottavo sprint, il team ha provveduto all’assegnazione dei ruoli e delle responsabilità ai membri, come riportato nella sezione seguente del presente documento.
  Il nono sprint, anch’esso della durata di due settimane, avrà inizio il *21 luglio* e si concluderà il *1 agosto*. A questo sprint#super[G] si farà riferimento come Sprint#super[G] RTB#super[G] 9. Il prossimo sprint sarà focalizzato principalmente sulla revisione della fase RTB e sull'inizio delle attività riguardanti la fase PB.

  === 2.3.1 Assegnazione di ruoli e responsabilità ai membri del team
  Durante la riunione, il team ha discusso e assegnato i ruoli e le responsabilità di ciascun membro, conformemente a quanto stabilito nelle Norme di Progetto. In linea con tali indicazioni, la rotazione dei ruoli è avvenuta come segue:
  - *Responsabile#super[G]*: #p.sebastiano
  - *Amministratore#super[G]*: #p.nicholas
  - *Programmatori#super[G]*: #p.nicolo, #p.mattia
  - *Progettisti#super[G]*: #p.alex, #p.matteo, #p.ramona
  - *Verificatore#super[G]*: #p.stefano

  === 2.3.2 Definizione delle attività da intraprendere
  Al termine della riunione, il team ha discusso circa le attività da svolgere all'interno del nono sprint. Attività che riguardano principalmente l'inizio della fase di PB del progetto.
  
  #pagebreak()
  = 3. Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.3* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.

#pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D40], [Effettuare la presentazione con il prof. Riccardo Cardin],
    [A28], [Iniziare con lo sviluppo della fase PB],
    [DOC30], [Stesura del verbale interno in data 21/07/2025]
  )

  #show: decision_table.with(
  voci: voci_tabella
  )
  
