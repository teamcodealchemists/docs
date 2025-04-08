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
= Titolo
  #lorem(200)