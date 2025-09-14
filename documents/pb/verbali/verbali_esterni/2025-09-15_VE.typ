#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "15/09/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "2.0.0"
#let destinatario = "M31"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.mattia,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.alex,
  p.stefano,
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
  
  [2.0.0], [15/09/2025], [_M31_], [-], [Approvazione del documento da parte di _M31_],
  [1.0.0], [15/09/2025], [R. Zangla], [N. Moretto], [Approvazione interna del documento],
  [0.1.0], [15/09/2025], [],[N. Moretto], [Redazione iniziale del documento],
  [0.0.1], [15/09/2025], [N. Bolzon],[N. Moretto], [Creazione template docuemento]

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
  In data *15 sttembre 2025*, dalle ore *11:00* alle ore *12:00*, si è svolta, in modalità virtuale tramite la piattaforma _Microsoft Teams_, una riunione con l'azienda _M31_ per presentare il _MVP_.
  
  A questo incontro hanno partecipato per conto di _M31_:
  - Moones Mobaraki,
  - Cristian Pirlog,
  - Luca Cossaro.

== 1.1 Ordine del Giorno
 + Presentazione del _Minimum Viable Product_;
 + Accettazione formale del _Minimum Viable Product_;

#pagebreak()
= 2. Dettagli della riunione

== 2.1 Presentazione del _Minimum Viable Product_
Durante la riunione, il _Team Code Alchemist_ ha fornito ad _M31_ alcuni chiarimenti riguardo allo sviluppo delle componenti del Sistema. Successivamente, ha proceduto con l’esecuzione in tempo reale dei test di accettazione, inviati la settimana precedente nel documento Test Book.

*M31* ha potuto constatare che i test producevano i risultati attesi e ha espresso soddisfazione per quanto realizzato.

== 2.2 Accettazione formale del _Minimum Viable Product_
*M31* dichiara formalmente di essere soddisfatta del lavoro sviluppato dal _Team Code Alchemists_. \

Tale accettazione formale è attestata dalla firma, riportata di seguito, di uno dei rappresentanti dell'azienda e partecipante alla riunione:




#pagebreak()
= 3. Esiti della riunione
L’incontro si è concluso positivamente. Il _Team Code Alchemists_ desidera esprimere il proprio sincero ringraziamento a *M31* per la professionalità dimostrata, per i preziosi consigli e per il supporto costante fornito durante tutta la durata del progetto.

I suggerimenti e le indicazioni ricevute non solo ci hanno guidato nel superare le difficoltà tecniche, ma ci hanno anche permesso di acquisire nuove competenze e di affinare il nostro approccio progettuale. Quanto appreso grazie ai vostri consigli rappresenta per noi un valore aggiunto importante, che contribuirà a migliorare il nostro lavoro presente e futuro.

Siamo grati per la disponibilità e la collaborazione dimostrata da tutti i membri di _*M31*_, che ha reso possibile il raggiungimento di risultati concreti e significativi.

Cordialmente,
I membri del *_Team Code Alchemists_*,

_Nicolò Bolzon_ \
_Mattia Dalla Pozza_ \
_Sebastiano Marana_ \
_Nicholas Moretto_ \
_Matteo Pretto_ \
_Alex Shu_ \
_Stefano Speranza_ \
_Ramona Zangla_ \

#pagebreak()
= 4. Tabella delle decisioni e azioni

    #let voci_tabella = (
    [DOC27], [Stesura del Verbale Esterno del 15-09-2025.],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
