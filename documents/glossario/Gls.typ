#import "../../src/basic.typ": *

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
#let versione = "0.2.1"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

  [0.2.1],
  [15/04/2025],
  [N. Bolzon],
  [A. Shu],
  [Riordino dei vocaboli in ordine alfabetico],

  [0.2.0],
  [08/04/2025],
  [N. Bolzon],
  [S. Marana],
  [Aggiunta definizioni al glossario],

  [0.1.0],
  [28/03/2025],
  [N. Bolzon],
  [S. Marana],
  [Aggiunta definizioni al glossario],
  
  [0.0.1],
  [26/03/2025],
  [N. Moretto],
  [N. Bolzon],
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
- *Alert*:\
  Segnalazioni automatiche generate dal sistema in risposta a eventi rilevanti, come esaurimento scorte, errori di trasferimento, o necessità di approvazione.

- *Amministratore*: \
  Ricopre un ruolo di alto livello e dedica il minor numero di ore, in quanto non è costantemente coinvolto nello sviluppo. È responsabile di garantire l’efficacia delle tecnologie e degli strumenti utilizzati, supportando la collaborazione del team con attività come test automatici e risoluzione di malfunzionamenti. Assicura l’efficienza di procedure, strumenti e tecnologie a supporto del Way of Working, contribuendo alla stabilità del progetto e riducendo i tempi di inattività, migliorando così l’efficienza complessiva.

- *Analisi dei requisiti*: \
  Processo di esame e interpretazione del capitolato per individuare i bisogni del committente, formalizzare i requisiti funzionali e non funzionali del sistema, e proporre soluzioni che li soddisfino. Il risultato è un documento strutturato che guida lo sviluppo del software, assicurando coerenza tra le aspettative del cliente e il prodotto finale.

- *Analista*:\
  Svolge un ruolo chiave nelle fasi iniziali, fornendo basi solide a progettisti e programmatori. Il suo impegno orario, inferiore alla media degli altri ruoli, si concentra sull'analisi e la definizione dei requisiti, garantendo chiarezza e completezza delle specifiche progettuali.

- *Approvvigionamento*:\
  Attività di acquisizione di prodotti o materiali necessari per garantire il funzionamento del magazzino. Include ordini da fornitori esterni o trasferimenti da altri magazzini.

- *Autenticazione*:\
  Meccanismo per verificare l’identità di un utente prima di concedere accesso al sistema.

- *Autenticazione a due fattori (2FA)*:\
  Sistema di autenticazione che richiede due forme di verifica (es. password + codice via SMS) per garantire una maggiore sicurezza.

#pagebreak()
= B
- *Backup*:\
  Copia di sicurezza dei dati, utile per ripristinare le informazioni in caso di guasti o perdite.

#pagebreak()
= C
- *Capitolato*: \
  Documento formale che descrive in modo dettagliato le esigenze, i requisiti e i vincoli di un progetto software, forniti dal committente. Costituisce la base per l’analisi dei requisiti e guida lo sviluppo del sistema. Viene utilizzato anche come base per la negoziazione e per la gestione delle modifiche durante l’esecuzione del progetto.

- *Chief Technology Officer (CTO)*:\
  Dirigente di primo livello responsabile delle scelte tecnologiche di un'azienda. Valuta, seleziona e propone le soluzioni tecniche più adatte per supportare lo sviluppo di prodotti o servizi, garantendo l’allineamento tra innovazione tecnologica e obiettivi strategici dell’organizzazione. Fa parte del consiglio direttivo e collabora con le altre funzioni aziendali per guidare l’evoluzione tecnologica.

- *Cliente*: \
  Persona, azienda o ente che commissiona, finanzia e utilizzerà direttamente o indirettamente il prodotto software. Il cliente può coincidere o meno con il committente, e ha interesse nel risultato finale del progetto. È coinvolto nei processi decisionali, nella validazione del prodotto e nella sua eventuale accettazione e manutenzione post-rilascio.

- *Committente*: \
  Persona o organizzazione che incarica formalmente un team di sviluppo di realizzare un sistema software. È responsabile della definizione iniziale degli obiettivi, dei requisiti e dei vincoli del progetto, e può partecipare attivamente alle fasi di analisi, verifica e validazione. Il committente rappresenta il punto di riferimento principale per comprendere le esigenze da soddisfare.

- *Connettività*: \
  Capacità dei sistemi dei magazzini di restare collegati alla rete o al sistema centrale.

- *Container*: \
  Ambiente isolato e leggero che include tutto il necessario per eseguire un'applicazione (codice, librerie, dipendenze), utilizzando il kernel del sistema operativo sottostante, garantendo portabilità e coerenza tra diversi sistemi.

#pagebreak()

= D
- *Dashboard*:\
  Interfaccia utente centralizzata che visualizza in tempo reale informazioni sul sistema.
#pagebreak()

= I
- *Integrità*:\
  Correttezza e coerenza dei dati nel sistema.

- *Inventario*:\
  Elenco dettagliato e aggiornato delle scorte disponibili in un magazzino.
#pagebreak()

= M
- *Mentore*: \
  Figura esperta che supporta uno sviluppatore o un team junior nell’ambito dell’ingegneria del software, offrendo guida tecnica, consigli pratici e orientamento nel processo di crescita professionale.

- *Microservizi*:\
  Architettura software composta da piccoli servizi indipendenti che comunicano tra loro.
#pagebreak()

= N
- *Nodo*:\
  Unità del sistema distribuito che può operare in modo autonomo e sincronizzarsi con il sistema centrale.
#pagebreak()

= O
- *Ordini*:\
  Richieste formali per trasferimenti o rifornimenti di prodotti.
#pagebreak()
= P
- *Prodotto*: \
  Oggetto fisico stoccato in un magazzino, trasferibile, vendibile o utilizzabile.

- *Progettista*: \
  Con un impegno orario medio-alto, garantisce una solida base al progetto. Trasforma i requisiti in un design architetturale strutturato, definendo l’organizzazione del sistema. Un progetto mal progettato può compromettere lo sviluppo, rendendo cruciale il suo ruolo. Assicura soluzioni affidabili, efficienti, sicure e conformi ai requisiti degli utenti finali.

- *Programmatore*: \
  Figura centrale nello sviluppo, dedica il maggior numero di ore al progetto. È responsabile dell'implementazione del software, rispettando specifiche e requisiti, in collaborazione con il Progettista. Cura l’ottimizzazione del codice per migliorarne le prestazioni e sviluppa funzionalità avanzate, richiedendo competenze nei linguaggi di programmazione, nelle tecnologie adottate e nella risoluzione di problemi tecnici.

- *Proof of Concept (PoC)*: \
  Dimostrazione pratica, limitata e sperimentale, utilizzata per verificare la fattibilità tecnica o funzionale di un’idea, tecnologia o soluzione software. In ingegneria del software, una PoC serve a validare concetti chiave prima di investire risorse nello sviluppo completo, mostrando che un certo approccio può funzionare in un contesto reale. Non è un prodotto finito, ma uno strumento per ridurre il rischio progettuale e supportare decisioni tecniche o strategiche.

#pagebreak()
= R
- *Repository*: \
  Archivio centralizzato e strutturato che consente la conservazione, la gestione e la condivisione di risorse digitali, quali codice sorgente, documentazione, librerie, configurazioni e dati. Garantisce la collaborazione tra più sviluppatori, l’integrità e la tracciabilità del progetto nel tempo.

- *Requirements and Technology Baseline (RTB)*: \
  Nel contesto dello sviluppo software, la baseline di progetto è un riferimento stabile che definisce i requisiti del sistema e le tecnologie impiegate per la loro realizzazione. Comprende la specifica dei requisiti funzionali e non funzionali, l’elenco delle tecnologie, delle librerie e delle piattaforme adottate, nonché le strategie di sviluppo e testing. Questa baseline è essenziale per il controllo dell’avanzamento del progetto e per la verifica della conformità del prodotto rispetto ai requisiti concordati con il cliente.

- *Responsabile*: \
  Garantisce il completamento efficiente del progetto, rispettando obiettivi, tempistiche e aspettative del committente, coordinando ruoli e risorse. Data la rilevanza economica della posizione, il team ne ottimizza l'impiego per massimizzare l'efficienza e contenere i costi. Il ruolo richiede competenze nella gestione, risoluzione di criticità, coordinamento della comunicazione e pianificazione. Spetta inoltre al Responsabile approvare il rilascio di prodotti parziali o finali, software o documenti.

- *Riassortimento*:\
  Processo di rifornimento delle scorte per mantenere livelli adeguati di disponibilità. Può essere attivato manualmente o in modo automatico.

#pagebreak()
= S
- *Scalabilità*:\
  Capacità del sistema di aumentare prestazioni e risorse in base alla domanda.

- *Scorte*:\
  Quantità di prodotti o materiali presenti in magazzino in un dato momento.

- *Servizi*:\
  Componenti funzionali del sistema, responsabili ciascuno di una specifica attività.

#pagebreak()

= T

- *Trasferimento*:\
  Operazione che comporta lo spostamento fisico di prodotti tra magazzini.
#pagebreak()
= V
- *Verificatore*: \
  Assicura l’affidabilità dei test e migliora la qualità del software e della documentazione, rispettando gli standard concordati. Conoscendo il metodo di lavoro, garantisce l’esecuzione precisa di ogni task secondo le best practice. Il suo ruolo è continuo, assicurando il rispetto delle aspettative del cliente e il successo del progetto.

#pagebreak()
= W
- *Way of Working*: \
  Approccio operativo e insieme di pratiche adottate da un team o organizzazione per gestire e completare un progetto.
