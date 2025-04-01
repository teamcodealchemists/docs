#import "/template/import/basic.typ": *

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "Glossario"
#let status = "In redazione"
#let destinatario = "M31"
#let versione = "0.1.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

  [0.1.0],
  [28/03/2025],
  [N. Bolzon],
  [-],
  [Aggiunta definizioni al glossario],
  
  [0.0.1],
  [26/03/2025],
  [N. Moretto],
  [-],
  [Creazione template e struttura del documento]
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

= Introduzione
Il presente glossario raccoglie e definisce i termini ambigui o specialistici pertinenti al progetto, con l'obiettivo di garantire una comprensione univoca e condivisa tra tutte le parti coinvolte. Attraverso definizioni chiare e precise, esso favorisce una comunicazione efficace all'interno del team e con il committente, assicurando coerenza terminologica nella documentazione.\
La nomenclatura adottata per indicare che un termine è presente nel glossario è la seguente:

#align(center)[*parola#super[G]*]

#pagebreak()
= A
- *Amministratore*: \
  Ricopre un ruolo di alto livello e dedica il minor numero di ore, in quanto non è costantemente coinvolto nello sviluppo. È responsabile di garantire l’efficacia delle tecnologie e degli strumenti utilizzati, supportando la collaborazione del team con attività come test automatici e risoluzione di malfunzionamenti. Assicura l’efficienza di procedure, strumenti e tecnologie a supporto del Way of Working, contribuendo alla stabilità del progetto e riducendo i tempi di inattività, migliorando così l’efficienza complessiva.

- *Analista*:\
  Svolge un ruolo chiave nelle fasi iniziali, fornendo basi solide a progettisti e programmatori. Il suo impegno orario, inferiore alla media degli altri ruoli, si concentra sull'analisi e la definizione dei requisiti, garantendo chiarezza e completezza delle specifiche progettuali.

#pagebreak()
= P
- *Progettista:* \
  Con un impegno orario medio-alto, garantisce una solida base al progetto. Trasforma i requisiti in un design architetturale strutturato, definendo l’organizzazione del sistema. Un progetto mal progettato può compromettere lo sviluppo, rendendo cruciale il suo ruolo. Assicura soluzioni affidabili, efficienti, sicure e conformi ai requisiti degli utenti finali.

- *Programmatore:* \
  Figura centrale nello sviluppo, dedica il maggior numero di ore al progetto. È responsabile dell'implementazione del software, rispettando specifiche e requisiti, in collaborazione con il Progettista. Cura l’ottimizzazione del codice per migliorarne le prestazioni e sviluppa funzionalità avanzate, richiedendo competenze nei linguaggi di programmazione, nelle tecnologie adottate e nella risoluzione di problemi tecnici.

#pagebreak()
= R
- *Responsabile:*\
  Garantisce il completamento efficiente del progetto, rispettando obiettivi, tempistiche e aspettative del committente, coordinando ruoli e risorse. Data la rilevanza economica della posizione, il team ne ottimizza l'impiego per massimizzare l'efficienza e contenere i costi. Il ruolo richiede competenze nella gestione, risoluzione di criticità, coordinamento della comunicazione e pianificazione. Spetta inoltre al Responsabile approvare il rilascio di prodotti parziali o finali, software o documenti.
  
#pagebreak()
= V
- *Verificatore:*\
  Assicura l’affidabilità dei test e migliora la qualità del software e della documentazione, rispettando gli standard concordati. Conoscendo il metodo di lavoro, garantisce l’esecuzione precisa di ogni task secondo le best practice. Il suo ruolo è continuo, assicurando il rispetto delle aspettative del cliente e il successo del progetto.

#pagebreak()
= W
- *Way of Working:*\
  Approccio operativo e insieme di pratiche adottate da un team o organizzazione per gestire e completare un progetto.
