#import "/template/import/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "00/00/2025"
#let titolo = titolo + data
#let status = "NON Approvato"
#let versione = "0.0.0"
#let destinatario = "DESTINATARIO"
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
= Titolo
  #lorem(200)