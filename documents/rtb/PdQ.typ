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

#let titolo = "Piano di Qualifica"
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
  [22/04/2025],
  [S. Marana],
  [R. Zangla],
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

= 1. Introduzione
== 1.1 Scopo del documento

Il presente documento ha lo scopo di definire le modalità di qualifica e verifica del prodotto software. Esso rappresenta un indice di valutazione del prodotto software, delle sue componenti e degli strumenti utilizzati, al fine di garantire la qualità del prodotto finale e un continuo miglioramento del processo di sviluppo.

Il Piano di Qualifica#super[G] si basa su tre aspetti principali:

=== 1.1.1 Piano della Qualità
- Fissare gli standard del prodotto e i tipi di test da effettuare;
- Indicare gli obiettivi e le modalità di qualifica;
- Stabilire le regole a cui attenersi.

=== 1.1.2 Controllo di Qualità
- Attuare e assicurare la conformità con le regole da seguire e il Way of Working#super[G];
- L'operato viene monitorato attraverso il Cruscotto di Valutazione;
- Effettuare il Quality Assurance passo-passo per prevenire e mitigare i rischi e verificare la soddisfazione dei requisiti.

=== 1.1.3 Miglioramento continuo
La qualità non è definitiva, bensì si evolve e va perfezionata nel corso del tempo:
- Gli errori rappresentano opportunità di apprendimento, sperimentazione e miglioramento progressivo;
- L'obiettivo è incrementare nel tempo l'efficienza e l'efficacia dei processi.

== 1.2 Glossario
Per una corretta comprensione del documento, viene fornito un glossario dei termini utilizzati. Ogni termine è indicato da una "#super[G]" in apice alla parola.
Per trovare il significato del termine, è possibile consultare il glossario al seguente indirizzo: 
#underline[#link("https://teamcodealchemists.github.io/glossario.html")]\
== 1.3 Riferimenti

=== 1.3.1 Riferimenti normativi  

- *Capitolato d'appalto* \
  *C6 - Sistema di Gestione di un Magazzino Distribuito* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")]\

=== 1.3.2 Riferimenti informativi

- *Glossario#super[G]* \
  #underline[#link("https://teamcodealchemists.github.io/glossario.html")]

= 2. Metriche di Qualità

Per garantire un'analisi oggettiva e sistematica della qualità del prodotto software, si fa riferimento allo standard ISO/IEC 14598:1999, il quale propone un metodo per associare metriche quantitative a specifiche sotto-caratteristiche di qualità individuate nello standard ISO 9126.

In particolare, le metriche sono utilizzate per:

- Valutare attributi interni (come la struttura del codice) e attributi esterni (come l'usabilità e l'affidabilità percepita dall'utente);

- Supportare il monitoraggio dell'evoluzione del prodotto durante le fasi di sviluppo e validazione;

- Fornire indicatori oggettivi del raggiungimento degli standard prefissati nel Piano della Qualità.

Sebbene non sempre sia semplice adottare misurazioni formali, l'obiettivo è mantenere un approccio il più possibile oggettivo e ripetibile, riducendo soggettività nelle valutazioni.

== 2.1 Processi Primari
=== 2.1.1 Fornitura
=== 2.1.2 Sviluppo

== 2.2 Processi di Supporto
=== 2.2.1 Documentazione
=== 2.2.3 Gestione della Qualità

== 2.3 Processi Organizzativi
=== 2.3.1 Gestione dei processi

= 3. Metodologie di Testing
 == 3.1 Test di unità
 == 3.2 Test di integrazione
 == 3.3 Test di sistema
 == 3.4 Test di regressione

= 4. Cruscotto di Valutazione
  == 4.1 Valutazione della documentazione 
  == 4.2 Valutazione dei processi

= 5. Considerazioni di Miglioramento Continuo
  == 5.1 Valutazioni sull'organizzazione
  == 5.2 Valutazioni sui ruoli
  == 5.3 Valutazioni sugli strumenti
  == 5.4 Valutazioni sul prodotto