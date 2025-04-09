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
  [0.1.0],
  [09/04/2025],
  [N. Moretto],
  [-],
  [Inizio redazione documento: Introduzione generale, Introduzione pianificazione a breve termine, Sprint 1],
  
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
Il *Piano di Progetto#super[G]* è un documento che definisce le modalità di gestione del progetto, le risorse necessarie e i rischi attesi.\ Il piano di progetto è un documento vivo, che viene aggiornato durante il ciclo di vita del progetto di *Ingegneria del Software*, in quanto le attività vengono pianificate volta per volta e le risorse vengono allocate in base alle necessità. Una progettazione dettagliata sul lungo termine, infatti, si rivelerebbe inefficace.

Il documento è molto importante per permettere una corretta pianificazione del lavoro e dei vari sprint#super[G], analizzando il tempo previsto ed effettivo per ogni attività, tenendo conto dei rischi e delle risorse disponibili.

== Glossario
La realizzazione di un software richiede, ancor prima dello sviluppo, una fase di analisi e progettazione. Dato che il lavoro durante questa fase è svolto da più persone e in modo asincrono, è necessario documentare tutte queste attività per tenere traccia di ciò che è stato fatto e per evitare confusione. 

Si potrà dedurre che questi documenti potrebbero contenere parole o frasi che non sono di uso comune, ma che sono state scelte per essere più specifiche e per evitare ambiguità. Per questo motivo è stato creato un glossario#super[G] che contiene le definizioni di tali termini, al seguente #link("https://teamcodealchemists.github.io/glossario")[#underline[indirizzo]]. 

== Fonti   //Inserire riferimenti al capitolato del progetto e a lezioni/slide del professore se necessario
- *Capitolato d'appalto C6 - Gestione di un magazzino distribuito - _M31_*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")

  //TODO: da completare

#pagebreak()
= Analisi e gestione dei rischi
== Introduzione        //UN PUNTO PER OGNI RISCHIO: es. 2.2.1, ecc...
== Rischio tecnologico //tecnologie utilizzate ed eventuali errori
== Rischio individuale //altri impegni e attività individuale
== Rischio globale     //valutare altri rischi

#pagebreak()
= Pianificazione nel lungo termine
== Attività previste per la Requirements and Technology Baseline (RTB)
== Attività previste per la Product Baseline (PB)
La redazione di questo paragrafo sarà effettuato in seguito al superamento della
*Requirements and Technology Baseline#super[G] (RTB)*.

#pagebreak()
= Pianificazione nel breve termine
== Introduzione
Il team _Code Alchemists_ ha deciso di adottare la metodologia *Agile#super[G]* per la gestione del progetto. In particolare, si è scelto di utilizzare il framework *Scrum#super[G]*, che prevede l'uso di *sprint#super[G]*, ovvero periodi di tempo definiti in cui il team si concentra su un insieme specifico di attività.\
Il gruppo ha deciso di mantenere la durata degli sprint di *2 settimane*, in modo da avere un buon equilibrio tra la pianificazione e l'esecuzione delle attività. Durante ogni sprint, il team si riunisce quotidianamente per discutere i progressi e le difficoltà incontrate, in modo da garantire una comunicazione costante e una rapida risoluzione dei problemi.\

Il team ha deciso di utilizzare un approccio *iterativo#super[G]* e *incrementale#super[G]*, in modo da poter adattare il lavoro in base ai feedback ricevuti e alle esigenze del cliente. Inoltre, si è deciso di utilizzare un *sistema di gestione delle attività* per *tenere traccia del lavoro svolto e delle scadenze*.
In questo modo, sarà possibile garantire una buona pianificazione e una gestione efficace del progetto, riducendo al minimo i rischi e massimizzando le possibilità di successo.

Il team si impegna anche a *concordare delle riunioni periodiche* con il proponente _M31_ per discutere i progressi e le eventuali modifiche al progetto. Queste riunioni saranno utili per garantire che il lavoro svolto sia in linea con le aspettative del cliente e per ricevere feedback su quanto realizzato.

Ora seguiranno le descrizioni dei vari sprint previsti per il progetto, dove verranno riportate:
- Informazioni generali;
- Attività da svolgere;
- Prospetto ore e costi;
- Rischi attesi;
- Ore e costi effettivi;
- Aggiornamento delle risorse rimanenti;
- Rischi incontrati;
- Retrospettiva.

#pagebreak()
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
#v(1em)
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[],[],
      [Mattia Dalla Pozza],[],[],[],[],[],[],
      [Sebastiano Marana],[],[],[],[],[],[],
      [Nicholas Moretto],[],[],[],[],[],[],
      [Matteo Pretto],[],[],[],[],[],[],
      [Alex Shu],[],[],[],[],[],[],
      [Stefano Speranza],[],[],[],[],[],[],
      [Ramona Zangla],[],[],[],[],[],[],
  ),
  didascalia: "Sprint 1 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo    //tabella ore effettivamente svolte (stessa tabella di sopra)
==== Aggiornamento delle risorse rimanenti   //altra tabella
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile], [30€/h], [-], [-], [-], [-],
      [Amministratore], [20€/h], [-], [-], [-], [-],
      [Analista], [20€/h], [-], [-], [-], [-],
      [Progettista], [20€/h], [-], [-], [-], [-],
      [Programmatore], [20€/h], [-], [-], [-], [-],
      [Verificatore], [20€/h], [-], [-], [-], [-],
      [*Totale*], [*-*], [*-*], [*-*], [*-*], [*-*],
  ),
    didascalia: "Sprint 1 - Aggiornamento delle risorse disponibili"
  )
]
==== Rischi incontrati

=== Retrospettiva
