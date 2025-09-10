#import "../../src/basic.typ": *
#import "../../src/graphs.typ": *

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "Test Book"
#let status = "In redazione"
#let destinatario = "M31"
#let versione = "0.1.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  "M31"
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.1.0],
  [03/09/2025],
  [N. Bolzon],
  [N. Moretto],
  [Inserimento sezioni informative del documento. Inizializzazione template sezione test.],
  
  [0.0.1],
  [03/09/2025],
  [N. Bolzon],
  [N. Moretto],
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

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  block(it)
}

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di *definire e descrivere i casi di test previsti per la validazione del sistema software* in oggetto. Il Test Book costituisce lo strumento operativo per l'esecuzione delle attività di collaudo, fornendo una descrizione dettagliata dei test, delle condizioni necessarie alla loro esecuzione e dei risultati attesi. Inoltre, il documento garantisce la tracciabilità tra i requisiti specificati e i test eseguiti, al fine di verificare che tutte le funzionalità implementate siano conformi alle specifiche e soddisfino le esifenze degli utenti finali. L'obiettivo è quindi supportare il processi di valutazione della qualità del software, evidenziando eventuali anomalie e fornendo le informazioni necessarie per la loro risoluzione.

== Ambito del Testing
Il testing riguarda le funzionalità e i requisiti descritti nel documento di Analisi dei Requisiti e nei casi d'uso associati.
In particolare, il Test Book copre le *funzionalità principali del sistema e i requisiti funzionali*, le condizioni di input e output significative per validare il comportamento del software.

== Riferimenti

= Strategia di esecuzione dei test

== Prerequisiti generali

== Istruzioni
Questa sezione del documento dichiara le istruzioni necessarie che verranno utilizzate per configurare l’ambiente di test e per eseguire i casi di test definiti nella sezione seguente. L’obiettivo è chiarire il "_modus operandi"_ dei test e affinchè venga eseguito in un ambiente controllato e riproducibile, riducendo al minimo errori dovuti a configurazioni locali o dati residui. La guida copre la clonazione del progetto, l’avvio dei servizi tramite Docker Compose, il reset dell’ambiente e l’esecuzione dei test tramite Newman.

=== Clonare la repository
1. Aprire un terminale e spostarsi nella cartella di lavoro desiderata, ad esempio:
#align(center)[`cd ~/workspace`]

2. Clonare la repository del progetto:
#align(center)[`git clone https://github.com/teamcodealchemists/MVP.git`]

3. Entrare nella cartella del progetto appena clonata:
#align(center)[`cd MVP`]

=== Avviare Docker Compose
1. Avviare i servizi del progetto in background:
#align(center)[`docker compose up --build -d`]

2. Verificare che i container siano attivi:
#align(center)[`docker ps`]

=== Eseguire i test con Newman
_*Nota:* Non usare Postman per le run automatiche (poichè richiede account a pagamento)._

1. Installare Newman _(solo la prima volta)_
#align(center)[`npm install -g newman`]

2. Spostarsi nella cartella dove sono presenti i file dei test di accettazione.
  \ Per eseguire i test localmente sui file json tramite Newman, usare il seguente comando _(sostituire il nome del file)_:
#align(center)[`newman run <nome_file>`]

Oppure sulle collezioni del workspace _(sostituire il collection-id)_:
#align(center)[`newman run https://www.postman.com/collections/<collection-id>`]

_*Nota:* Si può anche usare l'opzione `--verbose` per ottenere più informazioni sul ritorno delle richieste._\

=== Resettare l’ambiente ad ogni test
Per ripartire da zero e resettare i volumi:
1. Fermare i container e rimuovere i volumi:
#align(center)[`docker compose down`]

2. Ricreare l’ambiente da zero:
#align(center)[`docker compose up --build -d`]

_*Nota:* Questo procedimento ferma i container, rimuove i volumi e ricrea l’ambiente da zero._ \

= Struttura del Test Book

== TdA-01
- *Identificativo:* TdA-01
- *Titolo del test:* Registrazione del Supervisore Globale.
- *Descrizione:* Verificare che all’avvio del sistema il supervisore globale possa registrarsi con successo.
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-02
- *Identificativo:* TdA-02
- *Titolo del test:* Errori Registrazione Supervisore Globale.
- *Descrizione:* Verificare che alla registrazione del supervisore globale vengano gestiti gli errori di inserimento dati.
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-03
- *Identificativo:* TdA-03
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-04
- *Identificativo:* TdA-04
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-05
- *Identificativo:* TdA-05
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-06
- *Identificativo:* TdA-06
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-07
- *Identificativo:* TdA-07
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-08
- *Identificativo:* TdA-08
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-09
- *Identificativo:* TdA-09
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-10
- *Identificativo:* TdA-10
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-11
- *Identificativo:* TdA-11
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-12
- *Identificativo:* TdA-12
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-13
- *Identificativo:* TdA-13
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-14
- *Identificativo:* TdA-14
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-15
- *Identificativo:* TdA-15
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-16
- *Identificativo:* TdA-16
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-17
- *Identificativo:* TdA-17
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-18
- *Identificativo:* TdA-18
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-19
- *Identificativo:* TdA-19
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-20
- *Identificativo:* TdA-20
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-21
- *Identificativo:* TdA-21
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-22
- *Identificativo:* TdA-22
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-23
- *Identificativo:* TdA-23
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-24
- *Identificativo:* TdA-24
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-25
- *Identificativo:* TdA-25
- *Titolo del test:* 
- *Descrizione:*
- *Prerequisito:*
- *Procedura di esecuzione:*
- *Risultato atteso:*
- *Esito:*
- *Note:*
 
= Riepilogo esecuzione test
#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#set table(
  fill: (x, y) => if y == 0 {gray} else if x == 0 {luma(235)},
  align: (x, _) => if x <= 1 or x > 2 {center} else {left},
)

#figure(
  table(
  columns: (1fr, 2fr, 4fr, 1fr),
  inset: 10pt,
  table.header(
    [*ID \ Test*], [*Area Funzionale*], [*Obiettivo del Test*], [*Esito*]
  ),
    [*TdA-01*],[Registrazione \ Supervisore Globale],[Verificare che all’avvio del sistema il supervisore globale possa registrarsi con successo.],[],
    [*TdA-02*],[Registrazione \ Supervisore Globale],[Verificare che alla registrazione del supervisore globale vengano gestiti gli errori di inserimento dati.],[],
    [*TdA-03*],[Autenticazione \ Utente],[Verificare la funzionalità di login con le credenziali corrette.],[],
    [*TdA-04*],[Autenticazione \ Utente],[Verificare che al login dell’utente vengano gestiti gli errori di inserimento dati.],[],
    [*TdA-05*],[Autenticazione \ Utente],[Verificare funzionalità logout dal sistema.],[],
    [*TdA-06*],[Registrazione \ Supervisore Locale],[Verificare funzionalità di  registrazione di un nuovo Supervisore Locale con dati corretti.],[],
    [*TdA-07*],[Registrazione \ Supervisore Locale],[Verificare che alla registrazione del supervisore locale vengano gestiti gli errori di inserimento dati.],[],
    [*TdA-08*],[Registrazione \ Supervisore Locale],[Verificare l’assegnazione dei magazzini a un Supervisore Locale.],[],
    [*TdA-09*],[Gestione \ Magazzini],[Verificare l’aggiunta di un nuovo magazzino con indirizzo valido.],[],
    [*TdA-10*],[Gestione \ Magazzini],[Verificare la modifica dei dati di un magazzino.],[],
    [*TdA-11*],[Gestione \ Merci],[Verificare l’inserimento di una nuova merce con dati corretti.],[],
    [*TdA-12*],[Gestione \ Merci],[Verificare la definizione e la modifica della quantità di una merce.],[],
    [*TdA-13*],[Gestione \ Merci],[Verificare la rimozione di una merce dall’inventario.],[],
    [*TdA-14*],[Gestione \ Ordini],[Verificare l’inserimento di un ordine interno (trasferimento tra magazzini).],[],
    [*TdA-15*],[Gestione \ Ordini],[Verificare l’inserimento di un ordine di vendita esterno.],[],
    [*TdA-16*],[Gestione \ Ordini],[Verificare l’annullamento degli ordini in attesa o in elaborazione.],[],
    [*TdA-17*],[Gestione \ Ordini],[Verificare il tracciamento e la corretta gestione degli stati degli ordini.],[],
    [*TdA-18*],[Auditing \ e Report],[Verificare la visualizzazione dell’inventario globale e per singolo magazzino.],[],
    [*TdA-19*],[Auditing \ e Report],[Verificare la visualizzazione dei report ordini globali e per singolo magazzino.],[],
    [*TdA-20*],[Gestione \ Soglie Critiche],[Verificare la modifica dei valori di soglia minima e massima.],[],
    [*TdA-21*],[Gestione Disservizi \ e Stati Magazzino],[Verificare la gestione dei magazzini online/offline, annullamento ordini interni da offline e riattivazione.],[],
    [*TdA-22*],[Gestione \ Riassortimento],[Verificare il riassortimento automatico in caso di ordine non soddisfacibile.],[],
    [*TdA-23*],[Gestione \ Riassortimento],[Verificare il riassortimento automatico al raggiungimento della soglia minima di un prodotto.],[],
    [*TdA-24*],[Gestione \ Riassortimento],[Verificare il riassortimento automatico al raggiungimento della soglia massima di un prodotto.],[],
    [*TdA-25*],[Gestione Conflitti \ Ordini Simultanei],[Verificare la corretta gestione di ordini simultanei da parte di un magazzino.],[],
  ),
  caption: [Elenco dei test di accettazione e relativo esito.],
)