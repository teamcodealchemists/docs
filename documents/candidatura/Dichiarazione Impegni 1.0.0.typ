#import "../../src/basic.typ": *

// VARIABILI
#let title = "Dichiarazione Impegni"
#let status = "Approvato"
#let version = "1.0.0"
#let presenze = (
  p.nicolo,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.stefano,
  p.alex,
  p.ramona
)
#let distribuzione = (
  "Code Alchemists",
  p.tullio,
  p.cardin,
)


// IMPOSTAZIONI TESTO
#set text(
  lang: "it",
  font: "New Computer Modern",
  size: 11pt,
)

// HEADER
#set page(header: context {
  if counter(page).get().first() > 1 [
    _Code Alchemists_
    #h(1fr)
    #title
    #rect(width: 100%, height: 1pt, fill: black)
  ]
})

// FOOTER
#set page(footer: context {
  if counter(page).get().first() > 1 [
    #rect(width: 100%, height: 1pt, fill: black)
    #align(center)[
      Pagina
      #counter(page).display("1")
      di
      #counter(page).final().first()
    ]
  ]
})

// PRIMA PAGINA
#page(background: image("../../assets/logoUnipdSfondo.png"))[
  #align(center)[ // Imposta tutto il testo centrato di default

    #image("../../assets/Logo-nome-motto.png", width: 8cm)

    //TITOLO
    #text(size: 22pt)[
       *#title*
    ]
    #set text(size: 15pt)
    
    #voce("Stato", status)
    #voce("Versione", version)
    #voce("Distribuzione", distribuzione)

  ]
]

#pagebreak()
#align(left)[
  #text(size:16pt)[
    *Registro delle Modifiche*
  ]

  #set table(
    fill:(_,y)=>if y==0 {gray}
  )

  #table(
    columns: (auto,auto,auto,auto,auto),
    inset: 10pt,
    align: center,
    table.header(
      [*Vers.*], [*Data*], [*Autore*],[*Verificatore*],[*Descrizione*]
    ),

    [1.0.0],
    [20/03/2025],
    [R. Zangla],
    [S. Marana],
    [Approvazione Interna],
    
    [0.4.0],
    [19/03/2025],
    [R. Zangla],
    [S. Marana],
    [Aggiornamento descrizione ruoli],
    
    [0.3.0],
    [18/03/2025],
    [N. Bolzon],
    [S. Marana],
    [Aggiunta sezione 5 con un'analisi su eventuali rallentamenti, rischi e mitigazioni],
    
    [0.2.0],
    [18/03/2025],
    [N. Bolzon],
    [S. Marana],
    [Aggiunta preventivo costi e suddivisione ore],
    
    [0.1.0],
    [17/03/2025],
    [N. Bolzon],
    [S. Marana],
    [Prima stesura del documento],

    [0.0.1],
    [17/03/2025],
    [N. Bolzon],
    [S. Marana],
    [Creazione template documento],
  )
]

#pagebreak()

#outline()
  #pagebreak()
  #align(left)[
  = 1. Introduzione
  Con il presente documento, il Team _Code Alchemists_ intende esporre l'impegno orario ritenuto necessario per la progettazione e lo svolgimento del capitolato
  #align(center)[*C6 - Sistema di Gestione di un Magazzino Distribuito*]
  progetto per il quale il gruppo di lavoro ha presentato la propria candidatura. \

  Nel presente documento verranno descritti i ruoli che ciascun membro del team ricoprirà durante le settimane di sviluppo del progetto, un preventivo dei costi e gli impegni orari, specificando le ore produttive di ogni componente del gruppo.\

  #pagebreak()
  = 2. Definizione Ruoli
  La suddivisione delle ore per ruolo è stata effettuata tenendo conto dei seguenti criteri:
  - Ruotare su tutti i ruoli;
  - Assumere ogni ruolo per un tempo totale congruo;
  - Assumere non più di un ruolo alla volta.

  Nel paragrafo successivo si procederà all’analisi dei ruoli che ogni membro del Team, a rotazione, sarà chiamato a svolgere. Tale analisi costituisce parte integrante delle motivazioni alla base della suddivisione delle ore assegnate a ciascun ruolo, come riportato nelle sezioni *Preventivo Costi* e *Suddivisione Ore*.

  Si precisa, inoltre, che la distribuzione delle ore di lavoro tra i membri del gruppo presenta leggere differenze, determinate dalle preferenze espresse da ciascun componente.

  La rotazione dei ruoli avverrà secondo quanto verrà definito nel *Way of Working*, presumibilmente ogni 2 settimane.
  
  == 2.1 Responsabile 
  Il *Responsabile* assicura il completamento del progetto in modo efficiente, nel rispetto degli obiettivi prefissati, delle tempistiche stabilite e delle aspettative del committente, garantendo inoltre il corretto avvicendamento dei ruoli all'interno del Team.
  
  Considerato il maggiore impatto economico associato a tale figura, il team si impegna a svolgere questa funzione con la massima efficienza, prevedendo un impiego medio di ore inferiore rispetto agli altri ruoli, al fine di massimizzare la resa e contenere i costi.
  
  Al Responsabile saranno richieste competenze nella gestione delle risorse e nella risoluzione di eventuali criticità, nonché la capacità di coordinare la comunicazione interna ed esterna e di pianificare in modo efficace gli obiettivi, incluse le fasi di pianificazione e le scadenze. Inoltre, spetta al Responsabile l'approvazione del rilascio di prodotti parziali o finali, che siano software o documenti.
  
  == 2.2 Amministratore
  L'*Amministratore* ricopre un ruolo di _"alto livello"_ e occupa il minor numero di ore assegnate poichè la sua presenza non è necessaria in modo costante durante lo sviluppo del progetto.
  
  In particolare, l’Amministratore è incaricato di _garantire l'efficacia delle tecnologie e degli strumenti utilizzati_ nel corso dello sviluppo. Inoltre, supporta la collaborazione del team dal punto di vista informatico, occupandosi di operazioni quali l'esecuzione di test automatici e la risoluzione di eventuali malfunzionamenti. Assicura, quindi, l'efficienza di procedure, strumenti e tecnologie a supporto del _Way of Working_.
  
  Il suo intervento contribuisce alla stabilità complessiva del progetto, riducendo così i tempi di inattività e migliorando l'efficienza, permettendo al team di concentrarsi sulle task principali senza interruzioni.
  
  == 2.3 Analista
  L'*Analista* svolge un ruolo determinante per il successo del progetto, in quanto consente ai progettisti e ai programmatori di _operare su basi solide e correttamente definite_.

  Tale figura è richiesta prevalentemente nelle fasi iniziali dello sviluppo, risultando meno coinvolta rispetto alla media complessiva delle ore dedicate dagli altri ruoli. Il monte ore dell’Analista sarà quindi concentrato nella fase di analisi e definizione dei requisiti, attività fondamentale per garantire chiarezza e completezza delle specifiche progettuali.

  == 2.4 Progettista
  Il *Progettista* richiede un impegno orario medio-alto, in quanto riveste un ruolo fondamentale nel _garantire una solida base al progetto_. È responsabile della trasformazione dei requisiti individuati in fase di analisi in un design architetturale strutturato e coerente, definendo l’organizzazione e la struttura complessiva del sistema.

  La rilevanza di questa figura è cruciale, poiché un progetto carente dal punto di vista progettuale potrebbe generare significative difficoltà nelle successive fasi di sviluppo da parte dei programmatori.

  Il Progettista deve pertanto assicurare che la soluzione proposta risulti ben strutturata, affidabile, efficiente, sicura e pienamente rispondente ai requisiti specifici degli utenti finali.

  == 2.5 Programmatore
  Il *Programmatore* è la figura a cui vengono assegnate il maggior numero di ore, in quanto ricopre un ruolo centrale nello sviluppo del progetto.

  È _responsabile dello sviluppo del software_, tenendo conto delle specifiche definite e dei requisiti del progetto e lavorando in stretta collaborazione con il Progettista. Inoltre, si occupa dell'ottimizzazione del codice al fine di migliorare le prestazioni del software.

  Questo ruolo comporta l'implementazione di funzionalità avanzate, richiedendo una solida conoscenza dei linguaggi di programmazione e delle tecnologie adottate, oltre alla capacità di affrontare e risolvere le problematiche tecniche che emergono durante lo sviluppo.

  == 2.6 Verificatore
  Il *Verificatore* ha il compito di _garantire l'affidabilità e la robustezza dei test eseguiti_, occupandosi di effettuare revisioni e assicurare, nonchè migliorare, la qualità del software e della documentazione, in conformità con gli standard concrdati tra il committente e i membri del team.

  Tale attività richiede una conoscenza approfondita del metodo di lavoro adottato, al fine di garantire che ogni task, sia essa di maggiore o minore complessità, venga svolta con la massima precisione e secondo le best practice.

  Per questi motivi, il Verificatore riveste un ruolo continuo durante tutta la fase di sviluppo del progetto, assicurandosi che le aspettative del cliente siano soddisfatte e che il progetto raggiunga il suo obiettivo con successo.

  #pagebreak()
  = 3 Preventivo Costi
  Sulla base dei ruoli descritti nella sezione precedente, il costo complessivo del progetto è pari a *14.430€*. Tale importo è ripartito secondo quanto riportato nella tabella seguente.
  #v(1em)

  #align(center)[
    #figure(
      table(
        columns: (auto,auto,auto,auto),
        inset: 10pt,
        align: center,
        table.header(
          [*Ruolo*], [*Costo Orario*], [*Ore*], [*Costo Totale*]
        ),
        
        [Responsabile],[30€/h],[67],[2.010€],
        [Analista],[25€/h],[76],[1.900€],
        [Progettista],[25€/h],[156],[3.900€],
        [Amministratore],[20€/h],[61],[1.220€],
        [Programmatore],[15€/h],[218],[3.270€],
        [Verificatore],[15€/h],[142],[2.130€],
        [*Totale*],[-],[*720*],[*14.430€*]
      ),
      caption: [Ripartizione dei costi per ore e ruolo],
    )
  ]

  #v(1em)
  Si riporta un grafico a torta raffigurante la ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili:

  #align(center)[
    #figure(
      image("assets/chart.png", width: 13cm),
      caption: [Ripartizione percentuale delle ore per ruolo sul totale delle ore disponibili]
    )
  ]
  

  #pagebreak()
  = 4 Suddivisione Ore
  Ogni membro del team _Code Alchemists_ si impegna a dedicare al progetto un totale di *90 ore* produttive. \
  Tale monte ore individuale è ripartito nei ruoli *Responsabile*, *Amministratore*, *Analista*, *Progettista*, *Programmatore*, *Verificatore*, come riportato nella tabella seguente. \
  A ciascun componente del gruppo è stato associato il corrispondente numero di ore da svolgere per ogni ruolo assegnato.

  #v(4em)
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
          [*Responsabile*],
          [*Amministratore*],
          [*Analista*],
          [*Progettista*],
          [*Programmatore*],
          [*Verificatore*],
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

  #pagebreak()
  = 5 Consegna
  Il gruppo _Code Alchemists_ si impegna a consegnare il capitolato *C6 - Sistema di gestione di un magazzino distribuito*, proposto dall'azienda *M31*, entro il *29/08/2025*.
  
  == 5.1 Periodi di rallentamento
  I possibili periodi di rallentamento che _Code Alchemists_ ha individuato sono:
  #align(center)[
    #figure(
      table(
        columns: (auto,auto,auto),
        inset: 10pt,
        align: center,
        table.header(
          [*Periodo*], [*Da*], [*A*]
        ),
        
        [Festività Pasquali],
        [17/04/2025],
        [22/04/2025],
    
        [Festa della Liberazione],
        [25/04/2025],
        [27/04/2025],
    
        [Festa del Lavoro e Giustinianea],
        [01/05/2025],
        [04/05/2025],
    
        [Sessione d'Esame],
        [16/06/2025],
        [19/07/2025],
    
        [Chiusura Estiva Università],
        [04/08/2025],
        [17/08/2025]
      ),
    caption: [Possibili periodi di rallentamento individuati],
  )
  ]

  == 5.2 Rischi
  In questa sezione vengono illustrate le correlazioni tra il conteggio delle ore previste e i potenziali rischi a cui il team potrebbe andare incontro, unitamente alle relative azioni di mitigazione che il gruppo si impegna ad adottare al fine di ridurre gli impatti negativi sullo sviluppo del progetto.

  === 5.2.1 Impegni Personali
  Il conteggio orario stabilito dal Team tiene conto anche di un margine di sicurezza per far fronte a eventuali imprevisti personali che potrebbero verificarsi durante lo sviluppo del progetto.
  
  Qualora un membro del team non riuscisse a portare a termine una o più task a lui assegnate entro i tempi previsti, a causa di impegni o imprevisti personali, il gruppo gestirà tale rischio suddividendo in modo equo le attività rimaste in sospeso tra i restanti componenti del team.
  
  Il membro temporaneamente assente, una volta tornato disponibile, sarà tenuto a recuperare le ore dedicate dal Team alla copertura della sua assenza totale o parziale.

  === 5.2.2 Possibile difficoltà nella realizzazione di qualche attività
  Durante lo sviluppo del progetto, il Team potrebbe trovarsi ad affrontare difficoltà nella realizzazione di alcune attività. I componenti coinvolti sono tenuti a segnalare tempestivamente tali problematiche al resto del Team e, qualora vi siano colleghi disponibili, questi ultimi saranno incaricati di fornire il necessario supporto.
  
  In ogni caso, indipendentemente dall’esito dell’attività (portata a termine o meno), la difficoltà riscontrata dovrà essere esposta durante la successiva riunione interna utile, al fine di valutarne la suddivisione in sotto-task più semplici. Tale suddivisione è finalizzata all’ottimizzazione dell’efficienza operativa e alla riduzione complessiva dei tempi di completamento.

  
  === 5.2.3 Sottostima del tempo necessario per soddisfare i requisiti
  Nel caso venga rilevata una sottostima del tempo necessario per il completamento di una task o di un requisito, tale discrepanza dovrà essere tempestivamente comunicata al Team attraverso i canali di comunicazione appropriati.

  Qualora vi fossero membri del Team disponibili, è richiesto che offrano supporto a chi si trova in difficoltà, al fine di ridurre il ritardo accumulato e favorire il completamento della task o del requisito interessato.
  
  In presenza di una sottostima, il Team si impegna a procedere con un momento di riallineamento prima di avviare nuove attività, al fine di garantire una corretta pianificazione e gestione delle risorse.
]