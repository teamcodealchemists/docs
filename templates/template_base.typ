#import "import/basic.typ": *

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "title"

#let contenuto = (
    // Voci in prima pagina
)

#show: conf.with(
  title: [#titolo],
  contenuto: (contenuto)
)