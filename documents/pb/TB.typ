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
- Connessione ad Internet
- #underline(link("https://nodejs.org/")[Node.js (>= 22.16.0)])
- #underline(link("https://www.npmjs.com/")[npm (>= 9.x)])
- #underline(link("https://www.docker.com/get-started")[Docker (>= 24.x.x)])
- #underline(link("https://docs.docker.com/compose/")[Docker Compose (>= 2.37.x)])
- 4+ CPU cores e 8GB+ RAM
- Almeno 20GB di spazio libero

== Istruzioni
Questa sezione del documento dichiara le istruzioni necessarie che verranno utilizzate per configurare l’ambiente di test e per eseguire i casi di test definiti nella sezione seguente. L’obiettivo è chiarire il "_modus operandi"_ dei test e affinchè venga eseguito in un ambiente controllato e riproducibile, riducendo al minimo errori dovuti a configurazioni locali o dati residui. La guida copre la clonazione del progetto, l’avvio dei servizi tramite Docker Compose, il reset dell’ambiente e l’esecuzione dei test tramite Postman Newman.

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

_*Nota:* Questo procedimento ferma i container, rimuove i volumi e ricrea l’ambiente da zero. *Dopo che l'ambiente è stato resettato, attendere almeno 30 secondi affinchè tutti i container vengano riavviati interamente*._ \

= Struttura del Test Book
\
*Nota:* Link al WorkSpace di Postman: #underline(link("https://app.getpostman.com/join-team?invite_code=fc2a30ec1cc122be8fa5db2dfa303f7d4165ffb6e088cb0589050bee643f1641&target_code=1f935b4facd39fefb25839fff6b4398b")[cliccare qua])

== TdA-01
- *Identificativo:* TdA-01
- *Titolo del test:* Registrazione del Supervisore Globale.
- *Descrizione:* Verificare che all’avvio del sistema il supervisore globale possa registrarsi con successo.
- *Prerequisito:* Il sistema è stato avviato.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-5b9d7b5f-f2fc-4218-8553-b768cfd5fb6e`.
- *Processo:*
  + Tentativo di login per verificare il primo avvio del sistema \
  + Registrazione del Supervisore Globale.
- *Risultato atteso:* Registrazione del Supervisore Globale effettuata.
- *Esito:* #text(green,"PASSATO")

== TdA-02
- *Identificativo:* TdA-02
- *Titolo del test:* Errori Registrazione Supervisore Globale.
- *Descrizione:* Verificare che alla registrazione del supervisore globale vengano gestiti gli errori di inserimento dati.
- *Prerequisito:* 
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-9f74ea49-1a0a-4352-b295-41e41bef69e9`.
- *Processo:* 
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-03
- *Identificativo:* TdA-03
- *Titolo del test:* Autenticazione Utente
- *Descrizione:* Verificare la funzionalità di login con le credenziali corrette.
- *Prerequisito:* 
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-7f79b291-6fac-490d-8361-5779e0428d17`.
- *Processo:* 
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-04
- *Identificativo:* TdA-04
- *Titolo del test:* Errori Login Utente
- *Descrizione:* Verificare che al login dell’utente vengano gestiti gli errori di inserimento dati.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-b3078c6e-ecdc-4542-bc4e-c4fde61f06f7`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-05
- *Identificativo:* TdA-05
- *Titolo del test:* Logout Utente
- *Descrizione:* Verificare funzionalità logout dal sistema.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-97d57106-2823-42a4-a2e9-1fd2ea80b8f8`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-06
- *Identificativo:* TdA-06
- *Titolo del test:* Registrazione Supervisore Locale 
- *Descrizione:* Verificare funzionalità di registrazione di un nuovo Supervisore Locale con dati corretti.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-720032e1-b087-437a-a233-719820a0c2e5`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-07
- *Identificativo:* TdA-07
- *Titolo del test:* Errori Registrazione Supervisore Locale
- *Descrizione:* Verificare che alla registrazione del supervisore locale vengano gestiti gli errori di inserimento dati.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-e17c10a6-7cd6-4f7f-975b-a1902da699a1`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-08
- *Identificativo:* TdA-08
- *Titolo del test:* Assegnazione Magazzini
- *Descrizione:* Verificare l’assegnazione dei magazzini a un Supervisore Locale.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-ed141d34-fa3a-41e5-b64b-f7d620eb3ddd`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-09
- *Identificativo:* TdA-09
- *Titolo del test:* Aggiunta Magazzino
- *Descrizione:* Verificare l’aggiunta di un nuovo magazzino con indirizzo valido.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-71140295-16ac-4838-809c-312e65efcddf`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-10
- *Identificativo:* TdA-10
- *Titolo del test:* Modifica Magazzino
- *Descrizione:* Verificare la modifica dei dati di un magazzino.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-556f9785-a851-4938-ad87-59407da3e261`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-11
- *Identificativo:* TdA-11
- *Titolo del test:* Inserimento Merce
- *Descrizione:* Verificare l’inserimento di una nuova merce con dati corretti.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-59a7db71-5576-482f-bc69-3ce1777f03c5`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-12
- *Identificativo:* TdA-12
- *Titolo del test:* Modifica Quantità Merce
- *Descrizione:* Verificare la definizione e la modifica della quantità di una merce.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-0f81c552-8d30-40f1-a113-dc6a30384218`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-13
- *Identificativo:* TdA-13
- *Titolo del test:* Rimozione Merce
- *Descrizione:* Verificare la rimozione di una merce dall’inventario.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-3aa88988-fc47-45eb-ab2c-e86ca85da7eb`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-14
- *Identificativo:* TdA-14
- *Titolo del test:* Inserimento Ordine Interno
- *Descrizione:* Verificare l’inserimento di un ordine interno (trasferimento tra magazzini).
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48206755-6358d821-7469-4a1f-9663-a332b59e291a`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* 
- *Note:*

== TdA-15
- *Identificativo:* TdA-15
- *Titolo del test:* Inserimento Ordine Esterno
- *Descrizione:* Verificare l’inserimento di un ordine di vendita esterno.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48206755-c109561e-e7d6-44ae-a40f-1ce551ad6a62`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* 
- *Note:*

== TdA-16
- *Identificativo:* TdA-16
- *Titolo del test:* Annullamento Ordini
- *Descrizione:* Verificare l’annullamento degli ordini in attesa o in elaborazione.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48206755-0fdf004a-7631-4c1d-a1fa-da4c5f977739`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* 
- *Note:*

== TdA-17
- *Identificativo:* TdA-17
- *Titolo del test:* Gestione Stati Ordini
- *Descrizione:* Verificare il tracciamento e la corretta gestione degli stati degli ordini.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando ``.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* 
- *Note:*

== TdA-18
- *Identificativo:* TdA-18
- *Titolo del test:* Visualizzazione Inventario
- *Descrizione:* Verificare la visualizzazione dell’inventario globale e per singolo magazzino.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-c71e13e4-d581-40d4-831c-0b436836fe37`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")
- *Note:*

== TdA-19
- *Identificativo:* TdA-19
- *Titolo del test:* Visualizzazione Report Ordini
- *Descrizione:* Verificare la visualizzazione dei report ordini globali e per singolo magazzino.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48219992-9544daf6-cd43-4b37-bfd3-06aa62a63a2e`.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-20
- *Identificativo:* TdA-20
- *Titolo del test:* Modifica Soglie Critiche
- *Descrizione:* Verificare la modifica dei valori di soglia minima e massima.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando ``.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-21
- *Identificativo:* TdA-21
- *Titolo del test:* Gestione Magazzini Offline/Online
- *Descrizione:* Verificare la gestione dei magazzini online/offline, annullamento ordini interni da offline e riattivazione.
- *Prerequisito:*
- *Procedura di esecuzione:*
  + Eseguire il comando ``. \
  + 
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-22
- *Identificativo:* TdA-22
- *Titolo del test:* Riassortimento Automatico Ordine
- *Descrizione:* Verificare il riassortimento automatico in caso di ordine non soddisfacibile.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando ``.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-23
- *Identificativo:* TdA-23
- *Titolo del test:* Riassortimento Soglia Minima
- *Descrizione:* Verificare il riassortimento automatico al raggiungimento della soglia minima di un prodotto.
- *Prerequisito:* 
- *Procedura di esecuzione:* Eseguire il comando ``.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-24
- *Identificativo:* TdA-24
- *Titolo del test:* Riassortimento Soglia Massima
- *Descrizione:* Verificare il riassortimento automatico al raggiungimento della soglia massima di un prodotto.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando ``.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:*
- *Note:*

== TdA-25
- *Identificativo:* TdA-25
- *Titolo del test:* Gestione Conflitti Ordini Simultanei
- *Descrizione:* Verificare la corretta gestione di ordini simultanei da parte di un magazzino.
- *Prerequisito:*
- *Procedura di esecuzione:* Eseguire il comando ``.
- *Processo:*
  + 
- *Risultato atteso:*
- *Esito:*
- *Note:*
 
= Riepilogo esecuzione test
#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#set table(
  fill: (x, y) => if y == 0 {gray} else if x == 0 {luma(235)},
  align: center
)

#figure(
  table(
  columns: (1fr, 3fr, 1.5fr),
  inset: 10pt,
  table.header(
    [*ID Test*], [*Nome Test*], [*Esito*]
  ),
    [*TdA-01*],[Registrazione Supervisore Globale.],[#text(green,"PASSATO")],
    [*TdA-02*],[Errori Registrazione Supervisore Globale.],[#text(green,"PASSATO")],
    [*TdA-03*],[Autenticazione Utente.],[#text(green,"PASSATO")],
    [*TdA-04*],[Errori Login Utente.],[#text(green,"PASSATO")],
    [*TdA-05*],[Logout Utente.],[#text(green,"PASSATO")],
    [*TdA-06*],[Registrazione Supervisore Locale.],[#text(green,"PASSATO")],
    [*TdA-07*],[Errori Registrazione Supervisore Locale.],[#text(green,"PASSATO")],
    [*TdA-08*],[Assegnazione Magazzini.],[#text(green,"PASSATO")],
    [*TdA-09*],[Aggiunta Magazzino.],[#text(green,"PASSATO")],
    [*TdA-10*],[Modifica Magazzino.],[#text(green,"PASSATO")],
    [*TdA-11*],[Inserimento Merce.],[#text(green,"PASSATO")],
    [*TdA-12*],[Modifica Quantità Merce.],[#text(green,"PASSATO")],
    [*TdA-13*],[Rimozione Merce.],[#text(green,"PASSATO")],
    [*TdA-14*],[Inserimento Ordine Interno.],[],
    [*TdA-15*],[Inserimento Ordine Esterno.],[],
    [*TdA-16*],[Annullamento Ordini.],[],
    [*TdA-17*],[Gestione Stati Ordini.],[],
    [*TdA-18*],[Visualizzazione Inventario.],[#text(green,"PASSATO")],
    [*TdA-19*],[Visualizzazione Report Ordini.],[],
    [*TdA-20*],[Modifica Soglie Critiche.],[],
    [*TdA-21*],[Gestione Magazzini Offline/Online.],[],
    [*TdA-22*],[Riassortimento Automatico Ordine.],[],
    [*TdA-23*],[Riassortimento Soglia Minima.],[],
    [*TdA-24*],[Riassortimento Soglia Massima.],[],
    [*TdA-25*],[Gestione Conflitti Ordini Simultanei.],[],
  ),
  caption: [Elenco dei test di accettazione e relativo esito.],
)