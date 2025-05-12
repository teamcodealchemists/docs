#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "09/05/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.nicholas,
  p.alex,
  p.stefano,
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

    [1.0.0], [12/05/2025], [-], [S. Marana], [Approvazione del documento],
    [0.1.0], [12/05/2025], [N. Moretto], [S. Marana], [Prima stesura del documento],

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
    In data *09 maggio 2025*, dalle ore *14:30* alle ore *15:30*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta, alla fine del terzo sprint, per fare il punto della situazione, per discutere le attività da intraprendere e per definire i ruoli e le responsabilità di ciascun membro del team. \

    == 1.1 Ordine del Giorno
    + Discussione sui lavori svolti durante lo sprint RTB 3
    + Analisi di criticità emerse
    + Definizione del prossimo sprint e delle attività da intraprendere
    + Definizione dei ruoli e delle responsabilità di ciascun membro del team
    
  #pagebreak()
  = 2. Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicholas* e verificato da *#p.sebastiano*.

  == 2.1 Lavori svolti durante lo sprint RTB 3
  Durante il terzo sprint, il team ha lavorato principalmente su attività di progettazione. Ogni membro del team ha avuto due minuti di tempo per presentare le attività svolte e i risultati ottenuti. Per praticità, nel presente verbale è stato deciso di suddividere le attività svolte in attività svolte dai vari ruoli e non in base ai membri del team. \

  === 2.1.1 Lavori svolti dal responsabile#super[G]
  Il responsabile#super[G] si è occupato di coordinare le attività del team e di monitorare l'andamento dei lavori. Ha inoltre partecipato attivamente alla definizione delle attività da intraprendere e ha fornito supporto ai membri del team nella risoluzione di eventuali problematiche: con i progettisti ha continuato l'attività di definizione dell'architettura per il PoC#super[G]. \
  Si è occupato della comunicazione esterna e interna, si è occupato di redarre i verbali interni ed esterni, e di redarre il *Diario di Bordo*#super[G], documento necessario per presentare il lavoro svolto al professore. \

  === 2.1.2 Lavori svolti dall'amministratore#super[G]
  L'amministratore#super[G] ha il compito di gestire le varie attività del team e di coordinare le attività di sviluppo. Ha partecipato attivamente alla definizione delle attività da intraprendere e ha fornito supporto ai membri del team nella risoluzione di eventuali problematiche: si è interfacciato con gli analisti per l'analisi dei casi d'uso.  \
  Ha inoltre continuato a redarre il *Piano di Progetto*#super[G], documento fondamentale per la pianificazione delle attività del team. \

  === 2.1.3 Lavori svolti dagli analisti
  Gli analisti, durante il terzo sprint hanno continuato *l'analisi dei casi d'uso*, che ha portato alla definizione di alcuni casi d'uso e alla loro scomposizione in sotto-casi d'uso. \
  Questa attività non è completata in quanto i casi d'uso sono molti e sono complessi. \ Gli analisti hanno dichiarato di riuscire a completare l'analisi dei casi d'uso entro la metà del terzo sprint, presumibilmente entro il *16 maggio*. \

  === 2.1.4 Lavori svolti dai progettisti
  I progettisti hanno lavorato principalmente sulla *progettazione architetturale del PoC*#super[G].\
  Durante la prima settimana dello sprint, hanno progettato un'ipotesi di architettura del PoC#super[G] sulla base dell'analisi dello stato dell'arte svolto in precedenza. \ Tale architettura è stata presentata a _M31_ durante la riunione del *05/05/2025*. \
  Durante la seconda settimana dello sprint, i progettisti hanno modellato l'ipotesi di architettura del PoC#super[G] sulla base dei feedback ricevuti da _M31_, trovando una soluzione che potrebbe essere definitiva. \

  Il lavoro non è ancora concluso, in quanto ci sono ancora alcuni aspetti da definire e da chiarire. Durante il prossimo sprint i progettisti hanno dichiarato di concludere l'attività di progettazione dell'architettura. \

  === 2.1.5 Lavori svolti dai verificatori
  Il verificatore ha il compito di verificare la correttezza e la completezza dei documenti redatti dal team. Durante il secondo sprint, ha verificato i vari documenti redatti dal team.
  Ha inoltre continuato a redarre il *Piano di Qualifica*#super[G], documento volto a definire le modalità di qualifica e verifica del prodotto#super[G] software. \

  == 2.2 Criticità emerse
  Gli analisti hanno sollevato un problema riguardante un membro del team che non si è distinto per il suo lavoro. \
  Il membro del team in questione, secondo gli analisti, dopo aver consegnato in modo frettoloso una lista di casi d'uso non completamente analizzati, non ha partecipato attivamente alle attività di analisi e non ha fornito un contributo significativo al lavoro del team. \ Il team ha deciso di cercare un riscontro diretto con questo membro, se non dovessero esserci miglioramenti, sarà necessario prendere provvedimenti. \

  Viste le conclusioni dei vari lavori, e l'imminente inizio del PoC#super[G], si è deciso di introdurre un nuovo ruolo nel team: il *programmatore#super[G]*.\

  == 2.3 Definizione del prossimo sprint
  Dopo aver ritenuto concluso il terzo sprint, il team ha deciso di iniziare a definire ruoli, tempistiche e obiettivi per il terzo sprint.\
  Il terzo sprint avrà una durata di due settimane: inizierà il *09 maggio* e terminerà il *23 maggio*.\
  Si farà riferimento a questo sprint come _Sprint RTB 4_.\
  Durante il quarto sprint, il team si concentrerà principalmente *sul completamento dei casi d'uso* e sul *completamento della progettazione architetturale del PoC*. \ Inoltre, si inizierà a lavorare su una prima *configurazione delle tecnologie*.

  === 2.3.1 Definizione dei ruoli e delle responsabilità
  Durante la riunione, il team ha discusso e definito i ruoli e le responsabilità di ciascun membro del team.\
  Come previsto dalle Norme di Progetto, il team ha ruotato i ruoli e le responsabilità in questo modo:
  - *Responsabile#super[G]*: #p.ramona
  - *Amministratore#super[G]*: #p.matteo
  - *Analista#super[G]*: #p.alex
  - *Progettisti#super[G]*: #p.stefano, #p.mattia, #p.sebastiano
  - *Programmatore#super[G]*: #p.nicolo
  - *Verificatore#super[G]*: #p.nicholas

 === 2.3.2 Definizione delle attività da intraprendere
  Dopo la riunione, il responsabile#super[G] ha redatto un documento interno di indicazione delle attività di progetto, che è stato condiviso con i membri del team.\ 
  Il seguente documento è consultabile #link("https://docs.google.com/document/d/1jlj39DUXzqnDYVSte4G8svFPGAS4GDSxdcze8hff8fU/edit?tab=t.0")[#underline[qui]].

  
  #pagebreak()
  = 3. Esiti della riunione
  La riunione si conclude con l'assegnazione dei compiti e la definizione delle decisioni e azioni intraprese, ponendo particolare attenzione al completamento dell'analisi dei casi d'uso e della progettazione architetturale.\

  Nel periodo successivo, il team continuerà con le attività previste indicate al punto 2.3.2. \

  Eventuali risultati emersi o criticità riscontrate saranno affrontati e formalizzati nei prossimi incontri.

  #pagebreak()
  = 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [D23], [Decisione di confermare un analista e un progettista dello sprint precedente per garantire continuità al lavoro svolto],
    [D24], [Assegnazione dei ruoli e delle responsabilità ai membri del team],
    [D25], [Decisione delle attività da intraprendere per il prossimo sprint],
    [DOC20], [Stesura del Verbale Interno del 09-05-2025],
  )

  #show: decision_table.with(
  voci: voci_tabella
)
  
