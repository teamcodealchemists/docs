#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "28/03/2025"
#let titolo = titolo + data
#let status = "Redazione"
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
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  
    [1.0.0],
    [31/03/2025],
    [-],
    [N. Bolzon],
    [Approvazione del documento],

    [0.2.0],
    [18/03/2025],
    [N. Bolzon],
    [N. Moretto],
    [Aggiunta informazioni circa la riunione con _M31_],
    
    [0.1.0],
    [18/03/2025],
    [N. Bolzon],
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
    In data *28 marzo 2025*, dalle ore *9:10* alle ore *11:00*, è stata svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchmists_.\
    La riunione si è svolta secondo il seguente ordine del giorno:

    == 1.1 Ordine del Giorno
    + Migliorie alla parte pubblica del repository;
    + Indicazioni e cambiamenti circa la redazione dei verbali;
    + Decisioni in merito alla rotazione dei ruoli;
    + Redazione di ulteriori documenti _(Norme di Progetto, Glossario, ...)_;
    + Contattare _M31_ per fissare un incontro;
    + Assegnazione ruoli fino al giorno 11/04/2025;
    
  #pagebreak()
  = 2. Verbale
  Il verbale iniziale viene redatto da *Nicolò Bolzon* e come revisore *Nicholas Moretto*.

  == 2.1 Migliorie alla parte pubblica del repository
  In base al responso da parte del prof. Vardanega, è stato deciso di migliorare il sito del Team in modo da metterne in evidenza la documentazione.\
  Alcune sezioni verranno riorganizzate per *centralizzarne i contenuti*, e il sito subirà un restyling per *renderlo più moderno, accessibile e in linea con gli standard attuali*, con un *layout più ampio e chiaro*.
  
  == 2.2 Indicazioni e cambiamenti circa la redazione dei verbali

  === 2.2.1 Metodo di stesura
  La stesura di un verbale deve seguire il seguente procedimento:
  + Viene 
  
  === 2.2.3 Sistema di versionamento
  Il sistema di versionamento dei documenti seguirà la seguente semantica:
  #align(center)[*MAJOR.MINOR.PATCH*]
  dove:
  - *MAJOR*: il valore viene incrementato *solamente* alla pubblicazione finale, dopo approvazione interna e, per i verbali esterni, dopo anche l'approvazione esterna;
  - *MINOR*: il valore viene incrementato *solamente* quando viene completato il processo di modifica e di verifica;
  - *PATCH*: il valore viene incrementato *solamente* per modifiche di entità minore, quali correzioni ortografiche, di sintassi, ...
  
  === 2.2.4 Inserimento Tabella Decisioni
  

  == 2.3 Decisioni in merito alla rotazione dei ruoli
  Il Team _Code Alchemists_ ha rilevato la problematica segnalata circa la non indicazione in merito alla rotazione dei ruoli, non fornite nei documenti di candidatura.

  Viene definito un 

  == 2.4 Richiesto incontro con _M31_
  Il Team ha deciso di contattare _M31_ tramite l posta elettronica per informare l'azienda circa l'aggiudicazione del loro capitolato e per fissare un primo incontro in cui discutere sulle tecnologie da utilizzare e su altri punti fondamentali per iniziare il progetto in modo efficace.

  _M31_ ha risposto prontamente: la riunione verrà effettuata *Venerdì 04/04/2025 dalle ore 10:00*, in presenza per 4-5 membri del Team.
  Per i membri che non saranno presenti fisicamente, la riunione sarà garantita anche in modalità online.

  Considerando il tempo che trascorrerà fino al giorno dell'incontro, il Team ha valutato l'opportunità di iniziare a redigere i primi documenti di organizzazione interna ed esterna, in modo da arrivare pronti e preparati alla discussione dei vari punti del progetto.

  == 2.5 Assegnazione dei ruoli fino al giorno 11/04/2025
  Ai componenti del Team vengono assegnati i seguenti ruoli fino alla data dell'*11 aprile 2025* (2025-04-11):

  *Bolzon Nicolò *→ Verificatore#super[G]\
  *Dalla Pozza Mattia *→ Analista#super[G]\
  *Marana Sebastiano *→ Responsabile#super[G]\
  *Moretto Nicholas *→ Analista#super[G]\
  *Pretto Matteo *→ Verificatore#super[G]\
  *Shu Alex *→ Programmatore#super[G]\
  *Speranza Stefano *→ Analista#super[G]\
  *Zangla Ramaona *→ Analista#super[G]\ 

  #pagebreak()
  = 3. Esiti della Riunione
  Il

  = 4. Tabella delle decisioni e delle azioni

    #let voci_tabella = (
    [prova],
    [prova],

    [prova2],
    [prova2],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
