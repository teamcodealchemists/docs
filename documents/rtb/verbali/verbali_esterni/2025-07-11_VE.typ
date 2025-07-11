#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "11/07/2025"
#let titolo = titolo + data
#let status = "In Revisione"
#let versione = "0.1.0"
#let destinatario = "M31"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.alex,
  p.ramona,
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [2.0.0], [?], [_M31_], [-], [Approvazione del documento da parte di _M31_],
  [1.0.0], [?], [-], [?], [Approvazione interna del documento],
  [0.1.0], [11/07/2025], [M.Pretto],[?], [Redazione iniziale del documento]

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

#show: firma.with(
  destinatario: destinatario
)


// INSERIRE QUI CONTENUTO
= 1. Informazioni generali
  In data *11 luglio 2025*, dalle ore *09:30* alle ore *10:30*, si è svolta, in modalità mista con 5 membri del team in sede e 1 membro collegati tramite la piattaforma _Microsoft Teams_, una riunione con l'azienda _M31_ per la presentazione del PoC#super[G] _(Proof of Concept#super[G])_ effettuata dal  Team _Code Alchemists_.
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Moones Mobaraki
  - Cristian Pirlog
  - Luca Cossaro

== 1.1 Ordine del Giorno
 + Presentazione del PoC#super[G] _(Proof of Concept#super[G])_ e discussione;
 + Feedback riguardante il PoC#super[G] _(Proof of Concept#super[G])_
 

#pagebreak()
= 2. Dettagli della riunione
La riunione si è tenuta in modalità mista. Cinque membri del team hanno partecipato direttamente dalla sala riunioni dell'azienda. Un altro membro, a causa di una problematica medica, si è invece collegato tramite la piattaforma _Microsoft Teams_. Molto importante e apprezzato è stato il fatto di potervi partecipare in presenza, in modo tale da poter avere un confronto diretto e più immediato con i responsabili del progetto dell'azienda _M31_.

== 2.1 Presentazione del PoC#super[G] _(Proof of Concept#super[G])_ e discussione
La riunione inizia esponendo ai responabili dell'azienda _M31_ le problematiche riscontrate durante lo sviluppo del PoC. E' stato infatti spiegato loro come lo studio delle nuove tecnologie, il tempo speso per l'Analisi dei Requisiti e la sessione d'esami siano stati fattori che hanno rallentato lo sviluppo negli ultimi due sprint.\
Si è successivamente iniziato a parlare del loro effettivamente svolto che può essere sintetetizzato con la creazione dei microservizi e il conseguente collegamento fra di essi.\
Dopo questa breve introduzione, il Team _Code Alchemists_, per voce del responsabile dei programmatori#super[G] *#p.nicholas*, ha presentato il _Proof of Concept#super[G] (PoC#super[G])_, mostrandono l'effettivo funzionamento mediante l'esecuzione. \
Durante tale esposizione è stato mostrato ai responsabili aziendali prima l'esecuzione del microservizio _Inventario_ e dopodiche quella del microservizio _Ordini_. Sono state illustrate le diverse fasi del programma soffermandosi in particolare su alcune (ad esempio la modifica di un prodotto, piuttosto che l'aggiunta di un nuovo ordine). Si è inoltre spesso mostrato il codice relativo a ciò che veniva realmente eseguito. Contestualmente alcune domande e dubbi sono stati posti dall'azienda, i quali hanno subito trovato risposta dai membri del team.
Oltre a ciò, molti sono stati i consigli ricevuti.\



== 2.2 Feedback riguardante il PoC#super[G] _(Proof of Concept#super[G])_
Al termine della presentazione del _Proof of Concept#super[G] (PoC#super[G])_ i responsabili aziendali hanno espresso un feedback positivo riguarda il lavoro svolto. E' stato infatti ritenuto un lavoro consistente e soddisfacente ed in linea con le aspettative. Particolarmente apprezzato è stato il fatto di aver seguito i consigli ricevuti dall'azienda.


#pagebreak()
= 3. Esiti della riunione
Il _Team Code Alchemists_ proseguirà, nel prossimo periodo, con l'ultimazione dei documenti necessari alla candidatura _RTB_ e preseterà in seguito la candidatura stessa. \
Dopodichè procedera con lo sviluppo della fase _PB_
L'azienda, come consuetudine, si è detta pronta a supportarci anche nella seconda fase (quindi quella del _PB_) di questo progetto, tramite email e incontri in sede.

Il _Team Code Alchemists_ desidera infine ringraziare l'azienda _M31_ per la consueta professionalità e disponibilità dimostrate nel supportarci durante lo sviluppo del progetto.

#pagebreak()
= 4. Tabella delle decisioni e azioni

    #let voci_tabella = (
    [A26], [Terminare la documentazione],
    [A27], [Presentare candidatura _RTB_],
    [DOC29], [Stesura del Verbale Esterno del 11-07-2025],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
