#import "../../src/basic.typ": *
#import "../../src/tables.typ": *  //importo le tabelle

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "Manuale Utente"
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
  [31/07/2025],
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

/* INDICE DELLE TABELLE*/
#outline(
  title: [Lista delle Tabelle],
  target: figure.where(kind: table),
)
#pagebreak()

/* INDICE DELLE IMMAGINI*/
#outline(
title: [Lista delle Immagini],
target: figure.where(kind: image),
)
#pagebreak()

= Introduzione
== Scopo del documento
Questo documento ha lo scopo di fornire una guida completa per l'utente riguardo l'uso del software sviluppato dal team Code Alchemists. Esso include informazioni su come installare, configurare e utilizzare il software, nonché le procedure per la risoluzione dei problemi comuni. \

// TODO: Continuare l'introduzione

== Glossario
La realizzazione di un software richiede, ancor prima dello sviluppo, una fase di analisi e progettazione. Dato che il lavoro durante questa fase è svolto da più persone e in modo asincrono, è necessario documentare tutte queste attività per tenere traccia di ciò che è stato fatto e per evitare confusione. 

Si potrà dedurre che questi documenti potrebbero contenere parole#super[G] o frasi che non sono di uso comune, scelte però per essere più specifiche ed evitare ambiguità. Per tale ragione, è stato creato un glossario#super[G] che contiene le definizioni di tali termini, al seguente #link("https://teamcodealchemists.github.io/glossario")[#underline[indirizzo]]. 

== Riferimenti
=== Riferimenti Normativi
    - *Capitolato#super[G] d'appalto* \
      *C6 - Sistema di Gestione di un Magazzino Distribuito* \
      #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")]\

    - *Norme di Progetto#super[G] versione 2.0.0*\
      #underline[#link("")] // TODO: Inserire il link corretto

=== Riferimenti Informativi
    - *Glossario#super[G]* \
      #underline[#link("https://teamcodealchemists.github.io/glossario.html")] \ 


= Funzionalità
// In questa sezione si fornirà una panoramica delle funzionalità principali del software, comprese le caratteristiche chiave e i vantaggi per l'utente.



== Tipi di Utente
=== Supervisore Globale
=== Supervisore Locale
=== Utente semplice

== Autenticazione

== Magazzino Locale
=== Inventario Locale
=== Ordini Locali

== Aggregazione su cloud
=== Inventario Aggregato
=== Ordini Aggregati

== Riassortimenti


= Test
// TODO: Breve intro sui test

// In questa sezione si forniranno i dettagli sulle tipologie di test eseguite sul software, su come eseguire i test e su come interpretare i risultati. Si includeranno anche le procedure per la segnalazione di eventuali bug o problemi riscontrati durante i test.
== Test di Accettazione
I test di accettazione sono stati eseguiti per verificare che il software soddisfi i requisiti specificati nel capitolato d'appalto. I test sono stati condotti in conformità con le procedure stabilite e hanno coinvolto scenari reali di utilizzo del software. I risultati dei test sono stati documentati e sono disponibili per la revisione.

== Test di Integrazione
I test di integrazione sono stati eseguiti per garantire che i vari componenti del software funzionino correttamente insieme. Questi test hanno verificato la corretta interazione tra i moduli del software e hanno identificato eventuali problemi di integrazione. I risultati dei test sono stati documentati e sono disponibili per la revisione.

//TODO: aggiungere i dettagli sui vari test

= Installazione
== Requisiti
=== Requisiti Hardware
Per garantire il corretto funzionamento del software, è necessario disporre di un sistema che soddisfi i seguenti requisiti hardware:

=== Requisiti Software

== Installazione del Software
Per installare il software, seguire le istruzioni riportate di seguito:

== Configurazione del Software
=== Informazioni Generali
=== Configurazione del Database
=== API Gateway
// TODO: Aggiungere o modificare eventuali sezioni in base alle necessità

== Avvio del Software
// In questa sezione si forniranno le istruzioni su come avviare il software, comprese le procedure per l'avvio dei vari componenti e i comandi da utilizzare. Si includeranno anche eventuali configurazioni necessarie prima dell'avvio.
// Si forniranno inoltre informazioni su come ripristinare il software e su come spegnere correttamente il sistema.


= Guida all'Uso

// In questa sezione si forniranno le istruzioni su come utilizzare il software, comprese le funzionalità principali e le procedure per l'interazione con l'utente. Si includeranno anche esempi pratici e suggerimenti per un uso efficace del software.
//Suddividere in sottosezioni in base alle funzionalità principali del software, ad esempio: gestione dell'inventario, gestione degli ordini, reportistica, login ecc.

= Riferimento API

// In questa sezione si fornirà un riferimento completo alle API del software, comprese le descrizioni dei vari endpoint, i parametri richiesti e le risposte attese. Si includeranno anche esempi di richieste e risposte per facilitare l'integrazione con altri sistemi.
// Creare una sottosezione per ogni API