#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "01/08/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.sebastiano,
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
    [1.0.0], [01/08/2025], [-], [S. Marana], [Approvazione del documento],
    [0.1.0], [01/08/2025], [N. Bolzon],  [S. Marana], [Prima stesura del documento]

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
    In data *1 agosto 2025*, dalle ore *9:30* alle ore *10:30*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta al termine del nono sprint#super[G] per fare il punto della situazione, discutere le prossime attività da intraprendere e definire ruoli e responsabilità di ciascun membro del team. \

    == 1.1 Ordine del Giorno
    + Discussione sui lavori svolti durante lo sprint#super[G] RTB#super[G] 9.
    + Analisi delle valutazioni ricevute nelle revisioni RTB.
    + Pianificazione del prossimo sprint#super[G] e delle attività da intraprendere.
    + Assegnazione di ruoli e responsabilità ai membri del team.
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicolo* e verificato da *#p.stefano*. La riunione è stata moderata dal responsabile uscente, *#p.sebastiano*. \

  == 2.1 Lavori svolti durante lo sprint RTB 9
  Nel nono sprint#super[G], il team ha svolto due incontri di revisione. Il primo si è tenuto il *21 luglio 2025* con il #p.cardin; in seguito, ottenuto il parere favorevole, si è svolto un secondo incontro il *31 luglio 2025* con il #p.tullio. Entrambe le revisioni si sono concluse con esito complessivamente positivo. \

  Contestualmente, il team ha lavorato alla preparazione delle presentazioni da esporre durante le due revisioni con i docenti. A seguito delle valutazioni positive ricevute, gli esiti degli incontri sono stati comunicati all’azienda.

  Dopo aver ottenuto il parere favorevole nella prima parte della revisione *RTB*#super[G], i progettisti e i programmatori hanno proseguito con le attività di progettazione per la fase *PB*#super[G], avviando contestualmente la configurazione software finalizzata alla realizzazione dell’*MVP*#super[G].

  == 2.2 Analisi delle valutazioni ricevute nelle revisioni RTB
  Durante la riunione, il team ha attentamente esaminato e discusso i commenti ricevuti dai docenti nella valutazione successiva al superamento della fase RTB#super[G]. Tale confronto ha rappresentato un momento di riflessione importante, utile a consolidare i punti di forza evidenziati e a individuare eventuali margini di miglioramento.

  In particolare, è stata affrontata la pianificazione delle prossime attività, prendendo come riferimento i suggerimenti forniti dal #p.tullio. Il gruppo ha deciso di procedere con l’avvio della fase di progettazione dettagliata del sistema, seguendo i principi e i criteri metodologici dell’Ingegneria del Software appresi durante il corso.

  Parallelamente, i membri del team incaricati dello sviluppo software si dedicheranno a un’attività mirata di approfondimento e sperimentazione delle tecnologie e tecniche previste per la realizzazione del progetto. Questo percorso di "allenamento" ha lo scopo di acquisire padronanza degli strumenti, al fine di affrontare la successiva fase di codifica in modo consapevole, sistematico ed efficace, evitando approcci improvvisati o tentativi non strutturati.

  == 2.3 Definizione del prossimo sprint
  Dopo aver considerato concluso il nono sprint, il team ha provveduto all’assegnazione dei ruoli e delle responsabilità ai membri, come riportato nella sezione seguente del presente documento.
  Il decimo sprint, anch’esso della durata di due settimane, avrà inizio il *1 agosto* e si concluderà il *15 agosto*. A questo sprint#super[G] si farà riferimento come Sprint#super[G] PB#super[G] 10.

  === 2.3.1 Assegnazione di ruoli e responsabilità ai membri del team
  Durante la riunione, il team ha discusso e assegnato i ruoli e le responsabilità di ciascun membro, conformemente a quanto stabilito nelle Norme di Progetto. In linea con tali indicazioni, la rotazione dei ruoli è avvenuta come segue:
  - *Responsabile#super[G]*: #p.mattia.
  - *Amministratore#super[G]*: #p.matteo.
  - *Programmatori#super[G]*: #p.alex.
  - *Progettisti#super[G]*: #p.stefano, #p.ramona, #p.nicolo, #p.nicholas.
  - *Verificatore#super[G]*: #p.sebastiano.

  === 2.3.2 Definizione delle attività da intraprendere
  Al termine della riunione, il team ha discusso circa le attività da svolgere all'interno del nono sprint. Attività che riguardano il proseguo della fase di PB del progetto, dopo approvazione e superamento della fase RTB.
  
  #pagebreak()
  = 3. Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.3* del presente documento.

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri. Il responsabile resta a disposizione per supportare il team in caso di eventuali difficoltà.

#pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D41], [Aumentare il numero di progettisti per terminare la progettazione dettagliata.],
    [D42], [Diminuire il numero di programmatori, necessari maggiormente nello sprint successivo, volta maggiormente alla codifica.],
    [A29], [Proseguire e concludere la progettazione dettagliata.],
    [A30], [Iniziare con la stesura necessaria per la fase PB.],
    [A31], [Aggiornamento di planning e task su Jira per ottimizzare tempi e distribuire correttamente il lavoro.],
    [DOC31], [Stesura del verbale interno in data 01/08/2025]
  )

  #show: decision_table.with(
  voci: voci_tabella
  )
  
