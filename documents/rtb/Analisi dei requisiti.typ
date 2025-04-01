#import "/template/import/basic.typ": *

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "Norme di progetto"
#let status = "In redazione"
#let destinatario = "M31"
#let versione = "0.1.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [],
  [],
  [],
  [],
  [],
  
  [0.0.1],
  [28/03/2025],
  [S. Speranza],
  [-],
  [Creazione template e struttura del documento]
)

#let contenuto = (
    // Voci in prima pagina
    voce("Stato", status),
    voce("Versione", versione),
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

/* SEZIONE 1 - Introduzione */
= 1. Introduzione
== 1.1 Scopo del documento
Il presente documento viene redatto per _l'analisi dei requisiti_#super[G]

