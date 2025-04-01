#import "/src/basic.typ": *

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
Il presente documento viene redatto per descrivere il _Way of Working_#super[G] adottato dal Team _Code Alchemists_ per lo svolgimento del progetto didattico di Ingegneria del Software.

Il presente documento è redatto secondo lo standard _ISO/IEC 12207:1995_, che identifica tre tipologie di processi:

== 1.2 Scopo del prodotto
== 1.3 Glossario
== 1.4 Riferimenti
=== 1.4.1 Riferimenti normativi
- *Capitolato d'appalto* \
  *C6 - Sistema di Gestione di un Magazzino Distribuito* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")]\
  Ultimo Accesso: \

- *Standard ISO/IEC 12207:1995* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")]\
  Ultimo Accesso: \

=== 1.4.2 Riferimenti informativi
- *Glossario* \
  #underline[#link("")] \
  Ultimo Accesso: \

/* SEZIONE 2 - Processi Primari */
= 2. Processi Primari

/* SEZIONE 3 - Processi di Supporto */

/* SEZIONE 4 - Processi Organizzativi */
= 4. Processi Organizzativi
== 4.1 Gestione dei Processi
=== 4.1.1 Attività previste
=== 4.1.2 Ruoli
=== 4.1.3 Coordinamento
==== 4.1.3.1 Riunioni
==== 4.1.3.2 Comunicazioni
== 4.2 Infrastruttura
=== 4.2.1 Attività Previste
=== 4.2.2 Implementazione
=== 4.2.3 Creazione
==== 4.2.3.1 Google Drive

- *Drive* per la condivisione di file;
- *Github* per il repository codice;
- *GitHub Pages* per la presentazione del repository;
- *Discord* per le comunicazioni vocali e le riunioni interne;
- *Telegram* per le comunicazioni testuali più rapide;
- *Jira* per il coordinamento del lavoro;
- *Typst* come piattaforma per la stesura della documentazione.

= Strumenti di comunicazione

= Gestione della documentazione
== Versionamento
Il versionamento dei documenti segue i seguenti criteri:
  - *0.0.x*: creazione template, struttura documento
  - *0.x.x*: inserimento contenuto del documento
  - *1.0.0*: documento revisionato e approvato
  - *1.x.x*: modifiche eventuali dopo l’approvazione
  - *2.0.0*: approvazione documento da parte di un ente terzo
  
= Gestione dei ruoli