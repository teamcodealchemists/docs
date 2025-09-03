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

#let titolo = "Test di Accettazione"
#let status = "Approvato"
#let destinatario = "M31"
#let versione = "2.0.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  "M31"
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [2.0.0],
  [04/09/2025],
  [_M31_],
  [-],
  [Approvazione del documento da parte di _M31_.],
  
  [1.0.0],
  [03/09/2025],
  [R. Zangla],
  [N. Moretto],
  [Approvazione interna del documento.],

  [0.1.0],
  [03/09/2025],
  [N. Bolzon],
  [N. Moretto],
  [Inserimento Test di Accettazione.],
  
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

#show: firma.with(
  destinatario: destinatario
)

= Introduzione
== Scopo del documento
Il presente documento definisce i *Test di Accettazione* predisposti per l’MVP _(Minimum Viable Product)_#super[G], con l’obiettivo di verificare il soddisfacimento dei requisiti funzionali e non funzionali obbligatori previsti dal capitolato. I test costituiscono la base per la validazione formale del prodotto da parte del cliente.

== Campo di applicazione
Il documento si applica al processo di validazione del prodotto sviluppato, con riferimento specifico ai requisiti individuati nel capitolato. I test descritti in questo documento devono essere eseguiti e superati come condizione necessaria per l’accettazione del prodotto da parte di _M31_.

== Criteri di Accettazione
- Non saranno accettati Test Book contenenti *errori critici*.
- È tollerata una quota massima del *5% di test non critici falliti* (es. 2 su 30), a condizione che vengano corretti prima della consegna definitiva.
- Il numero complessivo dei test dovrà garantire la fruibilità del sistema e la copertura delle funzionalità principali.

= Guida alla configurazione e all'esecuzione dei test
Questa sezione del documento dichiara le istruzioni necessarie che verranno utilizzate per configurare l’ambiente di test e per eseguire i casi di test definiti nella sezione seguente. L’obiettivo è chiarire il "_modus operandi"_ dei test e affinchè venga eseguito in un ambiente controllato e riproducibile, riducendo al minimo errori dovuti a configurazioni locali o dati residui. La guida copre la clonazione del progetto, l’avvio dei servizi tramite Docker Compose, il reset dell’ambiente e l’esecuzione dei test tramite Postman.

== Clonare la repository
1. Aprire un terminale e spostarsi nella cartella di lavoro desiderata, ad esempio:
#align(center)[`cd ~/workspace`]

2. Clonare la repository del progetto:
#align(center)[`git clone https://github.com/teamcodealchemists/MVP.git`]

3. Entrare nella cartella del progetto appena clonata:
#align(center)[`cd MVP`]

== Avviare Docker Compose
1. Avviare i servizi del progetto in background:
#align(center)[`docker compose up --build -d`]

2. Verificare che i container siano attivi:
#align(center)[`docker ps`]

== Resettare l’ambiente ad ogni test
Per ripartire da zero e resettare i volumi:
1. Fermare i container e rimuovere i volumi:
#align(center)[`docker compose down`]

2. Ricreare l’ambiente da zero:
#align(center)[`docker compose up --build -d`]

_*Nota:* Questo procedimento ferma i container, rimuove i volumi e ricrea l’ambiente da zero._ \
\

== Eseguire i test con Postman
1. Aprire Postman \
  1.1 Usare l’estensione di VsCode _(Il nostro strumento principale)_.\
  1.2 Usare il sito e l’agent di Postman locale.
2. Importare o creare il workspace fornito dal team di progetto.
3. Selezionare il test da eseguire _(esempio: registrazione, login, gestione magazzini, ecc.)_.
4. Leggere la documentazione del test.
5. Eseguire la collection del test.
6. Verificare la risposta mostrata da Postman confrontandola con i risultati attesi indicati nei casi di test o il controllo automatico di Postman.

= Elenco Test di Accettazione
#show figure: set block(breakable: true)
#set table.cell(breakable: true)

#set table(
  fill: (x, y) => if y == 0 {gray} else if x == 0 {luma(235)},
  align: (x, _) => if x <= 1 {center} else {left},
)

#figure(
  table(
  columns: (1fr, 2fr, 4fr),
  inset: 10pt,
  table.header(
    [*ID Test*], [*Area Funzionale*], [*Obiettivo del Test*]
  ),
    [*TdA01*],[Registrazione \ Supervisore Globale],[Verificare che all’avvio del sistema il supervisore globale possa registrarsi con successo.],
    [*TdA02*],[Registrazione \ Supervisore Globale],[Verificare che alla registrazione del supervisore globale vengano gestiti gli errori di inserimento dati.],
    [*TdA03*],[Autenticazione \ Utente],[Verificare la funzionalità di login con le credenziali corrette.],
    [*TdA04*],[Autenticazione \ Utente],[Verificare che al login dell’utente vengano gestiti gli errori di inserimento dati.],
    [*TdA05*],[Autenticazione \ Utente],[Verificare funzionalità logout dal sistema.],
    [*TdA06*],[Registrazione \ Supervisore Locale],[Verificare funzionalità di  registrazione di un nuovo Supervisore Locale con dati corretti.],
    [*TdA07*],[Registrazione \ Supervisore Locale],[Verificare che alla registrazione del supervisore locale vengano gestiti gli errori di inserimento dati.],
    [*TdA08*],[Registrazione \ Supervisore Locale],[Verificare l’assegnazione dei magazzini a un Supervisore Locale.],
    [*TdA09*],[Gestione \ Magazzini],[Verificare l’aggiunta di un nuovo magazzino con indirizzo valido.],
    [*TdA10*],[Gestione \ Magazzini],[Verificare la modifica dei dati di un magazzino.],
    [*TdA11*],[Gestione \ Merci],[Verificare l’inserimento di una nuova merce con dati corretti.],
    [*TdA12*],[Gestione \ Merci],[Verificare la definizione e la modifica della quantità di una merce.],
    [*TdA13*],[Gestione \ Merci],[Verificare la rimozione di una merce dall’inventario.],
    [*TdA14*],[Gestione \ Ordini],[Verificare l’inserimento di un ordine interno (trasferimento tra magazzini).],
    [*TdA15*],[Gestione \ Ordini],[Verificare l’inserimento di un ordine di vendita esterno.],
    [*TdA16*],[Gestione \ Ordini],[Verificare l’annullamento degli ordini in attesa o in elaborazione.],
    [*TdA17*],[Gestione \ Ordini],[Verificare il tracciamento e la corretta gestione degli stati degli ordini.],
    [*TdA18*],[Auditing \ e Report],[Verificare la visualizzazione dell’inventario globale e per singolo magazzino.],
    [*TdA19*],[Auditing \ e Report],[Verificare la visualizzazione dei report ordini globali e per singolo magazzino.],
    [*TdA20*],[Gestione \ Soglie Critiche],[Verificare la modifica dei valori di soglia minima e massima.],
    [*TdA21*],[Gestione Disservizi \ e Stati Magazzino],[Verificare la gestione dei magazzini online/offline, annullamento ordini interni da offline e riattivazione.],
    [*TdA22*],[Gestione \ Riassortimento],[Verificare il riassortimento automatico in caso di ordine non soddisfacibile.],
    [*TdA23*],[Gestione \ Riassortimento],[Verificare il riassortimento automatico al raggiungimento della soglia minima di un prodotto.],
    [*TdA24*],[Gestione \ Riassortimento],[Verificare il riassortimento automatico al raggiungimento della soglia massima di un prodotto.],
    [*TdA25*],[Gestione Conflitti \ Ordini Simultanei],[Verificare la corretta gestione di ordini simultanei da parte di un magazzino.],
  ),
  caption: [Elenco dei test di accettazione previsti],
)

= Approvazione esterna
  A seguito dell’approvazione interna da parte del _Team Code Alchemists_, si attesta che il presente documento, relativo ai *Test di Accettazione* del MVP _(Minimum Viable Product)_#super[G], è stato esaminato e approvato dai rappresentanti di M31.

  L’approvazione si intende formalmente valida con l’apposizione della firma di almeno un rappresentante ufficiale dell’azienda, quale conferma del consenso e dell’adesione ai contenuti del documento.
