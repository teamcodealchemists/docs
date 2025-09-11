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
#let status = "Approvato"
#let destinatario = "M31"
#let versione = "1.0.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  "M31"
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [1.0.0],
  [10/09/2025],
  [R. Zangla],
  [N. Moretto],
  [Documento approvato interamente.],
  
  [0.2.0],
  [09/09/2025],
  [N. Bolzon \ S. Marana],
  [N. Moretto],
  [Completamento sezione "struttura del Test Book".],

  [0.1.0],
  [08/09/2025],
  [N. Bolzon \ S. Marana],
  [N. Moretto],
  [Inserimento sezioni informative del documento. Inizializzazione template sezione test.],
  
  [0.0.1],
  [07/09/2025],
  [N. Bolzon \ S. Marana],
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

=== Avviare Docker
1. Avviare Docker Engine

=== Avviare Docker Compose

1. Avviare i servizi del progetto in background:
#align(center)[`docker compose up --build -d`]

2. Verificare che i container siano attivi:
#align(center)[`docker ps`]

=== Eseguire i test con Newman
_*Nota:* Non usare Postman per le run automatiche (poichè richiede account a pagamento)._

1. Installare Newman _(solo la prima volta)_
#align(center)[`npm install -g newman`]

2. Eseguire il test sulle collezioni del workspace _(sostituire il collection-id)_:
#align(center)[`newman run https://www.postman.com/collections/<collection-id>`]

_*Nota:* Si può anche usare l'opzione `--verbose` per ottenere più informazioni sul ritorno delle richieste._\

=== Resettare l’ambiente ad ogni test
Al termine di ogni test, eseguire i seguenti compandi per resettare l'ambiente (ripartire da zero e resettare i volumi)

1. Fermare i container e rimuovere i volumi:
#align(center)[`docker compose down`]

2. Ricreare l’ambiente da zero:
#align(center)[`docker compose up --build -d`]

_*Nota:* Questo procedimento ferma i container, rimuove i volumi e ricrea l’ambiente da zero. *Dopo che l'ambiente è stato resettato, attendere almeno 120 secondi (2 minuti) affinchè tutti i container vengano riavviati interamente*._ \

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
  + Tentativo di login per verificare il primo avvio del sistema; \
  + Registrazione del Supervisore Globale.
- *Risultato atteso:* Registrazione del Supervisore Globale effettuata.
- *Esito:* #text(green,"PASSATO")

== TdA-02
- *Identificativo:* TdA-02
- *Titolo del test:* Errori Registrazione Supervisore Globale.
- *Descrizione:* Verificare che alla registrazione del supervisore globale vengano gestiti gli errori di inserimento dati.
- *Prerequisito:* Il sistema è stato avviato.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-9f74ea49-1a0a-4352-b295-41e41bef69e9`.
- *Processo:* 
  + Verifica che siamo nella fase di Startup; \
  + Registrazione di un Supervisore Globale con email errata; \
  + Registrazione di un Supervisore Globale con password errata; \
  + Registrazione di un Supervisore Globale con password errata; \
  + Registrazione di un Supervisore Globale con numero di telefono sintatticamente errato; \
  + Registrazione di un Supervisore Globale con parametro mancante (cognome); \
  + Registrazione di un Supervisore Globale con parametro di tipo errato (telefono come numero) \
- *Risultato atteso:* Visualizzazione di errori di inserimento in fase di Registrazione di un Supervisore Globale.
- *Esito:* #text(green,"PASSATO")

== TdA-03
- *Identificativo:* TdA-03
- *Titolo del test:* Autenticazione Utente
- *Descrizione:* Verificare la funzionalità di login con le credenziali corrette.
- *Prerequisito:* Registrato il Supervisore Globale.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-7f79b291-6fac-490d-8361-5779e0428d17`.
- *Processo:* 
  + Accesso del Supervisore Globale con credenziali corrette.
- *Risultato atteso:* Accesso del Supervisore Globale effettuato correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-04
- *Identificativo:* TdA-04
- *Titolo del test:* Errori Login Utente
- *Descrizione:* Verificare che al login dell’utente vengano gestiti gli errori di inserimento dati.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-b3078c6e-ecdc-4542-bc4e-c4fde61f06f7`.
- *Processo:*
  + Accesso con password errata;
  + Accesso con password errata;
  + Accesso con credenziali di un Supervisore già autenticato;
- *Risultato atteso:*
- *Esito:* #text(green,"PASSATO")

== TdA-05
- *Identificativo:* TdA-05
- *Titolo del test:* Logout Utente
- *Descrizione:* Verificare funzionalità logout dal sistema.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-97d57106-2823-42a4-a2e9-1fd2ea80b8f8`.
- *Processo:*
  + Logout con Supervisore non autenticato;
  + Logout di un Supervisore;
- *Risultato atteso:* Logout effettuato con successo.
- *Esito:* #text(green,"PASSATO")

== TdA-06
- *Identificativo:* TdA-06
- *Titolo del test:* Registrazione Supervisore Locale 
- *Descrizione:* Verificare funzionalità di registrazione di un nuovo Supervisore Locale con dati corretti.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-720032e1-b087-437a-a233-719820a0c2e5`.
- *Processo:*
  + Registrazione di un nuovo Supervisore Locale;
- *Risultato atteso:* Nuovo Supervisore Locale registrato correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-07
- *Identificativo:* TdA-07
- *Titolo del test:* Errori Registrazione Supervisore Locale
- *Descrizione:* Verificare che alla registrazione del Supervisore Locale vengano gestiti gli errori di inserimento dati.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-e17c10a6-7cd6-4f7f-975b-a1902da699a1`.
- *Processo:*
  + Registrazione di un Supervisore Locale con email errata; \
  + Registrazione di un Supervisore Locale con password errata; \
  + Registrazione di un Supervisore Locale con cellulare sintatticamente errato; \
  + Registrazione di un Supervisore Locale con parametro mancante (cognome); \
  + Registrazione di un Supervisore Locale con wharehouseId errato; \
- *Risultato atteso:* Visualizzazione errori di inserimento nel momento di registrazione di un nuovo Supervisore Locale.
- *Esito:* #text(green,"PASSATO")

== TdA-08
- *Identificativo:* TdA-08
- *Titolo del test:* Assegnazione Magazzini
- *Descrizione:* Verificare l’assegnazione dei magazzini a un Supervisore Locale.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Registrazione Supervisore Locale;
  + Logout come Supervisore Globale;
  + Login come Supervisore Locale.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-ed141d34-fa3a-41e5-b64b-f7d620eb3ddd`.
- *Processo:*
  + Verifica accesso al Magazzino 1;
  + Verifica accesso al Magazzino 2;
- *Risultato atteso:* Il Supervisore Globale riesce ad accedere ai magazzini a lui assegnati.
- *Esito:* #text(green,"PASSATO")

== TdA-09
- *Identificativo:* TdA-09
- *Titolo del test:* Aggiunta Magazzino
- *Descrizione:* Verificare l’aggiunta di un nuovo magazzino con indirizzo valido.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-71140295-16ac-4838-809c-312e65efcddf`.
- *Processo:*
  + Aggiunta di un nuovo magazzino;
- *Risultato atteso:* Nuovo magazzino aggiunto con indirizzo valido.
- *Esito:* #text(green,"PASSATO")

== TdA-10
- *Identificativo:* TdA-10
- *Titolo del test:* Modifica Magazzino
- *Descrizione:* Verificare la modifica dei dati di un magazzino.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta di un nuovo magazzino.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-556f9785-a851-4938-ad87-59407da3e261`.
- *Processo:*
  + Aggiornamento informazioni del magazzino;
- *Risultato atteso:* Dati di un magazzino modificati correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-11
- *Identificativo:* TdA-11
- *Titolo del test:* Inserimento Merce
- *Descrizione:* Verificare l’inserimento di una nuova merce con dati corretti.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Registrazione nuovo Supervisore Locale;
  + Logout Supervisore Globale;
  + Login come Supervisore Locale.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-59a7db71-5576-482f-bc69-3ce1777f03c5`.
- *Processo:*
  + Aggiunta nuova tipologia di merce;
  + Ottenere informazioni sulle merci disponibili;
- *Risultato atteso:* Inserimento di una nuova merce effettuato correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-12
- *Identificativo:* TdA-12
- *Titolo del test:* Modifica Quantità Merce
- *Descrizione:* Verificare la definizione e la modifica della quantità di una merce.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Registrazione nuovo Supervisore Locale;
  + Logout Supervisore Globale;
  + Login come Supervisore Locale.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-0f81c552-8d30-40f1-a113-dc6a30384218`.
- *Processo:*
  + Aggiunta nuova tipologia di merce;
  + Ottenere informazioni sulle merci disponibili;
  + Modificare quantità merce appena aggiunta;
  + Ottenere informazioni quantità sulla merce appena modificata;
- *Risultato atteso:* Quantità di merce modificata correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-13
- *Identificativo:* TdA-13
- *Titolo del test:* Rimozione Merce
- *Descrizione:* Verificare la rimozione di una merce dall’inventario.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Registrazione nuovo Supervisore Locale;
  + Logout Supervisore Globale;
  + Login come Supervisore Locale.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-3aa88988-fc47-45eb-ab2c-e86ca85da7eb`.
- *Processo:*
  + Aggiunta nuova tipologia di merce;
  + Ottenere informazioni sulle merci disponibili;
  + Eliminare tipologia di merce;
  + Ottenere informazioni sulle tipologie di merci disponibili, dopo la rimozione.
- *Risultato atteso:* Tipo di merce rimossa dall'inventario.
- *Esito:* #text(green,"PASSATO")

== TdA-14
- *Identificativo:* TdA-14
- *Titolo del test:* Inserimento Ordine Interno
- *Descrizione:* Verificare l’inserimento di un ordine interno (trasferimento tra magazzini).
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48206755-6358d821-7469-4a1f-9663-a332b59e291a`.
- *Processo:*
  + Inserimento di ordine interno (trasferimento tra magazzini);
  + Ottenere informazioni sulle merci disponibili nel Magazzino 1;
  + Ottenere informazioni sulle merci disponibili nel Magazzino 2;
- *Risultato atteso:* Ordine interno (trasferimento tra magazzini) inserito correttamente. Quantità merce decrementata nel magazzino 1 e aumentata nel magazzino 2.
- *Esito:* #text(green,"PASSATO")

== TdA-15
- *Identificativo:* TdA-15
- *Titolo del test:* Inserimento Ordine Esterno
- *Descrizione:* Verificare l’inserimento di un ordine di vendita esterno.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta merce in Magazzino 1.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48206755-c109561e-e7d6-44ae-a40f-1ce551ad6a62`.
- *Processo:*
  + Aggiunta di merce nel Magazzino 1;
  + Inserimento ordine di vendita;
  + Ottenere informazioni su ordine di vendita inserito;
  + Ottenere informazioni sulle merci disponibili nel Magazzino 1;
- *Risultato atteso:* Ordine di vendita inserito correttamente. Quantità merce decrementata correttamente dal magazzino 1.
- *Esito:* #text(green,"PASSATO")

== TdA-16
- *Identificativo:* TdA-16
- *Titolo del test:* Annullamento Ordini
- *Descrizione:* Verificare l’annullamento degli ordini in attesa o in elaborazione.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48206755-0fdf004a-7631-4c1d-a1fa-da4c5f977739`.
- *Processo:*
  + Inserimento di ordine interno (trasferimento tra magazzini);
  + Ottenere informazioni sullo stato dell'ordine;
  + Ottenere informazioni sulle merci disponibili nel Magazzino 1;
  + Ottenere informazioni sulle merci disponibili nel Magazzino 2;
- *Risultato atteso:* Ordini in attesa o in elaborazione annullati correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-17
- *Identificativo:* TdA-17
- *Titolo del test:* Gestione Stati Ordini
- *Descrizione:* Verificare il tracciamento e la corretta gestione degli stati degli ordini.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta ulteriore merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2;
  + Aggiunta ulteriore merce in Magazzino 2;
  + Aggiunta ulteriore merce in Magazzino 2;
  + Aggiunta ordine interno (trasferimento tra magazzini);
  + Aggiunta di un altro ordine interno (trasferimento tra magazzini);
  + Aggiunta ordine di vendita.
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-f834efac-afbf-4ae3-b57b-412ca00d716a`.
- *Processo:*
  + Ottenere informazioni sullo stato dell'ordine interno (trasferimento tra magazzini) 1;
  + Ottenere informazioni sullo stato dell'ordine interno (trasferimento tra magazzini) 2;
  + Ottenere informazioni sullo stato dell'ordine di vendita;
- *Risultato atteso:* Ottenuto stato degli ordini corretto.
- *Esito:* #text(green,"PASSATO")

== TdA-18
- *Identificativo:* TdA-18
- *Titolo del test:* Visualizzazione Inventario
- *Descrizione:* Verificare la visualizzazione dell’inventario globale e per singolo magazzino.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Registrazione nuovo Supervisore Locale 1;
  + Registrazione nuovo Supervisore Locale 2;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta ulteriore merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2;
  + Aggiunta ulteriore merce in Magazzino 2;
  + Aggiunta ulteriore merce in Magazzino 2;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-c71e13e4-d581-40d4-831c-0b436836fe37`.
- *Processo:*
  + Visualizzazione inventario locale del Magazzino 1;
  + Visualizzazione inventario locale del Magazzino 2;
  + Visualizzazione inventario globale;
  + Visualizzazione inventario globale aggregato;
- *Risultato atteso:* Visulizzazione corretta dell'inventario globale e dei singoli magazzini. Le quantità corrisponono correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-19
- *Identificativo:* TdA-19
- *Titolo del test:* Visualizzazione Report Ordini
- *Descrizione:* Verificare la visualizzazione dei report ordini globali e per singolo magazzino.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta ulteriore merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2;
  + Aggiunta ordine interno;
  + Aggiunta di un ulteriore ordine interno (trasferimento tra magazzini);
  + Aggiunta di un ulteriore ordine interno (trasferimento tra magazzini);
  + Aggiunta di un ordine di vendita;
  + Aggiunta di un ulteriore ordine di vendita;
  + Aggiunta di un ulteriore ordine di vendita;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48219992-9544daf6-cd43-4b37-bfd3-06aa62a63a2e`.
- *Processo:*
  + Visualizzazione report ordini del Magazzino 1;
  + Visualizzazione report ordini del Magazzino 2;
  + Visualizzazione report ordini (cloud) di tutti i magazzini;
- *Risultato atteso:* Visualizzazione corretta del report ordini.
- *Esito:* #text(green,"PASSATO")

== TdA-20
- *Identificativo:* TdA-20
- *Titolo del test:* Modifica Soglie Critiche
- *Descrizione:* Verificare la modifica dei valori di soglia minima e massima.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48219992-bc457ed4-a383-48e4-a874-c188801bf08f`.
- *Processo:*
  + Visualizzazione merce nell'inventario locale del Magazzino 1;
  + Visualizzazione merce nell'inventario locale del Magazzino 2;
  + Aggiornamento soglia di un prodotto del Magazzino 1;
  + Aggiornamento soglia di un prodotto del Magazzino 2;
  + Visualizzazione inventario locale del Magazzino 1 dopo aggiornamento soglia di un prodotto;
  + Visualizzazione inventario locale del Magazzino 2 dopo aggiornamento soglia di un prodotto;
- *Risultato atteso:* Valori di soglia minima e massima modificati correttamente
- *Esito:* #text(green,"PASSATO")

== TdA-21
- *Identificativo:* TdA-21
- *Titolo del test:* Gestione Magazzini Offline/Online
- *Descrizione:* Verificare la gestione dei magazzini online/offline.
- *Procedura di esecuzione:*
  + Eseguire il comando `newman run https://www.postman.com/collections/46314242-3124d581-f801-41bb-91c6-c6f17a723441`.
- *Processo:*
  - Per verificare la gestione dei magazzini online/offline, seguire questi passaggi:
    + Eseguire la registrazione del Supervisore Globale;
    + Eseguire il login del Supervisore Globale;
    + Aggiungere due nuovi magazzini al sistema;
    + Dopo questo passaggio, sarà possibile vedere dai log dei microservizi di Stalo locale e aggregato che avviene un controllo periodico dello stato dei magazzini (online/offline);
    + Impostare uno dei due magazzini come offline (ad esempio chiudendo il container Docker, così da simulare un guasto);
    + Il magazzino sarà impostato come offline dopo il timeout di 10 secondi (per testing);
    + A questo punto, il cambiamento di stato del magazzino sarà riportato anche nel servizio di Routing;
    + Quando il magazzino torna online (ad esempio riavviando il container Docker), il sistema lo rileverà automaticamente e aggiornerà lo stato nel servizio di Routing;
- *Risultato atteso:* Visualizzazione gestione magazzini online/offline corretta.
- *Esito:* #text(green,"PASSATO")
- *Note:* Per visualizzare i log dei microservizi, usare il comando `docker logs -f <nome_container>`. 

== TdA-22
- *Identificativo:* TdA-22
- *Titolo del test:* Riassortimento Automatico Ordine
- *Descrizione:* Verificare il riassortimento automatico in caso di ordine non soddisfacibile.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta di un Magazzino 1 nel sistema di routing;
  + Aggiunta di un ulteriore Magazzino 2 nel sistema di routing;
  + Aggiunta di un ulteriore Magazzino 3 nel sistema di routing;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2;
  + Inserimento ordine di vendita;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48219992-0dc600df-28c7-4287-9c05-a863c28953c7`.
- *Processo:*
  + Inserimento nuovo ordine di vendita;
  + Visualizzazione ordini del Magazzino 1 dopo il processo di inserimento ordine;
  + Visualizzazione ordini del Magazzino 2 dopo il processo di inserimento ordine;
  + Visualizzazione ordini (cloud) di tutti i magazzini (aggregato);
- *Risultato atteso:* Il riassortimento automatico funziona in caso di ordine non soddisfacibile.
- *Esito:* #text(green,"PASSATO")

== TdA-23
- *Identificativo:* TdA-23
- *Titolo del test:* Riassortimento Soglia Minima
- *Descrizione:* Verificare il riassortimento automatico al raggiungimento della soglia minima di un prodotto.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta di un Magazzino 1 nel sistema di routing;
  + Aggiunta di un ulteriore Magazzino 2 nel sistema di routing;
  + Aggiunta di un ulteriore Magazzino 3 nel sistema di routing;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2;
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48219992-aa8a02ea-8028-4b6d-bc1a-4e70a1eb9d4e`.
- *Processo:*
  + Visualizzazione inventario Magazzino 1 prima del riassortimento;
  + Visualizzazione inventario Magazzino 2 prima del riassortimento;
  + Aggiunta ordine di vendita;
  + Visualizzazione inventario del Magazzino 1 dopo il riassortimento;
  + Visualizzazione inventario del Magazzino 2 dopo il riassortimento;
- *Risultato atteso:* Riassortimento automatico al raggiungimento della soglia minima di un prodotto funziona correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-24
- *Identificativo:* TdA-24
- *Titolo del test:* Riassortimento Soglia Massima
- *Descrizione:* Verificare il riassortimento automatico al raggiungimento della soglia massima di un prodotto.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta di un Magazzino 1 nel sistema di routing;
  + Aggiunta di un ulteriore Magazzino 2 nel sistema di routing;
  + Aggiunta di un ulteriore Magazzino 3 nel sistema di routing;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2;
  + Aggiunta ordine di vendita dal magazzino 1; _(per avere un oggetto in ordine aggregato.)_
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/48219992-0863d874-d052-4e2e-97ef-bba6663e6b33`.
- *Processo:*
  + Visualizzazione inventario Magazzino 1 prima del riassortimento;
  + Visualizzazione inventario Magazzino 2 prima del riassortimento;
  + Modifica Merce 1 nel Magazzino 1;
  + Visualizzazione inventario del Magazzino 1 dopo il riassortimento;
  + Visualizzazione ordini del Magazzino 2 dopo il riassortimento;
- *Risultato atteso:* Riassortimento automatico al raggiungimento della soglia massima di un prodotto funziona correttamente.
- *Esito:* #text(green,"PASSATO")

== TdA-25
- *Identificativo:* TdA-25
- *Titolo del test:* Gestione Conflitti Ordini Simultanei
- *Descrizione:* Verificare la corretta gestione di ordini simultanei da parte di un magazzino.
- *Prerequisito:*
  + Registrazione Supervisore Globale;
  + Login come Supervisore Globale;
  + Aggiunta merce in Magazzino 1;
  + Aggiunta merce in Magazzino 2;
  + Inserimento di ordine interno (trasferimento tra magazzini);
  + Inserimento di un ulteriore ordine interno (trasferimento tra magazzini);
- *Procedura di esecuzione:* Eseguire il comando `newman run https://www.postman.com/collections/46314414-b592467c-b6a6-4557-9634-b4764a25d63e`.
- *Processo:*
  + Ottenere informazioni sulle merci disponibili nel Magazzino 1;
  + Ottenere informazioni sulle merci disponibili nel Magazzino 2;
  + Visualizzazione Stato ordini (1);
  + Visualizzazione Stato ordini (2);
- *Risultato atteso:* Gestione corretta di ordini simultanei in un magazzino.
- *Esito:* #text(green,"PASSATO")
 
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
    [*TdA-14*],[Inserimento Ordine Interno.],[#text(green,"PASSATO")],
    [*TdA-15*],[Inserimento Ordine Esterno.],[#text(green,"PASSATO")],
    [*TdA-16*],[Annullamento Ordini.],[#text(green,"PASSATO")],
    [*TdA-17*],[Gestione Stati Ordini.],[#text(green,"PASSATO")],
    [*TdA-18*],[Visualizzazione Inventario.],[#text(green,"PASSATO")],
    [*TdA-19*],[Visualizzazione Report Ordini.],[#text(green,"PASSATO")],
    [*TdA-20*],[Modifica Soglie Critiche.],[#text(green,"PASSATO")],
    [*TdA-21*],[Gestione Magazzini Offline/Online.],[#text(green,"PASSATO")],
    [*TdA-22*],[Riassortimento Automatico Ordine.],[#text(green,"PASSATO")],
    [*TdA-23*],[Riassortimento Soglia Minima.],[#text(green,"PASSATO")],
    [*TdA-24*],[Riassortimento Soglia Massima.],[#text(green,"PASSATO")],
    [*TdA-25*],[Gestione Conflitti Ordini Simultanei.],[#text(green,"PASSATO")],
  ),
  caption: [Elenco dei test di accettazione e relativo esito.],
)