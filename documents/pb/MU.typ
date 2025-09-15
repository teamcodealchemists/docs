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

#let titolo = "Manuale Utente"
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
  [12/09/2025],
  [R. Zangla],
  [-],
  [Approvazione interna del documento.],

  [0.1.0],
  [12/09/2025],
  [N. Bolzon],
  [R. Zangla],
  [Inserimento contenuto del documento.],
  
  [0.0.1],
  [08/09/2025],
  [N. Bolzon],
  [R. Zangla],
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
  Lo scopo di questo documento è di riportare le istruzioni per installare correttamente l'applicativo, spiegarne lo scopo generale e illustrare le funzionalità implementate al suo interno.

  == Scopo dell'applicativo
  Il sistema sviluppato consiste in una piattaforma centralizzata per la gestione ottimizzata e in tempo reale di inventari distribuiti di magazzini che ricevono ordini di vendita verso l'esterno. Esso è specializzato nel prevenire le rotture di stock e bilanciare dinamicamente le scorte tra magazzini geograficamente dislocati, garantendo la continuità operativa delle operazioni di vendita di merce.
  Inoltre, il sistema mitiga i rischi di interruzione (es. indisponibilità di un magazzino) e ottimizza la distribuzione della merce tra i vari magazzini, mantenendo comunque adeguate scorte di sicurezza. 

  == Glossario
  // Importanza di avere un glossario, link per rimandare al glossario e nomenclatura con cui si trovano le parole consultabili nel Glossario (la G in apice)
  Al fine di garantire chiarezza ed evitare incomprensioni, è stato realizzato un glossario (consultabile all'indirizzo #underline[#link("https://teamcodealchemists.github.io/docs/glossario/Gls_1.0.0.pdf")]) contenente le definizioni dei vari termini tecnici e concetti specifici del progetto. Tali parole consultabili nel Glossario vengono contrassegnate nel documento con una G in apice (ad es., "autenticazione#super[G]").


  == Riferimenti 
    === Riferimenti normativi 
    // Link al regolamento del progetto didattico
    Regolamento del progetto didattico: \
    #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T01.pdf")] \

    === Riferimenti informativi
    // Link al capitolato del progetto
    Capitolato C6: Sistema di Gestione di un Magazzino Distribuito \
    #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")] \

    Glossario: \
    #underline[#link("https://teamcodealchemists.github.io/docs/glossario/Gls_1.0.0.pdf")] \
    
  = Requisiti di sistema      
    == Requisiti hardware
    I requisiti hardware per l'installazione e l'esecuzione del sistema sono i seguenti:
    #figure(
      table(
        columns: (auto, auto),
        inset: 10pt,
        align: center,
        table.header(
          [*Componente*], [*Requisito minimo*]
        ),
        ["Processore"], [Quad-core 2.0 GHz o superiore],
        ["RAM"], [8 GB o superiore],
        ["Spazio su disco"], [20 GB di spazio libero o superiore],
        ["Connessione di rete"], [Connessione Internet stabile per la corretta esecuzione del sistema e per  l'accesso ai servizi cloud.]
      ), caption: "Requisiti hardware minimi per il sistema"
    )

    == Requisiti software
    In merito al Sistema Operativo, le componenti del sistema non presentano particolari vincoli e possono essere installate su qualsiasi sistema operativo moderno (Windows, macOS, Linux), in quanto il sistema si appoggia completamente a *Docker* per l'esecuzione dei vari servizi. \

    Per assicurare quindi il corretto funzionamento del sistema, è necessario che il sistema operativo supporti *Docker* e che quest'ultimo sia installato. \

    Di seguito è riportata una tabella con le versioni minime richieste per i vari software necessari al funzionamento del sistema:
    
    #figure(
      table(
        columns: (auto, auto),
        inset: 10pt,
        align: center,
        table.header(
          [*Software*], [*Versione minima richiesta*]
        ),
        ["Docker"], [>= 22.16.0],
        ["Docker Compose"], [>= 2.37.x],
        ["Ambiente Docker"], [node:22-alpine],
        ["Node.js"], [>= 22.16.0],
        ["npm"], [>= 9.x]
      ), caption: "Requisiti software minimi per il sistema"
    )
    

  
  = Installazione del sistema
    == Clonazione della repository 
    Per ottenere il codice sorgente del sistema, è necessario clonare la repository GitHub del progetto. Questo può essere fatto utilizzando il comando git clone seguito dall'URL della repository. \
    Esempio di comando:
    ```
    git clone https://github.com/teamcodealchemists/MVP.git
    ```

    Dopodiché, è necessario navigare nella cartella del progetto clonata utilizzando il comando cd:
    ```
    cd MVP
    ```


    == Preparazione del sistema


    == Configurazione // non so se serve?

    == Avvio del sistema
    === Avviare Docker
    Avviare *Docker Desktop*, o *Docker Engine* a seconda del sistema operativo in uso.

    === Avviare Docker Compose
    Per avviare il sistema, è necessario eseguire il comando docker compose up --build -d dalla cartella principale del progetto (dove è presente il file docker-compose.yml):
    ```
    docker compose up --build -d
    ```

    In questo modo, *Docker Compose* costruirà le immagini dei vari servizi (se non sono già state costruite) e avvierà i container in modalità detached (in background).
    Per verificare che i container siano stati avviati correttamente, è possibile utilizzare il comando:
    ```
    docker ps
    ```
    Questo comando mostrerà una lista dei container in esecuzione. Assicurarsi che tutti i container necessari siano presenti e in stato "Up".

    Da questo momento, il sistema è avviato e funzionante. 

    == Spegnimento
    Per arrestare il sistema, è possibile eseguire il comando docker compose down dalla cartella principale del progetto:
    ```
    docker compose down
    ```
    Questo comando arresterà e rimuoverà i container, le reti e i volumi creati da *Docker Compose*.

    == Ripristino
    In caso di problemi con il sistema, è possibile eseguire il comando docker compose down dalla cartella principale del progetto per arrestare e rimuovere i container, le reti e i volumi creati da *Docker Compose*:
    ```
    docker compose down
    ```
    Successivamente, è possibile riavviare il sistema eseguendo nuovamente il comando docker compose up --build -d.
    In caso di problemi persistenti, è possibile eliminare i volumi associati ai container utilizzando il comando:
    ```
    docker compose down -v
    ```
    Questo comando rimuoverà anche i volumi, permettendo un ripristino completo del sistema. Tuttavia, si noti che l'eliminazione dei volumi comporta la perdita di tutti i dati memorizzati nei volumi stessi.


  = Funzionalità implementate
    == Gestione di magazzini
      === Creazione di un magazzino

      === Visualizzazione dello stato di un magazzino
      
      === Visualizzazione dello stato di tutti i magazzini presenti in rete

    == Gestione prodotti
      === Inserimento prodotti in un Inventario

      === Visualizzazione dati di un singolo prodotto

      === Rimozione prodotti da un Inventario
      
      === Modifica quantità disponibile di un prodotto da un Inventario

      === Modifica prezzo unitario di un prodotto

      === Modifica dei valori di soglia minima e soglia massima di un tipo di prodotto per un magazzino

      === Visualizzazione dei prodotti presenti in un magazzino
      
      === Visualizzazione di tutti i prodotti presenti in rete

    == Gestione ordini
      === Creazione di un nuovo ordine interno
      
      === Creazione di un nuovo ordine di vendita

      === Visualizzazione dati di un singolo ordine

        ==== Visualizzazione dello stato attuale di un ordine

      === Visualizzazione di tutti gli ordini in uno specifico magazzino

      === Visualizzazione di tutti gli ordini presenti in rete

      === Annullamento di un ordine

      === Meccanismo di riassortimento automatico

      === Trasferimento merce nel caso di violazione soglia minima o soglia massima


  = Esecuzione Test
    == Test di unità e di integrazione
    I test di unità e di integrazione sono stati eseguiti utilizzando il framework *Jest*. \
    I test sono stati organizzati in file separati per ciascun modulo del sistema e sono eseguibili tramite il comando:
    ```
    npm run test
    ```

    Le informazioni riguardanti l'esecuzione dei test di unità e di integrazione sono consultabili nel *Piano di Qualifica*.

    Per verificare la copertura del codice, è possibile eseguire il comando:
    ```
    npm run test:cov
    ```
    Questo comando genererà un report di copertura del codice per il modulo testato.

    La copertura totale del codice è consultabile dal *README.md* della pagina di _GitHub_ del *MVP*: tramite _CodeCov_ è stato inserito un badge che riporta la percentuale di copertura totale del codice.

    == Test di accettazione
    In accordo con *M31*, è stato stilato un *TestBook* contenente una serie di test di accettazione volti a verificare il corretto funzionamento del sistema secondo le specifiche concordate. \
    Il *TestBook* è consultabile all'indirizzo #underline[#link("https://daconfermare")].

    I test di accettazione sfruttano NATS e sono eseguibili tramite *Postman*. \
    Poiché Postman richiede una versione a pagamento per poter essere eseguito in modalità automatica, abbiamo deciso di eseguire i test tramite *Newman*, un tool da linea di comando che permette di eseguire le collezioni di Postman. \
    Per eseguire i test di accettazione, è necessario installare *Newman* globalmente tramite npm:
    ```
    npm install -g newman
    ```
    Successivamente, è possibile eseguire i test utilizzando il comando:
    ```
    newman run https://www.postman.com/collections/<collection-id>
    ```
    _*Nota:* Si può anche usare l'opzione *--verbose* per ottenere più informazioni sul ritorno delle richieste._

    Le informazioni riguardanti l'esecuzione dei test di accettazione sono consultabili nel *TestBook*.

  = Telemetria
  // inserire sottosezioni

  // Alla fine c'è un riquadro per la firma di M31, deve essere integrata