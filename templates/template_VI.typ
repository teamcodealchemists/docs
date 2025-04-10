#import "../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale interno del "
#let data = "00/00/2025"
#let titolo = titolo + data
#let status = "NON Approvato"
#let versione = "0.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
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