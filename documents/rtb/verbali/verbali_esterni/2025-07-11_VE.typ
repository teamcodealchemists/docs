#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "11/07/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "2.0.0"
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
  /*
  [2.0.0], [23/05/2025], [_M31_], [-], [Approvazione del documento da parte di _M31_],
  [1.0.0], [21/05/2025], [-], [N. Moretto], [Approvazione interna del documento],
  */
  [0.1.0], [11/07/2025], [-],[N. Bolzon], [Redazione iniziale del documento]

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
  In data *11 luglio 2025*, dalle ore *09:30* alle ore *10:30*, si è svolta, in modalità mista con 5 membri del team in sede e 1 membro collegato tramite la piattaforma _Microsoft Teams_, una riunione con l'azienda _M31_ per presentare il PoC#super[G] _(Proof of Concept#super[G])_.
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Moones Mobaraki
  - Cristian Pirlog
  - Luca Cossaro _(in remoto)_

== 1.1 Ordine del Giorno
 + Presentazione del Proof of Concept#super[G] (PoC#super[G]).
 + Discussione del Proof of Concept#super[G] (PoC#super[G]).
 + Approvazione del PoC#super[G] da parte dell'azienda.

#pagebreak()
= 2. Dettagli della riunione
La riunione si è tenuta in modalità mista. Cinque membri del team hanno partecipato dalla sala riunioni dell'azienda, un altro, invece, per motivi medici, si è collegato tramite la piattaforma _Microsoft Teams_. L'incontro in presenza ha garantito un confronto diretto e più immediato con i responsabili del progetto dell'azienda _M31_.

== 2.1 Presentazione del Proof of Concept

#pagebreak()
= 3. Esiti della riunione
  L'incontro si è concluso con l'approvazione del PoC#super[G] da parte dell'azienda _M31_. I rappresentanti di _M31_ hanno espresso apprezzamento per il lavoro svolto dal team e hanno confermato che il PoC#super[G] soddisfa le aspettative iniziali.
  Il team ha ricevuto feedback positivi sulla qualità del codice e sull'implementazione delle funzionalità richieste. Inoltre, sono stati discussi alcuni miglioramenti futuri che potrebbero essere implementati nella versione finale del progetto.
  Si è concordato di procedere con la fase successiva dello sviluppo, tenendo conto dei suggerimenti ricevuti durante la riunione.

  Il team ringrazia i rappresentanti di _M31_ per la loro continua disponibilità e per i consigli fin'ora ricevuti.

#pagebreak()
= 4. Tabella delle decisioni e azioni

    #let voci_tabella = (
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
