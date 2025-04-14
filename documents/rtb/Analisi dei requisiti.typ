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

#let titolo = "Analisi dei requisiti"
#let status = "In redazione"
#let destinatario = "M31"
#let versione = "0.0.2"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.0.3],
  [14/04/2025],
  [N. Moretto],
  [-],
  [Aggiunta descrizione glossario, descrizione requisiti e aggiunta di tutti i requisiti],
  
  [0.0.2],
  [12/04/2025],
  [Mattia D.P],
  [N. Bolzon],
  [Aggiunto primo contenuto],
  
  [0.0.1],
  [28/03/2025],
  [S. Speranza],
  [N. Moretto],
  [Creazione template e struttura del documento]
)

#let contenuto = (
    // Voci in prima pagina
    voce("Stato", status),
    voce("Versione", versione),
    voce("Distribuzione", distribuzione)
)

//Definire contatore tabella_counter per le tabelle
#let tabella_counter = 0

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

/* SEZIONE 1 - Introduzione */
= Introduzione
== Scopo del documento
#v(0.5cm)
Il presente documento viene redatto per _l'analisi dei requisiti_ #super[G].

Il presente documento di Analisi dei Requisiti ha lo scopo di fornire una panoramica quanto più possibile dettagliata del prodotto software da sviluppare. Esso rappresenta un riferimento e una linea guida fondamentale per la progettazione, l’implementazione e il collaudo del sistema, garantendo che il prodotto finale soddisfi pienamente le esigenze e le aspettative del committente.

All’interno del documento sono descritte le richieste del committente, le modalità previste per la loro implementazione dal punto di vista architetturale e tecnologico, nonché i riferimenti normativi e informativi utili. In particolare, vengono forniti una descrizione approfondita dei Casi d’Uso e una lista completa dei requisiti funzionali e non funzionali del sistema.

Questo documento mira a offrire una visione strutturata e completa del sistema software, delineando i bisogni degli utenti in base alle diverse categorie individuate durante l’analisi del capitolato e gli incontri con il committente. Sono inoltre chiaramente identificati gli attori coinvolti nel sistema e descritte le componenti principali del programma.

Per agevolare la comprensione, verranno utilizzati i Diagrammi dei Casi d’Uso per visualizzare le interazioni tra attori e sistema. I requisiti identificati sono classificati come segue:

- *Obbligatori:* irrinunciabili e imprescindibili per il corretto funzionamento del sistema;

- *Desiderabili:* non strettamente necessari ma in grado di apportare un valore aggiunto riconoscibile;

- *Opzionali:* relativamente utili oppure contrattabili per un’eventuale implementazione futura.

Il documento è stato redatto dagli Analisti del team di progetto ed è rivolto a tutti gli interessati ed in particolare: 

- Il Committente, che potrà verificare che i requisiti siano stati correttamente interpretati e documentati secondo le proprie specifiche;

- Il Team di Progettisti e Programmatori, che utilizzerà il documento come guida per la realizzazione del sistema;

- Il Team di Verificatori, che lo adotterà come base per la definizione dei casi di test e la verifica del corretto funzionamento del prodotto.

Potrà inoltre essere consultato da altri soggetti coinvolti nel processo di sviluppo, come Amministratori e Responsabili di Progetto, al fine di acquisire una comprensione esauriente delle specifiche del sistema.


/*
Il documento qui redatto serve per fornire una panoramica quanto piu' possibile dettagliata del prodotto preso in considerazione, meglio descritto al punto 1.2. All' interno e' possibile trovare in particolare, la descrizione delle richieste, come si e' previsto di implementarle, dal punto di vista architetturale e tecnologico, tutti i riferimenti normativi e informativi utili, i casi d'uso del prodotto dettagliati, e una lista dei diversi requsiti 
*/



/* NOTA IMPORTANTE: Nelle slide di Tullio, Analisi dei requisiti - T05, alla slide 22 viene mostrato un possibile indice per questo documento, che segue lo standard ISO/IEC/IEEE 29148:2018 */

== Descrizione del prodotto
#v(0.5cm)

Il progetto ha l’obiettivo di sviluppare un sistema intelligente per la gestione distribuita dell’inventario in una rete di magazzini geograficamente separati. In scenari logistici complessi, come quelli che prevedono la cooperazione tra più sedi operative, è fondamentale garantire disponibilità continua delle scorte, ridurre i tempi di inattività e ottimizzare il flusso di materiali.

Il sistema dovrà permettere di rilevare in tempo reale situazioni critiche, come carenze di prodotto in una sede e surplus in un’altra, intervenendo automaticamente o suggerendo azioni correttive di trasferimento o riassortimento. Sarà inoltre in grado di gestire eventi imprevisti, come l’indisponibilità temporanea di un magazzino, garantendo la continuità operativa attraverso un bilanciamento intelligente delle risorse nei magazzini vicini.

Una delle componenti chiave sarà la *visibilità centralizzata e in tempo reale* di tutte le scorte distribuite. Il sistema offrirà funzionalità avanzate per il monitoraggio, la sincronizzazione e l’aggiornamento dell’inventario, supportando decisioni rapide e affidabili.

Sarà adottata *un’architettura scalabile a microservizi*, che garantisca alta disponibilità, interoperabilità tra i nodi della rete, e gestione efficiente del carico, anche in presenza di numerose richieste simultanee. Ogni nodo della rete – cioè ciascun magazzino – potrà operare in modo autonomo, mantenendo però sincronizzazione con un sistema centrale tramite servizi cloud.

Il progetto prevede anche *l’integrazione di modelli predittivi* per il riassortimento, sfruttando dati storici, pattern di consumo e stagionalità per anticipare la domanda e ridurre il rischio di esaurimento scorte. M31 supporterà il progetto fornendo un dataset pubblico e una figura tecnica di riferimento per l’analisi dei dati e lo sviluppo dei modelli.

L’obiettivo finale è realizzare una *piattaforma robusta e flessibile* che migliori la resilienza e l’efficienza dell’intera rete logistica, assicurando precisione, tempestività e scalabilità nelle operazioni di gestione dell’inventario.

=== Architettura

=== Funzionalità

=== Scelte tecnologiche

== Il Glossario
#v(0.5cm)
In questo documento potrebbero essere presenti parole e terminologie complesse, che potrebbero non essere chiare a tutti, anche in relazione al contesto in cui vengono usate. Per questo motivo, e' stato creato un glossario, che contiene le definizioni di alcune parole e termini utilizzati nel documento.

Le parole che possiedono un riferimento ale glossario vengono evidenziate come segue: *parola*#super[G].


== Riferimenti

=== Normativi

=== Informativi

= Casi d'uso del prodotto

== Introduzione

== Lista dei Casi d'uso

=== U.C.1 Primo Caso d'uso

=== U.C.2 Secondo Caso d'uso

= Requisiti
#v(0.5cm)
Verranno ora elencati i requisiti del sistema, che sono stati suddivisi in quattro categorie principali: Requisiti Funzionali, Requisiti di Sicurezza, Requisiti non Funzionali e Requisiti di Vincolo.

== Classificazione dei requisiti
- *Requisiti Funzionali:* sono i requisiti che definiscono le funzionalità e i comportamenti del sistema. Questi requisiti specificano cosa il sistema deve fare e come deve interagire con gli utenti e altri sistemi. I requisiti funzionali sono essenziali per garantire che il sistema soddisfi le esigenze degli utenti e raggiunga gli obiettivi prefissati.

- *Requisiti di Sicurezza:* sono i requisiti che definiscono le misure di sicurezza e protezione dei dati all'interno del sistema. Questi requisiti sono fondamentali per garantire la riservatezza, l'integrità e la disponibilità delle informazioni trattate dal sistema.

- *Requisiti non Funzionali:* sono i requisiti che definiscono le caratteristiche qualitative del sistema, come prestazioni, usabilità, affidabilità e manutenibilità. Questi requisiti non riguardano direttamente le funzionalità del sistema, ma sono comunque cruciali per garantire un'esperienza utente soddisfacente e un funzionamento efficiente del sistema.

- *Requisiti di Vincolo:* sono i requisiti che definiscono le limitazioni e le condizioni che il sistema deve rispettare durante il suo sviluppo e funzionamento. Questi requisiti possono riguardare aspetti come l'ambiente operativo, le tecnologie utilizzate, le normative da seguire e le risorse disponibili. I requisiti di vincolo sono importanti per garantire che il sistema sia realizzabile e sostenibile nel contesto in cui verrà implementato.

== Fonti dei requisiti
Le fonti dei requisiti sono i documenti e le informazioni da cui sono stati estratti i requisiti stessi, come il capitolato d'appalto, le riunioni con il committente.\
Inoltre, alcuni requisiti sono stati derivati dall'analisi allo stato dell'arte e dall'analisi dei casi d'uso.

Tutti i requisiti presenteranno la fonte di provenienza.

== Codifica dei requisiti
I requisiti sono stati codificati in modo da facilitarne la lettura e la comprensione. La codifica è composta da un prefisso che indica il tipo di requisito, seguito da un numero progressivo.\

I requisiti funzionali sono preceduti dal prefisso "RF", i requisiti di sicurezza dal prefisso "RS", i requisiti non funzionali dal prefisso "RnF" e i requisiti di vincolo dal prefisso "RV", dove:
- *R* sta per "#strong[R]equisito"
- *F* sta per "#strong[F]unzionale"
- *S* sta per "#strong[S]icurezza"
- *nF* sta per "#strong[n]on #strong[F]unzionale"
- *V* sta per "#strong[V]incolo"

Essendoci presenti anche dei requisiti opzionali, è stato deciso di aggiunngere la lettera *"O"* (Opzionale) al prefisso del requisito, per indicare che il requisito è opzionale.\ *RFO*, ad esempio, sta per "Requisito Funzionale Opzionale".\

Quindi, la struttura del codice di un requisito è la seguente:
- RF01: Requisito Funzionale 01
- RS01: Requisito di Sicurezza 01
- RnF01: Requisito non Funzionale 01
- RV01: Requisito di Vincolo 01

== Requisiti Funzionali
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),

  [*RF01*], [Rilevamento di carenza di scorte di un magazzino], [capitolato],
  [*RF02*], [Trasferimento di scorte da un magazzino ad un altro], [capitolato],
  [*RF03*], [Rilevamento delle scorte minime necessarie e mantenimento], [capitolato],
  [*RF04*], [Bilanciamento delle scorte, il più possibile, in ogni magazzino], [capitolato],
  [*RF05*], [Evitare rotture di stock], [capitolato],
  [*RF06*], [Riempire magazzini vicini ad uno offline, per sopperire al disservizio], [capitolato],
  [*RF07*], [Individuazione di magazzini offline], [capitolato],
  [*RF08*], [Gestione magazzino che torna online], [capitolato],

  [*RF09*], [
    Visibilità centrale in tempo reale di tutte le scorte distribuite (monitoraggio livelli inventario), di ogni magazzino (anche indipendentemente), 
    permettendo il trasferimento di prodotti, il riassortimento, e la riduzione dei livelli medi di scorte mantenendo però livelli di sicurezza in caso di carenze o ritardi
  ], [capitolato],

  [*RF10*], [Gestione della variabilità della domanda e tempi di consegna con modelli predittivi], [capitolato],
  [*RF11*], [Sistema distribuito, scalabile, con microservizi], [capitolato],
  [*RF12*], [Operazioni distribuite, prestazioni elevate anche in alto carico di dati e richieste simultanee], [capitolato],
  [*RF13*], [Suggerimento/automatizzazione azioni di riassortimento e trasferimento tra magazzini], [capitolato],
  [*RF14*], [Aggiornamenti in tempo reale su prelievi, ricezioni (ricevimento merci) e trasferimenti], [capitolato],

  [*RF15*], [
    Riassortimento predittivo tramite analisi dei dati storici, 
    con previsione della domanda per ciascun prodotto considerando stagionalità e tendenze di consumo,
    per determinare quando e quanto riassortire le scorte, 
    riducendo il rischio di esaurimento o sovrastoccaggio
  ], [capitolato],

  [*RF16*], [
    Gestione aggiornamenti simultanei dell’inventario da magazzini differenti, 
    anche per i singoli magazzini quando ricevono ordini per uno stesso prodotto
  ], [capitolato],

  [*RF17*], [
    Magazzini autonomi come edge nodes, che fanno elaborazioni autonome per ridurre il carico sulla rete, 
    gestiti da servizi distribuiti con operazioni di inventario indipendenti ma sincronizzate centralmente
  ], [capitolato],

  [*RF18*], [Sincronizzazione dei nodi per allineamento globale dei dati], [capitolato],

  [*RF19*], [
    Magazzino sincronizzato con copia remota (cloud), che fornisce i dati al sistema centralizzato, 
    gestito tramite microservizi per garantire scalabilità e affidabilità
  ], [capitolato],

  [*RF20*], [
    Progettazione architetturale ben documentata, 
    presentata con diagrammi a blocchi e derivata da analisi dei requisiti e del contesto distribuito
  ], [capitolato],

  [*RF21*], [
    Sincronizzazione in tempo reale dei dati di inventario tra i vari magazzini e il centrale,
    includendo entrate e uscite merci registrate e comunicate, 
    garantendo una visione aggiornata e coerente per ogni magazzino dell’inventario
  ], [capitolato],

  [*RF22*], [
    Gestione locale autonoma del proprio inventario tramite microservizi,
    comprendente operazioni di inserimento, modifica, trasferimento, prelievo merci, 
    e aggiornamento locale che viene sincronizzato contemporaneamente con il sistema centrale
  ], [capitolato],

  [*RF23*], [
    Risoluzione di conflitti dovuti ad aggiornamenti o richieste simultanee,
    garantendo consistenza e integrità dei dati condivisi
  ], [capitolato],

  [*RF24*], [
    Monitoraggio delle scorte in tutti i magazzini in tempo reale, 
    con generazione di report automatici sugli stock e avvisi personalizzabili 
    (es. quando un prodotto scende sotto una soglia predefinita)
  ], [capitolato],

  [*RF25*], [
    Garantire la gestione delle operazioni di trasferimento da un magazzino ad un altro, 
    inclusa la possibilità di generare richieste di trasferimento di merce, gestirle, 
    e visualizzare lo stato del trasferimento in tempo reale con aggiornamento dello stato dell’inventario
  ], [capitolato],

  [*RFO01*], [
    Integrazione con sistemi di notifica per eventi rilevanti, 
    come il raggiungimento dei livelli minimi di scorte, 
    l’approvazione dei trasferimenti di merci, 
    con alert configurabili in base a regole definite 
    e supporto a più canali di comunicazione (e-mail, SMS, dashboard interna)
  ], [capitolato],

  [*RFO02*], [
    Implementazione di meccanismi di autorizzazione e autenticazione, 
    inclusa la gestione di ruoli e permessi differenziati per operatori, supervisori e amministratori
  ], [capitolato],

  [*RFO03*], [
    Backup regolare dei dati, 
    con il sistema centrale incaricato di gestire l’integrità e la conciliazione dei dati, 
    mantenendo copie locali per ogni magazzino e permettendo il ripristino completo dei sistemi in caso di necessità
  ], [capitolato],


)
#align(center)[_Tabella #tabella_counter: Requisiti funzionali_]

== Requisiti di Sicurezza
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),

  [*RS01*], 
  [Cifratura end-to-end per tutti i dati scambiati], 
  [capitolato],

  [*RS02*], 
  [Monitoraggio continuo per rilevare tentativi di accesso non autorizzati o attività sospette], 
  [capitolato],

  [*RSO03*], 
  [
    Implementare l'autenticazione tra microservizi, includendo: 
    utilizzo di JWT e mTLS per garantire che solo microservizi autorizzati possano comunicare tra loro, 
    cifratura delle comunicazioni, 
    isolamento dei microservizi con funzioni distinte, 
    monitoraggio e gestione delle dipendenze tra microservizi per individuare vulnerabilità esterne
  ], 
  [capitolato],

  [*RSO04*], 
  [Backup regolari, ridondanza e piani di ripristino in caso di attacchi o malfunzionamenti], 
  [capitolato],

  [*RSO05*], 
  [
    Assicurare che l’autenticazione sia robusta tramite MFA e certificati crittografici, 
    consentendo l’accesso solo a dispositivi e utenti autorizzati, 
    e assicurando l’integrità dei dati attraverso firme digitali o hashing
  ], 
  [capitolato],
)
#align(center)[_Tabella #tabella_counter: Requisiti di sicurezza_]



== Requisiti non Funzionali
//incremento tabella_counter
#let tabella_counter = tabella_counter + 1

#set table(
  fill:(_,y)=>if y==0 {rgb("#2599ff")}
)

#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: center,
  table.header(
    [*Codice*], [*Descrizione*], [*Fonti*]
  ),

  [*RnF01*], [Test unitari per garantire la correttezza delle funzioni sviluppate, anche dopo modifiche], [capitolato],
  [*RnF02*], [Percentuale minima di copertura del codice concordata con M31], [capitolato],
  [*RnF03*], [Esecuzione automatica dei test], [capitolato],
  [*RnF04*], [Test book per documentare: test eseguiti, risultati ottenuti, descrizione casi di test, condizioni iniziali, passaggi eseguiti, risultati attesi e ottenuti, criteri di validazione], [capitolato],
  [*RnF05*], [Sistema scalabile orizzontalmente: ogni magazzino può aumentare o diminuire risorse in base al carico di lavoro, senza compromettere gli altri; Microservizi modulari e distribuibili in più istanze cloud], [capitolato],
  [*RnF06*], [Versionamento tramite Git], [capitolato],
)
#align(center)[_Tabella #tabella_counter: Requisiti non funzionali_]

== Tracciamento dei casi d'uso