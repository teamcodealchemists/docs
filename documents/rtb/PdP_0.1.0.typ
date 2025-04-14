#import "../../src/basic.typ": *

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "Piano di Progetto"
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
  [08/04/2025],
  [N. Moretto],
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

#set heading(numbering: "1.1.")

= Introduzione
== Informazioni generali
== Glossario
== Fonti   //Inserire riferimenti al capitolato del progetto e a lezioni/slide del professore se necessario

= Analisi e gestione dei rischi
== Introduzione        //UN PUNTO PER OGNI RISCHIO: es. 2.2.1, ecc...
== Rischio tecnologico //tecnologie utilizzate ed eventuali errori
== Rischio individuale //altri impegni e attività individuale
== Rischio globale     //valutare altri rischi

= Pianificazione nel lungo termine
== Attività previste per la Requirements and Technology Baseline (RTB)
== Attività previste per la Product Baseline (PB)
La redazione di questo paragrafo sarà effettuato in seguito al superamento della
*Requirements and Technology Baseline#super[G] (RTB)*.

= Pianificazione nel breve termine
== Introduzione
== Requirements and Technology Baseline (RTB)
=== Sprint 1    //mantenere le seguenti distanze
Inizio: #h(1.99cm)*28-03-2025*\
Fine Prevista: #h(0.65cm)*11-04-2025*\
Fine Reale: #h(1.12cm)*11-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
Questo sprint ha come obiettivo quello di risolvere le osservazioni ricevute dopo la presentazione della candidatura. Successivamente, avverrà la redazione dei primi documenti necessari per iniziare i lavori.

In particalare, le attività previste sono:
- Miglioramento grafico del sito web;
- Miglioramento della navigabilità delle risorse del sito web;
- Indicazione dei criteri di rotazione dei ruoli;
- Prima redazione del Glossario#super[G];
- Prima redazione delle Norme di Progetto#super[G];
- Prima redazione del Piano di Progetto#super[G];
- Effettuare un incontro con _M31_;
- Prima redazione dell'Analisi dei Requisiti#super[G];

==== Rischi attesi
==== Preventivo    //aggiungere tabella di preventivo (magari un template in un file .typ)
==== Consuntivo    //tabella ore effettivamente svolte (stessa tabella di sopra)
==== Aggiornamento delle risorse rimanenti   //altra tabella
==== Rischi incontrati

=== Retrospettiva
