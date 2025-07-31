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

#let titolo = "Specifica Tecnica"
#let status = "In redazione"
#let destinatario = "M31"

#let versione = "0.0.1"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)


#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

  [0.0.1],
  [30/07/2025],
  [N. Moretto],
  [-],
  [Creazione template e struttura del documento.]
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

/* INDICE DELLE IMMAGINI*/
#outline(
title: [Lista delle Immagini],
target: figure.where(kind: image),
)
#pagebreak()

/* INDICE DELLE TABELLE*/
#outline(
  title: [Lista delle Tabelle],
  target: figure.where(kind: table),
)
#pagebreak()


= Introduzione
== Scopo del documento
Questo documento ha lo scopo di descrivere dettagliatamente l'*architettura* del prodotto software, fornendo una panoramica delle tecnologie utilizzate, delle scelte progettuali effettuate e dell'organizzazione dei componenti principali.\ È un documento tecnico che si rivolge principalmente agli sviluppatori e ai membri del team di progetto, ma può essere utile anche per altri stakeholder interessati a comprendere le basi tecniche del sistema: riflette infatti il processo di progettazione e realizzazione del prodotto, garantendo coerenza con il PoC#super[G] e introducendo miglioramenti necessari per la sua evoluzione a un prodotto software completo.\

In particolare, il documento si propone di:
- Fornire una descrizione dettagliata dell'architettura del sistema, inclusi i componenti principali, le loro interazioni e le tecnologie utilizzate.
- Descrivere le scelte progettuali effettuate e le motivazioni alla base di tali scelte.
- Presentare i design patterns utilizzati e le loro applicazioni nel contesto del progetto.
- Presentare lo stato dei requisiti funzionali implementati, evidenziando quelli completati e quelli ancora in fase di sviluppo.
- Fornire ulteriori dettagli tecnici e progettuali necessari per la comprensione e la manutenzione del sistema.

== Glossario
Per una corretta comprensione del documento, viene fornito un glossario dei termini utilizzati. Ogni termine è indicato da una "#super[G]" in apice alla parola#super[G].
Per trovare il significato del termine, è possibile consultare il glossario al seguente indirizzo: 
#underline[#link("https://teamcodealchemists.github.io/glossario.html")]\

== Riferimenti
=== Riferimenti normativi
#v(1em)
- *Capitolato#super[G] d'appalto C6 - Gestione di un magazzino distribuito - _M31_*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")

- *Norme di Progetto#super[G] - versione 2.0.0*
  #link("") //TODO: inserire link al documento Norme di Progetto
  
=== Riferimenti informativi


= Tecnologie
== Linguaggi di programmazione
== Framework
== Tecnologie per la gestione dei dati
//DB
== Tecnologie per la comunicazione e per la messaggistica
//NATS
== Tecnologie per la virtualizzazione
//Docker

== Tecnologie per il monitoraggio dei microservizi 
//tipo grafana, prometheus, ecc.

== Tecnologie per l'analisi statica
== Tecnologie per l'analisi dinamica
//dire cosa abbiamo usato per fare i test

//== Librerie

= Architettura
== Architettura generale
== Architettura logica
== Architettura di deployment
=== Sistema a microservizi

== Design patterns
// Enuncere i design patterns usati, la descrizione e il motivo della scelta
=== (nome pattern)
==== Descrizione del (nome pattern)
==== Motivazioni dell'utilizzo del (nome pattern)

== Microservizi sviluppati
// Spiegare i vari microservizi utilizzati, e tutti gli oggetti di ogni microservizio.

//Prima presentare gli oggetti comuni tra i microservizi, e poi gli oggetti comuni di ogni microservizio (sarà una lista molto lunga)

//ogni oggetto avrà la sua figura (diagramma di classe)


= Stato dei requisiti funzionali
== Stato per requisito
