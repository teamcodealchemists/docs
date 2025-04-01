#import "/template/import/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "06/03/2025"
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
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [1.0.0],
    [07/03/2025],
    [N. Bolzon],
    [S. Speranza],
    [Approvazione Interna del documento],
    
    [0.2.0],
    [07/03/2025],
    [R. Zangla],
    [N. Bolzon],
    [Aggiornamento del documento con correzione errori],

    [0.1.0],
    [06/03/2025],
    [R. Zangla],
    [N. Moretto],
    [Prima stesura del documento],

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
  = 1. Informazioni generali    //punto dell'indice
    In data *6 marzo 2025*, dalle ore *14:30* alle ore *15:30*,  è stata svolta, in modalità virtuale sulla piattaforma _Discord_, una prima riunione del nuovo Team di lavoro.\
    La riunione si è svolta secondo il seguente ordine del giorno:

    == 1.1 Ordine del Giorno
    + Presentazione dei membri del team;
    + Scelta del nome del team;
    + Scelta del logo del team;
    + Scelta canali di comunicazione;
    + Analisi iniziale dei capitolati;
    + Organizzazione prossimo incontro;
    
  #pagebreak()
  = 2. Verbale
  Il verbale iniziale viene redatto da *#p.ramona* e come revisore *#p.nicholas*.

  == 2.1 Presentazione dei membri del team
    A turno, ciascuno di noi ha presentato il proprio profilo, illustrando le esperienze pregresse nel settore informatico e fornendo un elenco delle tecnologie acquisite sia durante gli anni di studio presso la scuola superiore sia nel corso del percorso universitario.

  == 2.2 Scelta del nome del team
    Abbiamo discusso sulla scelta del nome del gruppo e, dopo aver proposto diverse alternative, abbiamo selezionato *“Code Alchemists”* attraverso una votazione.

  == 2.3 Scelta del logo del team
  Analogamente alla scelta del nome, *#p.sebastiano* si è proposto per la realizzazione del logo.
  Il logo ufficiale scelto è quello che viene riportato qua di seguito:
     #align(center)[
       #figure(
          image("/assets/Logo-nome-motto.png", width: 8cm), caption: [Logo del Team Code Alchemists],)
    ]\

  Il Team ha individuato, oltre al logo, un motto: _"Turning ideas into code, like magic"_

  == 2.4 Scelta canali di comunicazione
  Per la comunicazione verso l’esterno è stato proposo e successivamente creato l'indirizzo email:
  #align(center)[#link("mailto:team.codealchemists@gmail.com")[*team.codealchemists\@gmail.com*]]
  Come canali di comunicazione tra membri del team, invece, si è scelto di utilizzare *Telegram* come piattaforma di messagistica istantanea e *Discord* come canale di comunicazione per riunioni online.

  == 2.5 Analisi iniziale dei capitolati
  Dopo aver esaminato autonomamente i capitolati disponibili, il team ha valutato le opzioni in base agli interessi comuni e alle competenze attuali, definendo il seguente ordine di preferenza per lo sviluppo:\
  
  + C6 = *Sistema e Gestione di un Magazzino Distribuito* avente come proponente *_M31_*
  + C4 = *NearYou- Smart custom advertising platform* avente come proponente *_SyncLab_*
  + C3 = *Automatizzare le routine digitali tramite l'intelligenza generativa* avente come proponente *_VarGroup_*
  
  Non è emerso un particolare interesse per l'approfondimento del capitolato C1, proposto da *_Zucchetti_*.

  Questo ordine guiderà anche i contatti con le aziende per ottenere ulteriori informazioni prima della scelta definitiva.
  
  == 2.6 Organizzazione prossimo incontro
  Le decisioni relative all'organizzazione del prossimo incontro sono riportate nella sezione al *punto 3* del presente documento.

  #pagebreak()
  = 3. Esiti della Riunione
  Considerate le esigenze di coordinamento iniziale, il team, all'unanimità tra i presenti, ha scelto di incontrarsi il prossimo *lunedì 10 marzo, alle ore 9:00* presso il *LabTA di Torre Archimede*.

  Durante il prossimo incontro verranno posti, in *Ordine del Giorno* anche i seguenti punti:
  1. Discussione e definizione delle attività da svolgere\
    1.1 Stesura iniziale del Way of Working\
    1.2 Contatti con le aziende proponenti dei capitolati\
    1.3 Prima stesura candidature
  2. Inizializzazione delle piattaforme scelte come *Way of Working*.
