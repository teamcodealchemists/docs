#import "../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "00/00/2025"
#let titolo = titolo + data
#let status = "NON Approvato"
#let versione = "0.0.0"
#let destinatario = "M31"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  
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
  #lorem(20)

== 1.1 Ordine del Giorno
  + 
  + 
  + 

#pagebreak()
= 2. Dettagli della riunione

== 2.1 Primo Punto "odg"
#lorem(20)

== 2.2 Secondo Punto "odg"
#lorem(20)

#pagebreak()
= 3. Esiti della riunione
#lorem(20)

#pagebreak()
= 4. Tabella delle decisioni e azioni
    #let voci_tabella = (
    [-],
    [-],
  )
  
  #show: decision_table.with(
  voci: voci_tabella
  )
  
#pagebreak()
= 5. Approvazione esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
  
