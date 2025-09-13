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

#let titolo = "Piano di Qualifica"
#let status = "In redazione"
#let destinatario = "M31"
#let versione = "1.2.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */

  [1.2.0],
  [18/08/2025],
  [N. Bolzon],
  [M. Dalla Pozza],
  [Aggiornamento dati dei grafici "valutazione dei costi" e "grafico valore atteso ed effettivo" realativi allo Sprint 10.],

  [1.1.0],
  [01/08/2025],
  [N. Bolzon],
  [S. Marana],
  [Aggiornamento dati dei grafici "valutazione dei costi" e "grafico valore atteso ed effettivo" realativi allo Sprint 9.],

  [1.0.0],
  [17/07/2025],
  [-],
  [N. Bolzon],
  [Verifica e Validazione del Documento],

  [0.5.0],
  [16/07/2025],
  [S. Marana],
  [N. Bolzon],
  [Aggiunta test di sistema e grafici del Cruscotto di Valutazione],

  [0.4.0],
  [14/07/2025],
  [N. Moretto],
  [N. Bolzon],
  [Aggiunta sezione 5 e relativi grafici],

  [0.3.0],
  [10/07/2025],
  [S. Marana \ N. Moretto],
  [N. Bolzon],
  [Aggiunta sezione 3 e relative metriche di qualità per il prodotto#super[G] software],

  [0.2.0],
  [27/05/2025],
  [S. Marana],
  [R. Zangla],
  [Aggiunta delle tabelle di continuo miglioramento e delle metriche di qualità per il processo di sviluppo],

  [0.1.0],
  [10/05/2025],
  [S. Marana],
  [N. Moretto],
  [Compilazione base del Documento e creazione tabelle],
  
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
#show: indice_tabelle
#show: indice_grafici

= 1. Introduzione
== 1.1 Scopo del documento

Il presente documento ha lo scopo di definire le modalità di qualifica e verifica del prodotto software. Esso rappresenta un indice di valutazione del prodotto software, delle sue componenti e degli strumenti utilizzati. L'obiettivo è quello di garantire la qualità del prodotto finale.

Il Piano di Qualifica#super[G] si basa su tre aspetti principali:

=== 1.1.1 Piano della Qualità
- Fissare gli standard del prodotto e i tipi di test da effettuare;
- Indicare gli obiettivi e le modalità di qualifica;
- Stabilire le regole a cui attenersi.

=== 1.1.2 Controllo di Qualità
- Attuare e assicurare la conformità con le regole da seguire e il Way of Working#super[G] ;
- L'operato viene monitorato attraverso il Cruscotto di Valutazione;
- Effettuare il Quality Assurance passo-passo per prevenire e mitigare i rischi e verificare la soddisfazione dei requisiti#super[G].

== 1.2 Glossario
Per una corretta comprensione del documento, viene fornito un glossario#super[G] dei termini utilizzati. Ogni termine è indicato da una "#super[G]" in apice alla parola.
Per trovare il significato del termine, è possibile consultare il glossario#super[G] al seguente indirizzo: 
#underline[#link("https://teamcodealchemists.github.io/glossario.html")]\
== 1.3 Riferimenti

=== 1.3.1 Riferimenti normativi  

- *Capitolato#super[G] d'appalto* \
  *C6 - Sistema di Gestione di un Magazzino Distribuito* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")]
  \ *Ultimo Accesso:* 17 Luglio 2025

=== 1.3.2 Riferimenti informativi

- *Qualità del software* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")]
  \ *Ultimo Accesso:* 17 Luglio 2025


- *Qualità del processo* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")]
  \ *Ultimo Accesso:* 17 Luglio 2025

- *Verifica#super[G] e Validazione#super[G]* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf")]
  \ *Ultimo Accesso:* 17 Luglio 2025
  \ #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf")]
  \ *Ultimo Accesso:* 17 Luglio 2025
  \ #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf")]
  \ *Ultimo Accesso:* 17 Luglio 2025

- *Glossario#super[G]* \
  #underline[#link("https://teamcodealchemists.github.io/glossario.html")]
  \ *Ultimo Accesso:* 17 Luglio 2025

#pagebreak()

= 2. Qualità di Processo

La qualità di processo rappresenta l'insieme delle attività, delle metodologie e delle metriche adottate per garantire che lo sviluppo del prodotto#super[G] software avvenga secondo standard definiti e controllabili. L'obiettivo è assicurare che ogni fase del ciclo di vita del progetto sia pianificata, monitorata e migliorata in modo continuo.

Le metriche di qualità di processo permettono di:

- Valutare l'efficacia e l'efficienza delle attività svolte nei diversi processi (primari, di supporto e organizzativi);
- Monitorare il rispetto degli standard e delle procedure stabilite nel Piano della Qualità;
- Fornire indicatori oggettivi utili per individuare aree di miglioramento e prevenire eventuali criticità.

L'adozione di un approccio sistematico e quantitativo consente di ridurre la soggettività nelle valutazioni e di supportare decisioni basate su dati concreti.

== 2.1 Processi Primari

I processi primari sono quelli che riguardano direttamente la realizzazione del prodotto software. Essi comprendono le attività di fornitura e sviluppo.

È stato deciso di utilizzare la seguente nomenclatura per identificare in modo univoco le metriche di qualità:
- *PPF*: Processi Primari di Fornitura;
- *PPS*: Processi Primari di Sviluppo.
Per ogni categoria, i codici definiti precedentemente sono seguiti da un numero progressivo che identifica la metrica specifica.

=== 2.1.1 Fornitura

#let voci_tabella_fornitura = (
    [PPF01], [Valore atteso], [>= 0], [>= BAC],
    [PPF02], [Costo attuale], [>= 0], [>= EAC],
    [PPF03], [Valore effettivi], [>= 0], [>= EAC],
    [PPF04], [Indice di prestazione dei costi], [>= 0], [1],
    [PPF05], [Indice di prestazione dei tempi], [>= 0], [1],
    [PPF06], [Preventivo al completamento], [>= 0], [>= BAC],
    [PPF07], [Preventivo da completare], [>= 0], [>= BAC],
    [PPF08], [Tempo di completamento del preventivo], [>= 0], [<= Durata pianificata],

  )
#let caption_fornitura = (
  [Metriche di qualità per il processo di fornitura]
)
#show: qualifica_table.with(
  voci: voci_tabella_fornitura,
  caption: caption_fornitura
)
=== 2.1.2 Sviluppo
#let voci_tabella_sviluppo = (
    [PPS01], [Indice di stabilità dei requisiti#super[G]], [>= 70%], [100%],
  )
#let caption_sviluppo = (
  [Metriche di qualità per il processo di sviluppo]
)
#show: qualifica_table.with(
  voci: voci_tabella_sviluppo,
  caption: caption_sviluppo
)

== 2.2 Processi di Supporto
I processi di supporto sono quelli che non riguardano direttamente la realizzazione del prodotto software, ma che sono comunque necessari per il suo sviluppo. Essi comprendono le attività di documentazione, verifica e gestione della qualità.
I processi di supporto sono identificati dalla seguente nomenclatura:
- *PSD*: Processi di Supporto alla Documentazione;
- *PSV*: Processi di Supporto alla Verifica;
- *PSQ*: Processi di Supporto alla Qualità.
Per ogni categoria, i codici definiti precedentemente sono seguiti da un numero progressivo che identifica la metrica specifica.

=== 2.2.1 Documentazione

#let voci_tabella_documentazione = (
    [PSD01], [Indice di Gulpease], [>= 50%], [100%],
    [PSD02], [Parole#super[G] del glossario#super[G] contrassegnate con #super[G]], [>= 60%], [100%],
    [PSD03], [Glossario#super[G] ordinato], [ordinato], [ordinato],
  )
#let caption_documentazione = (
  [Metriche di qualità per il processo di documentazione]
)
#show: qualifica_table.with(
  voci: voci_tabella_documentazione,
  caption: caption_documentazione
)

=== 2.2.2 Verifica#super[G]

#let voci_tabella_verifica = (
    [PSV01], [Code Coverage], [>= 70%], [>= 80%],
    [PSV02], [Grado di successo dei test], [100%], [100%],
  )
#let caption_verifica = (
  [Metriche di qualità per il processo di verifica#super[G]]
)
#show: qualifica_table.with(
  voci: voci_tabella_verifica,
  caption: caption_verifica
)

=== 2.2.3 Gestione della Qualità

#let voci_tabella_qualità = (
    [PSQ01], [Metriche di qualità soddisfatte], [>= 70%], [100%]
  )
#let caption_qualità = (
  [Metriche di qualità per il processo di gestione della qualità]
)
#show: qualifica_table.with(
  voci: voci_tabella_qualità,
  caption: caption_qualità
)

== 2.3 Processi Organizzativi
I processi organizzativi sono quelli che riguardano la gestione del progetto e delle risorse. Essi comprendono le attività di pianificazione, monitoraggio#super[G] e controllo del progetto, gestione delle risorse umane e gestione dei fornitori.
I processi organizzativi sono identificati dalla seguente nomenclatura:
- *POG*: Gestione dei processi

Per ogni categoria, i codici definiti precedentemente sono seguiti da un numero progressivo che identifica la metrica specifica.
//in caso potremmo aggiungere altre metriche
=== 2.3.1 Gestione dei processi
#let voci_tabella_processi = (
    [POG01], [Efficienza in termini di tempo], [>= 60%], [100%],
  )
#let caption_processi = (
  [Metriche di qualità per il processo di gestione dei processi]
)
#show: qualifica_table.with(
  voci: voci_tabella_processi,
  caption: caption_processi
)

#pagebreak()
= 3 Qualità di Prodotto
La qualità di prodotto si riferisce alle caratteristiche e alle proprietà che rendono il software conforme alle aspettative degli stakeholder e agli standard prefissati. Essa viene valutata attraverso metriche oggettive che misurano aspetti come affidabilità, manutenibilità, efficienza e usabilità.

Punti chiave della qualità di prodotto:
- *Funzionalità*: capacità del software di fornire le funzioni richieste dagli utenti e di soddisfare i requisiti specificati nel documento di Analisi dei Requisiti#super[G].
- *Affidabilità*: capacità del software di funzionare senza errori in condizioni specificate per un periodo di tempo definito.
- *Manutenibilità*: facilità con cui il software può essere modificato per correggere difetti, migliorare prestazioni o adattarsi a nuovi requisiti.
- *Efficienza*: utilizzo ottimale delle risorse di sistema, come memoria e tempo di esecuzione.
- *Usabilità*: grado di facilità e soddisfazione con cui gli utenti possono utilizzare il prodotto.
- *Portabilità*: capacità del software di essere trasferito da un ambiente a un altro senza modifiche significative.

I tipi di processi di qualità di prodotto sono identificati dalla seguente nomenclatura:
- *QPF*: Qualità di Prodotto Funzionale;
- *QPA*: Qualità di Prodotto Affidabile;
- *QPM*: Qualità di Prodotto Manutenibile;
- *QPE*: Qualità di Prodotto Efficiente;
- *QPU*: Qualità di Prodotto Usabile;
- *QPP*: Qualità di Prodotto Portabile.
Per ogni categoria, i codici definiti precedentemente sono seguiti da un numero progressivo che identifica la metrica specifica.

== 3.1 Funzionalità

#let voci_tabella_prodotto_funzionale = (
    [QPF01], [Requisiti obbligatori soddisfatti], [100%], [100%],
    [QPF02], [Requisiti desiderabili soddisfatti], [>= 0%], [100%],
    [QPF03], [Requisiti opzionali soddisfatti], [>= 0%], [100%],
  )
#let caption_prodotto_funzionale = (
  [Metriche per la funzionalità del prodotto software]
)
#show: qualifica_table.with(
  voci: voci_tabella_prodotto_funzionale,
  caption: caption_prodotto_funzionale
)

== 3.2 Affidabilità

/*
  Branch coverage: percentuale di rami del codice coperti dai test.
  Statement coverage: percentuale di istruzioni eseguite almeno una volta dai test.
  Failure density: numero di guasti rilevati per funzione punto (FP) o per KLOC.
*/

#let voci_tabella_prodotto_affidabile = (
    [QPA01], [Branch coverage], [>= 70%], [>= 80%],
    [QPA02], [Statement coverage], [>= 70%], [>= 80%],
    [QPA03], [Failure density], [<= 0.5], [<= 0.1],
  )
#let caption_prodotto_affidabile = (
  [Metriche per l'affidabilità del prodotto software]
)
#show: qualifica_table.with(
  voci: voci_tabella_prodotto_affidabile,
  caption: caption_prodotto_affidabile
)

== 3.3 Manutenibilità
/*
  Cyclomatic complexity: misura la complessità del codice in base al numero di percorsi indipendenti.
  Code smell: indicatori di potenziali problemi nel codice che potrebbero influenzare la manutenibilità.
  Coefficient of coupling: misura il grado di dipendenza tra moduli o classi.
*/

#let voci_tabella_prodotto_manutenibile = (
    [QPM01], [Complessità ciclomatica], [<= 20], [<= 10],
    [QPM02], [Code smell rilevati], [<= 10], [<= 5],
    [QPM03], [Coefficient of coupling], [<= 0.5], [<= 0.3],
)
#let caption_prodotto_manutenibile = (
  [Metriche per la manutenibilità del prodotto software]
)
#show: qualifica_table.with(
  voci: voci_tabella_prodotto_manutenibile,
  caption: caption_prodotto_manutenibile
)

== 3.4 Efficienza

/*
  Tempo di risposta medio: tempo medio necessario per completare un'operazione.
  Utilizzo della memoria: percentuale di memoria utilizzata rispetto a quella disponibile.
  Throughput: numero di operazioni completate in un dato intervallo di tempo.
*/
#let voci_tabella_prodotto_efficiente = (
    [QPE01], [Tempo di risposta medio], [<= 200 ms], [<= 100 ms],
    [QPE02], [Utilizzo della memoria], [<= 80%], [<= 60%],
    [QPE03], [Throughput], [>= 100 operazioni/s], [>= 200 operazioni/s],
  )
#let caption_prodotto_efficiente = (
  [Metriche per l'efficienza del prodotto software]
)
#show: qualifica_table.with(
  voci: voci_tabella_prodotto_efficiente,
  caption: caption_prodotto_efficiente
)

== 3.5 Usabilità

/*
  Time on task: tempo medio necessario per completare un'operazione.
  Error rate: percentuale di errori commessi dagli utenti durante l'uso del software.
*/

#let voci_tabella_prodotto_usabile = (
    [QPU01], [Time on task], [<= 30 s], [<= 20 s],
    [QPU02], [Error rate], [<= 5%], [<= 2%],
  )
#let caption_prodotto_usabile = (
  [Metriche per l'usabilità del prodotto software]
)
#show: qualifica_table.with(
  voci: voci_tabella_prodotto_usabile,
  caption: caption_prodotto_usabile
)

== 3.6 Portabilità

/*
  Portability index: misura la facilità con cui il software può essere trasferito tra ambienti diversi.
  Cross-platform compatibility: verifica della compatibilità su diverse piattaforme (es. Windows, Linux, macOS).
*/
#let voci_tabella_prodotto_portabile = (
    [QPP01], [Portability index], [>= 70%], [>= 80%],
    [QPP02], [Cross-platform compatibility], [100%], [100%],
  )
#let caption_prodotto_portabile = (
  [Metriche per la portabilità del prodotto software]
)
#show: qualifica_table.with(
  voci: voci_tabella_prodotto_portabile,
  caption: caption_prodotto_portabile
)

#pagebreak()
= 4. Metodologie di Testing
Per garantire la qualità del prodotto software, è fondamentale adottare metodologie di testing adeguate.

Ad ogni test è stato attribuito un codice univoco per facilitarne l'identificazione e la tracciabilità. Il codice è strutturato come segue: tipoXX, dove "tipo" rappresenta il tipo di test e "XX" è un numero progressivo che identifica il test specifico. I tipi di test sono i seguenti:
- *TdU*: Test di unità;
- *TdI*: Test di integrazione;
- *TdS*: Test di sistema;
- *TdA*: Test di accettazione.

Per ogni test viene specificato uno stato, che può essere:
- *NI*: Non Implementato;
- *IP*: In fase di Implementazione;
- *TS*: Test Superato;
- *TF*: Test Fallito.


== 4.1 Test di unità

I test di unità verificano il comportamento corretto delle singole unità di codice, come funzioni, metodi o classi. Vengono scritti e mantenuti dagli sviluppatori durante la fase di sviluppo e servono a garantire che ogni componente, isolato dal resto, produca il risultato atteso per diversi input. Sono fondamentali per individuare rapidamente errori logici a livello di codice sorgente.

Di seguito sono riportati i test di unità: per una migliore leggibilità, sono stati suddivisi in più tabelle, una per ogni microservizio.

=== 4.1.1 Microservizio di Autenticazione

#let voci_test_unità = (
    [TdU01], [loginAccess dovrebbe restituire login,logout se global è impostato], [ritorna login,logout], [PASSED],
    [TdU02], [loginAccess dovrebbe restituire accessDenied se global non è impostato], [ritorna accessDenied], [PASSED],
    [TdU03], [registerAccess dovrebbe restituire globalSupervisor se global non è impostato], [ritorna globalSupervisor], [PASSED],
    [TdU04], [registerAccess dovrebbe restituire localSupervisor,globalSupervisor se global è impostato e token.isGlobal], [ritorna localSupervisor,globalSupervisor], [PASSED],
    [TdU05], [registerAccess dovrebbe restituire get:false se global è impostato e token non è globale], [ritorna get:false], [PASSED],
    [TdU06], [registerAccess dovrebbe restituire accessDenied se token.error è presente], [ritorna accessDenied], [PASSED],
    [TdU07], [login dovrebbe chiamare inboundPortsAdapter.login e restituire il risultato], [ritorna token], [PASSED],
    [TdU08], [login dovrebbe gestire errori e restituire risposta di errore], [ritorna system.internalError con messaggio fail], [PASSED],
    [TdU09], [logout dovrebbe chiamare logout con SubDTO se token.sub non è presente], [ritorna ok], [PASSED],
    [TdU10], [logout dovrebbe chiamare logout con sub dal token], [ritorna ok], [PASSED],
    [TdU11], [logout dovrebbe gestire errori e restituire risposta di errore], [ritorna system.internalError con messaggio logout error], [PASSED],
    [TdU12], [registerGlobalSupervisor dovrebbe chiamare registerGlobalSupervisor e restituire il risultato], [ritorna registered], [PASSED],
    [TdU13], [registerGlobalSupervisor dovrebbe gestire errori e restituire risposta di errore], [ritorna system.internalError con messaggio reg error], [PASSED],
    [TdU14], [registerLocalSupervisor dovrebbe chiamare registerLocalSupervisor e restituire il risultato], [ritorna registered], [PASSED],
    [TdU15], [registerLocalSupervisor dovrebbe gestire errori e restituire risposta di errore], [ritorna system.internalError con messaggio reg error], [PASSED],
    [TdU16], [UserIdDTO dovrebbe creare un UserIdDTO con userId], [userId impostato a 123], [PASSED],
    [TdU17], [findByEmail dovrebbe restituire GlobalSupervisor se isGlobal è true], [ritorna istanza di GlobalSupervisor con nome Mario], [PASSED],
    [TdU18], [findByEmail dovrebbe restituire LocalSupervisor se isGlobal è false], [ritorna istanza di LocalSupervisor con nome Luigi], [PASSED],
    [TdU19], [findByEmail dovrebbe restituire null se non trovato], [ritorna null], [PASSED],
    [TdU20], [getIdByEmail dovrebbe restituire id se trovato], [ritorna id123], [PASSED],
    [TdU21], [getIdByEmail dovrebbe restituire null se non trovato], [ritorna null], [PASSED],
    [TdU22], [newProfile dovrebbe lanciare eccezione se email esiste], [lanza eccezione 'Profile with this email already exists'], [PASSED],
    [TdU23], [getGlobalSupervisor dovrebbe restituire GlobalSupervisor se trovato], [ritorna istanza di GlobalSupervisor con nome Mario], [PASSED],
    [TdU24], [getGlobalSupervisor dovrebbe restituire null se non trovato], [ritorna null], [PASSED],
    [TdU25], [getAllProfiles dovrebbe restituire array di utenti], [ritorna array con GlobalSupervisor e LocalSupervisor], [PASSED],
    [TdU26], [storeToken dovrebbe salvare il token], [save del token chiamato], [PASSED],
    [TdU27], [getToken dovrebbe restituire Token se trovato], [ritorna istanza di Token con sub=sub123 e status=ACTIVE], [PASSED],
    [TdU28], [getToken dovrebbe restituire null se non trovato], [ritorna null], [PASSED],
    [TdU29], [updateToken dovrebbe aggiornare lo status del token], [chiamato updateOne con status=REVOKED], [PASSED],
    [TdU30], [login dovrebbe funzionare con credenziali valide], [ritorna 'Login successful'], [PASSED],
    [TdU31], [login fallisce se email non esiste], [ritorna 'system.accessDenied: Email does not exist'], [PASSED],
    [TdU32], [login fallisce se password non valida], [ritorna 'system.accessDenied: Password is not valid'], [PASSED],
    [TdU33], [login fallisce se già loggato], [ritorna 'system.accessDenied: already logged in'], [PASSED],
    [TdU34], [logout dovrebbe funzionare correttamente], [ritorna 'Logout successful'], [PASSED],
    [TdU35], [logout fallisce se token è null], [ritorna errore 'You are already logged out'], [PASSED],
    [TdU36], [logout fallisce se token è già revocato], [ritorna 'Token has already been Revoked'], [PASSED],
    [TdU37], [authenticate dovrebbe autenticare ed emettere token], [ritorna '"result":null' e chiama emitAccessToken], [PASSED],
    [TdU38], [authenticate fallisce se JWT non fornito], [ritorna 'No JWT provided'], [PASSED],
    [TdU39], [authenticate fallisce se token è loggato out], [ritorna 'Token has been logged out'], [PASSED],
    [TdU40], [authenticate fallisce se verifica JWT fallisce], [ritorna errore 'invalid jwt' e chiama updateToken e emitAccessToken], [PASSED],
    [TdU41], [registerGlobalSupervisor registra se non già impostato], [ritorna 'Global Supervisor registered successfully'], [PASSED],
    [TdU42], [registerGlobalSupervisor fallisce se già impostato], [ritorna 'system.accessDenied: already signed in'], [PASSED],
    [TdU43], [registerLocalSupervisor registra con successo], [ritorna 'Local Supervisor registered successfully'], [PASSED],
    [TdU44], [registerLocalSupervisor fallisce se throw errore], [ritorna 'system.accessDenied: fail'], [PASSED],
    [TdU45], [isGlobalSet ritorna true se global supervisor esiste], [ritorna true], [PASSED],
    [TdU46], [isGlobalSet ritorna false se global supervisor non esiste], [ritorna false], [PASSED],
    [TdU47], [onModuleInit dovrebbe chiamare natsClient.connect], [natsClient.connect chiamato], [PASSED],
    [TdU48], [emitAccessToken dovrebbe chiamare natsClient.emit con topic e token], [natsClient.emit chiamato con 'conn.cid456.token' e 'token123'], [PASSED],
    [TdU49], [globalSupervisorToDomain mappa DTO in entità dominio], [domain è istanza di GlobalSupervisor con proprietà corrette], [PASSED],
    [TdU50], [localSupervisorToDomain mappa DTO in entità dominio], [domain è istanza di LocalSupervisor con proprietà corrette], [PASSED],
    [TdU51], [warehouseToDomain mappa DTO in entità dominio], [domain è istanza di WarehouseId con id corretto], [PASSED],
    [TdU52], [authenticationToDomain mappa DTO in entità dominio], [domain è istanza di Authentication con email e password corrette], [PASSED],
    [TdU53], [globalSupervisorToDTO mappa entità dominio in DTO], [dto ha nome, cognome, telefono e authentication corrette], [PASSED],
    [TdU54], [localSupervisorToDTO mappa entità dominio in DTO], [dto ha nome, cognome, telefono, authentication e warehouseAssigned corrette], [PASSED],
    [TdU55], [warehouseIdToDTO mappa entità dominio in DTO], [dto ha warehouseId corretto], [PASSED],
    [TdU56], [authenticationToDTO mappa entità dominio in DTO], [dto ha email e password corrette], [PASSED],
    [TdU57], [userIdToDTO mappa entità dominio in DTO], [dto ha userId corretto], [PASSED],
    [TdU58], [L’entità Authentication deve memorizzare email e password], [email e password correttamente memorizzate], [PASSED],
    [TdU59], [L’entità GlobalSupervisor deve memorizzare nome, cognome, telefono e authentication], [i dati vengono correttamente memorizzati], [PASSED],
    [TdU60], [L’entità LocalSupervisor deve memorizzare nome, cognome, telefono, authentication e magazzini], [i dati vengono correttamente memorizzati], [PASSED],
    [TdU61], [L’entità Role deve avere valori statici], [Role.GLOBAL e Role.LOCAL definiti], [PASSED],
    [TdU62], [L’entità Token deve memorizzare sub e status], [sub e status correttamente memorizzati], [PASSED],
    [TdU63], [L’entità TokenStatus deve avere valori statici], [TokenStatus.ACTIVE e REVOKED definiti], [PASSED],
    [TdU64], [L’entità UserId deve memorizzare l’id], [id correttamente memorizzato], [PASSED],
    [TdU65], [L’entità WarehouseId deve memorizzare warehouseId], [id del magazzino correttamente memorizzato], [PASSED],
    [TdU66], [login chiama authService.login con il DTO mappato], [DTO mappato passato e token restituito], [PASSED],
    [TdU67], [logout chiama authService.logout con sub], [sub passato e risposta ok], [PASSED],
    [TdU68], [authenticate chiama authService.authenticate con jwt e cid], [jwt e cid passati e autenticazione restituita], [PASSED],
    [TdU69], [registerGlobalSupervisor chiama authService.registerGlobalSupervisor con DTO mappato], [DTO mappato passato e registrazione riuscita], [PASSED],
    [TdU70], [registerLocalSupervisor chiama authService.registerLocalSupervisor con DTO mappato], [DTO mappato passato e registrazione riuscita], [PASSED],
    [TdU71], [estrazione JWT e chiamata ad authenticate], [JWT estratto e chiamata ad authenticate restituisce auth-ok], [PASSED],
    [TdU72], [gestione header Authorization come array], [JWT estratto da array e chiamata ad authenticate restituisce auth-ok], [PASSED],
    [TdU73], [restituisce errore se authenticate fallisce], [eccezione di authenticate catturata, errore restituito], [PASSED],
    [TdU74], [restituisce errore se manca token Bearer], [nessun Bearer token, accesso negato restituito], [PASSED],
    [TdU75], [emitAccessToken chiama authEventHandler.emitAccessToken con token e cid], [token e cid passati correttamente], [PASSED],
    [TdU76], [AuthenticationSchema should be defined], [schema di Authentication definito], [PASSED],
    [TdU77], [AuthenticationSchema should have expected fields], [campi definiti siano presenti], [PASSED],
    [TdU78], [tokenListSchema should be defined], [schema tokenList definito], [PASSED],
    [TdU79], [tokenListSchema should have expected fields], [campi sub e status presenti], [PASSED]
  )
#let caption_test_unità = (
  [Test di unità di Autenticazione]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

=== 4.1.2 Microservizio di Sistema Centralizzato

#let voci_test_unità = (
    [TdU80], [Dovrebbe connettersi all’inizializzazione del modulo], [connect chiamato], [PASSED],
    [TdU81], [Dovrebbe emettere una notifica], [emit chiamato], [PASSED],
    [TdU82], [Dovrebbe emettere un ordine interno], [emit chiamato], [PASSED],
    [TdU83], [Dovrebbe inviare una richiesta di inventario al cloud e restituire un Inventory], [send chiamato + ritorno Inventory], [PASSED],
    [TdU84], [Dovrebbe inviare una richiesta di ordini al cloud e restituire un Orders o null], [send chiamat + ritorno null], [PASSED],
    [TdU85], [Dovrebbe richiedere la distanza dei magazzini e restituire un array di WarehouseId[]], [send chiamato, e ritorno WarehouseId[]], [PASSED],
    [TdU86], [Dovrebbe compilare il modulo], [module definito], [PASSED],
    [TdU87], [Dovrebbe risolvere CentralSystemService], [istanza di CentralSystemService], [PASSED],
    [TdU88], [Dovrebbe risolvere centralSystemController], [istanza di centralSystemController], [PASSED],
    [TdU89], [Dovrebbe risolvere InboundPortsAdapter], [istanza di InboundPortsAdapter], [PASSED],
    [TdU90], [Dovrebbe risolvere OutboundPortsAdapter], [istanza di OutboundPortsAdapter], [PASSED],
    [TdU91], [Dovrebbe risolvere centralSystemHandler], [istanza di centralSystemHandler], [PASSED],
    [TdU92], [Dovrebbe creare un ordine interno se residualQty >= minThres], [createInternalOrder chiamato], [PASSED],
    [TdU93], [Non dovrebbe creare un ordine interno se availableQty < minThres], [createInternalOrder non chiamato], [PASSED],
    [TdU94], [Non dovrebbe creare un ordine interno se residualQty < minThres], [createInternalOrder non chiamato], [PASSED],
    [TdU95], [Non dovrebbe creare un ordine interno se il prodotto non è in inventario], [createInternalOrder non chiamato], [PASSED],
    [TdU96], [Dovrebbe creare ordini interni se i prodotti hanno quantità sufficiente], [createInternalOrder chiamato], [PASSED],
    [TdU97], [Non dovrebbe creare un ordine interno se availableQty < minThres], [createInternalOrder non chiamato], [PASSED],
    [TdU98], [Non dovrebbe creare un ordine interno se residualQty < minThres], [createInternalOrder non chiamato], [PASSED],
    [TdU99], [Non dovrebbe creare un ordine interno se il prodotto richiesto non è nei magazzini], [createInternalOrder non chiamato], [PASSED],
    [TdU100], [Dovrebbe inviare una notifica per magazzini inattivi], [SendNotification chiamato], [PASSED],
    [TdU101], [Non dovrebbe fare nulla se tutti i magazzini sono attivi], [SendNotification non chiamato], [PASSED],
    [TdU102], [Non dovrebbe fare nulla se la lista magazzini è vuota], [SendNotification non chiamato], [PASSED],
    [TdU103], [Dovrebbe creare un ordine interno se residualQty <= maxThres], [createInternalOrder chiamato], [PASSED],
    [TdU104], [Non dovrebbe creare un ordine interno se availableQty > maxThres], [createInternalOrder non chiamato], [PASSED],
    [TdU105], [Non dovrebbe creare un ordine interno se residualQty > maxThres], [createInternalOrder non chiamato], [PASSED],
    [TdU106], [Non dovrebbe creare un ordine interno se il prodotto non è in inventario], [createInternalOrder non chiamato], [PASSED],
    [TdU107], [Dovrebbe recuperare inventario, ordini e stati dei magazzini e mapparli al dominio], [CloudInventoryRequest, CloudOrderRequest e RequestDistanceWarehouse chiamati + ritorno con proprietà inv, order, dist], [PASSED],
    [TdU108], [Dovrebbe trasformare il payload e chiamare handleInsufficientQuantity], [handleInsufficientQuantity chiamato + corretta conversione di OrderQuantityDTO e WarehouseIdDTO], [PASSED],
    [TdU109], [Dovrebbe trasformare il payload e chiamare handleCriticalQuantityMin], [handleCriticalQuantityMin chiamato + corretta conversione di ProductDTO], [PASSED],
    [TdU110], [Dovrebbe trasformare il payload e chiamare handleCriticalQuantityMax], [handleCriticalQuantityMax chiamato + corretta conversione di ProductDTO], [PASSED],
    [TdU111], [Dovrebbe trasformare il payload e chiamare getWarehouseState], [getWarehouseState chiamato + trasformazione in array di WarehouseStateDTO corretti], [PASSED],
    [TdU112], [Dovrebbe chiamare centralSystemHandler.handleNotification], [handleNotification chiamato con messaggio], [PASSED],
    [TdU113], [Dovrebbe convertire InternalOrder in DTO e chiamare handleOrder], [internalOrderToDTO chiamato + handleOrder chiamato], [PASSED],
    [TdU114], [Dovrebbe chiamare handler e mappare l’inventario in DTO], [handleCloudInventoryRequest chiamato + toDtoInventory chiamato], [PASSED],
    [TdU115], [Dovrebbe chiamare handler e mappare gli ordini in DTO], [handleCloudOrdersRequest chiamato + ordersToDTO chiamato], [PASSED],
    [TdU116], [Dovrebbe restituire null se handler ritorna null], [handleCloudOrdersRequest chiamato + ritorno null], [PASSED],
    [TdU117], [Dovrebbe chiamare handler, mappare in DTO e restituire array DTO], [handleWarehouseDistance chiamato + ritorno array DTO corretti], [PASSED],
    [TdU118], [Dovrebbe chiamare handleRequestOrdResult], [handleRequestOrdResult chiamato con messaggio, orderId, warehouseId], [PASSED],
    [TdU119], [Dovrebbe chiamare handleRequestInvResult], [handleRequestInvResult chiamato con messaggio, productId, warehouseId], [PASSED],
    [TdU120], [Dovrebbe mappare productDto in Product], [Product creato con nome, quantità e warehouseId coerenti], [PASSED],
    [TdU121], [Dovrebbe mappare Product in productDto], [DTO con nome, unitPrice, quantity e warehouseId coerenti], [PASSED],
    [TdU122], [Dovrebbe mappare WarehouseId in warehouseIdDto], [DTO con warehouseId coerente], [PASSED],
    [TdU123], [internalOrderToDomain deve lanciare errore se warehouseDeparture = warehouseDestination], [eccezione lanciata con messaggio corretto], [PASSED],
    [TdU124], [orderIdToDomain deve lanciare errore su formato non valido], [eccezione lanciata con messaggio corretto], [PASSED],
    [TdU125], [orderStateToDomain deve lanciare errore su stato non valido], [eccezione lanciata con messaggio corretto], [PASSED],
    [TdU126], [orderItemDetailToDomain deve lanciare errore se reserved > ordered], [eccezione lanciata con messaggio corretto], [PASSED],
    [TdU127], [orderQuantityToDomain deve mappare DTO in dominio], [OrderQuantity creato con ID e items coerenti], [PASSED],
    [TdU128], [warehouseIdToDomain deve lanciare errore se DTO invalido], [eccezione lanciata con messaggio corretto], [PASSED],
    [TdU129], [warehouseStatetoDto deve mappare WarehouseState in DTO], [DTO con state e warehouseId coerenti], [PASSED],
    [TdU130], [toDomainProduct deve mappare productDto in Product], [Product creato con nome, quantità e warehouseId coerenti], [PASSED],
    [TdU131], [toDtoProduct deve mappare Product in productDto], [DTO con id, nome, unitPrice, quantity e warehouseId coerenti], [PASSED],
    [TdU132], [toBelowMinDTO deve mappare Product in belowMinThresDto], [DTO con id, quantity e minThres coerenti], [PASSED],
    [TdU133], [toAboveMaxDTO deve mappare Product in aboveMaxThresDto], [DTO con id, quantity e maxThres coerenti], [PASSED],
    [TdU134], [toDTOProductQuantity deve mappare ProductId + quantity in DTO], [DTO con productId e quantity coerenti], [PASSED],
    [TdU135], [orderItemToDTO deve mappare OrderItem in DTO], [DTO con itemId e quantity coerenti], [PASSED],
    [TdU136], [orderIdToDTO deve mappare OrderId in DTO], [DTO con id coerente], [PASSED],
    [TdU137], [orderStateToDTO deve mappare OrderState in DTO], [DTO con orderState coerente], [PASSED],
    [TdU138], [orderItemDetailToDTO deve mappare OrderItemDetail in DTO], [DTO con itemId, quantityReserved e unitPrice coerenti], [PASSED],
    [TdU139], [orderQuantityToDTO deve mappare OrderQuantity in DTO], [DTO con id e items coerenti], [PASSED],
    [TdU140], [productQuantityToDTO deve mappare entity in productQuantityDto], [DTO con productId e quantity coerenti], [PASSED],
    [TdU141], [warehouseIdToDomain deve mappare DTO in WarehouseId], [WarehouseId creato con ID coerente], [PASSED],
    [TdU142], [Dovrebbe mappare DTO in dominio e chiamare CheckInsufficientQuantity], [orderQuantityToDomain e warehouseIdToDomain chiamati + CheckInsufficientQuantity con oggetti dominio], [PASSED],
    [TdU143], [Dovrebbe mappare DTO in dominio e chiamare ManageCriticalMinThres], [toDomainProduct chiamato + ManageCriticalMinThres con prodotto dominio], [PASSED],
    [TdU144], [Dovrebbe mappare DTO in dominio e chiamare ManageOverMaxThres], [toDomainProduct chiamato + ManageOverMaxThres con prodotto dominio], [PASSED],
    [TdU145], [Dovrebbe mappare DTOs in dominio e chiamare CheckWarehouseState], [warehouseStatetoDomain chiamato + CheckWarehouseState con array dominio], [PASSED],
    [TdU146], [Dovrebbe creare il microservice con opzioni corrette e applicare ValidationPipe], [NestFactory.createMicroservice chiamato con opzioni corrette + useGlobalPipes applicato con ValidationPipe + listen chiamato], [PASSED],
    [TdU147], [Dovrebbe usare RpcException in ValidationPipe exceptionFactory], [exceptionFactory ritorna RpcException con errori di validazione], [PASSED],
    [TdU148], [Dovrebbe inizializzare correttamente le proprietà di InternalOrder], [orderId, itemsDetail, orderState, warehouseDeparture e warehouseDestination valorizzati correttamente], [PASSED],
    [TdU149], [Dovrebbe aggiornare warehouseDestination usando setWarehouseDestination], [warehouseDestination aggiornato al valore passato], [PASSED],
    [TdU150], [Dovrebbe permettere di aggiornare orderState], [orderState aggiornato correttamente al nuovo valore], [PASSED],
    [TdU151], [Dovrebbe restituire tutti i prodotti tramite getInventory], [getInventory ritorna array con tutti i prodotti presenti], [PASSED],
    [TdU152], [Dovrebbe aggiungere un nuovo prodotto tramite addProductItem], [prodotto aggiunto correttamente all’inventario e presente in getInventory], [PASSED],
    [TdU153], [Dovrebbe restituire il corretto id tramite getId di ItemId], [getId ritorna l’id corretto], [PASSED],
    [TdU154], [Dovrebbe memorizzare correttamente diversi id], [getId ritorna valori coerenti per item1 e item2], [PASSED],
    [TdU155], [Dovrebbe restituire il corretto orderId], [getOrderId ritorna l’id corretto], [PASSED],
    [TdU156], [Dovrebbe ottenere e settare gli items di Order], [setItemsDetail aggiorna correttamente gli items e getItemsDetail li restituisce], [PASSED],
    [TdU157], [Dovrebbe ottenere e settare lo stato dell’ordine], [setOrderState aggiorna lo stato e getOrderState lo restituisce], [PASSED],
    [TdU158], [Dovrebbe ottenere e settare la data di creazione dell’ordine], [setCreationDate aggiorna la data e getCreationDate la restituisce], [PASSED],
    [TdU159], [Dovrebbe ottenere e settare warehouseDeparture], [setWarehouseDeparture aggiorna il valore e getWarehouseDeparture lo restituisce], [PASSED],
    [TdU160], [Dovrebbe restituire l’OrderItem corretto da OrderItemDetail], [getItem ritorna l’oggetto OrderItem corretto], [PASSED],
    [TdU161], [Dovrebbe restituire la quantityReserved corretta], [getQuantityReserved ritorna il valore corretto], [PASSED],
    [TdU162], [Dovrebbe restituire l’unitPrice corretto], [getUnitPrice ritorna il valore corretto], [PASSED],
    [TdU163], [Dovrebbe aggiornare quantityReserved], [setQuantityReserved aggiorna il valore e getQuantityReserved lo restituisce], [PASSED],
    [TdU164], [Dovrebbe aggiornare unitPrice], [setUnitPrice aggiorna il valore e getUnitPrice lo restituisce], [PASSED],
    [TdU165], [Dovrebbe restituire gli items corretti di OrderQuantity], [getItemId ritorna array corretto degli items], [PASSED],
    [TdU166], [Dovrebbe restituire le quantità corrette], [getQuantity ritorna array corretto delle quantità], [PASSED],
    [TdU167], [Dovrebbe aggiornare la quantità per un item specifico], [setQuantity aggiorna il valore corretto e getQuantity lo restituisce], [PASSED],
    [TdU168], [Dovrebbe restituire il corretto id dell’ordine], [getId ritorna l’ID corretto], [PASSED],
    [TdU169], [Dovrebbe restituire il corretto tipo di ordine], [getOrderType ritorna il tipo corretto], [PASSED],
    [TdU170], [Dovrebbe aggiornare sellOrders quando setSellOrders è chiamato], [sellOrders aggiornati correttamente e diversi dai precedenti], [PASSED],
    [TdU171], [Dovrebbe aggiornare internalOrders quando setInternalOrders è chiamato], [internalOrders aggiornati correttamente e diversi dai precedenti], [PASSED],
    [TdU172], [Dovrebbe restituire il nome corretto tramite getName], [getName ritorna il nome iniziale del prodotto], [PASSED],
    [TdU173], [Dovrebbe aggiornare il nome con setName], [setName aggiorna il nome e getName lo restituisce], [PASSED],
    [TdU174], [Dovrebbe aggiornare unitPrice con setUnitPrice], [setUnitPrice aggiorna il valore e getUnitPrice lo restituisce], [PASSED],
    [TdU175], [Dovrebbe aggiornare quantity con setQuantity], [setQuantity aggiorna il valore e getQuantity lo restituisce], [PASSED],
    [TdU176], [Dovrebbe aggiornare minThres con setMinThres], [setMinThres aggiorna il valore e getMinThres lo restituisce], [PASSED],
    [TdU177], [Dovrebbe aggiornare maxThres con setMaxThres], [setMaxThres aggiorna il valore e getMaxThres lo restituisce], [PASSED],
    [TdU178], [Dovrebbe restituire il corretto ProductId da ProductQuantity], [getId ritorna l’id corretto], [PASSED],
    [TdU179], [Dovrebbe restituire la quantità corretta da ProductQuantity], [getQuantity ritorna il valore corretto], [PASSED],
    [TdU180], [Dovrebbe restituire correttamente l’indirizzo di destinazione di SellOrder], [getDestinationAddress ritorna l’indirizzo corretto], [PASSED],
    [TdU181], [Dovrebbe aggiornare l’indirizzo di destinazione di SellOrder], [setDestinationAddress aggiorna l’indirizzo e getDestinationAddress lo restituisce], [PASSED],
    [TdU182], [Dovrebbe restituire il corretto orderId di SellOrder], [getOrderId ritorna l’id corretto], [PASSED],
    [TdU183], [Dovrebbe restituire correttamente gli items di SellOrder], [getItemsDetail ritorna l’array corretto di items], [PASSED],
    [TdU184], [Dovrebbe restituire il corretto stato dell’ordine di SellOrder], [getOrderState ritorna lo stato corretto], [PASSED],
    [TdU185], [Dovrebbe restituire correttamente la data di creazione di SellOrder], [getCreationDate ritorna la data corretta], [PASSED],
    [TdU186], [Dovrebbe restituire correttamente warehouseDeparture di SellOrder], [getWarehouseDeparture ritorna il valore corretto], [PASSED],
    [TdU187], [Dovrebbe validare un DTO aboveMaxThres corretto], [validate ritorna zero errori per un DTO valido], [PASSED],
    [TdU188], [Dovrebbe fallire se id non è un UUID valido in aboveMaxThresDto], [validate ritorna errore sulla proprietà id], [PASSED],
    [TdU189], [Dovrebbe fallire se quantity è negativa in aboveMaxThresDto], [validate ritorna errore sulla proprietà quantity], [PASSED],
    [TdU190], [Dovrebbe fallire se maxThres è negativa in aboveMaxThresDto], [validate ritorna errore sulla proprietà maxThres], [PASSED],
    [TdU191], [Dovrebbe validare un DTO belowMinThres corretto], [validate ritorna zero errori per un DTO valido], [PASSED],
    [TdU192], [Dovrebbe fallire se id non è un UUID valido in belowMinThresDto], [validate ritorna errore sulla proprietà id], [PASSED],
    [TdU193], [Dovrebbe fallire se quantity è negativa in belowMinThresDto], [validate ritorna errore sulla proprietà quantity], [PASSED],
    [TdU194], [Dovrebbe fallire se minThres è negativa in belowMinThresDto], [validate ritorna errore sulla proprietà minThres], [PASSED],
    [TdU195], [Dovrebbe validare un InternalOrderDTO corretto], [validate ritorna zero errori per un DTO valido], [PASSED],
    [TdU196], [Dovrebbe fallire se orderId manca in InternalOrderDTO], [validate ritorna errore sulla proprietà orderId], [PASSED],
    [TdU197], [Dovrebbe fallire se items non è un array in InternalOrderDTO], [validate ritorna errore sulla proprietà items], [PASSED],
    [TdU198], [Dovrebbe fallire se warehouseDeparture non è un intero in InternalOrderDTO], [validate ritorna errore sulla proprietà warehouseDeparture], [PASSED],
    [TdU199], [Dovrebbe validare un inventoryDto corretto], [validate ritorna zero errori per un DTO valido], [PASSED],
    [TdU200], [Dovrebbe fallire se productList non è un array in inventoryDto], [validate ritorna errore sulla proprietà productList], [PASSED],
    [TdU201], [Dovrebbe fallire se productList contiene productDto non valido], [validate ritorna errori per i prodotti invalidi], [PASSED],
    [TdU202], [Dovrebbe validare un OrderItemDetailDTO corretto], [validate ritorna zero errori per un DTO valido], [PASSED],
    [TdU203], [Dovrebbe fallire se quantityReserved è negativo in OrderItemDetailDTO], [validate ritorna errore sulla proprietà quantityReserved], [PASSED],
    [TdU204], [Dovrebbe fallire se unitPrice ha più di due decimali in OrderItemDetailDTO], [validate ritorna errore sulla proprietà unitPrice], [PASSED],
    [TdU205], [Dovrebbe fallire se item manca in OrderItemDetailDTO], [validate ritorna errore sulla proprietà item], [PASSED],
    [TdU206], [Dovrebbe validare un OrdersDTO corretto], [validate ritorna zero errori per un OrdersDTO valido], [PASSED],
    [TdU207], [Dovrebbe validare un productQuantityDto corretto], [validate ritorna zero errori per un productQuantityDto valido], [PASSED],
    [TdU208], [Dovrebbe fallire se quantity è negativa in productQuantityDto], [validate ritorna errore sulla proprietà quantity], [PASSED],
    [TdU209], [Dovrebbe validare un productQuantityArrayDto corretto], [validate ritorna zero errori per un productQuantityArrayDto valido], [PASSED],
    [TdU210], [Dovrebbe fallire se productQuantityArray non è un array], [validate ritorna errore sulla proprietà productQuantityArray], [PASSED],
    [TdU211], [Dovrebbe fallire se un elemento di productQuantityArray è invalido], [validate ritorna errori per elementi invalidi], [PASSED],
    [TdU212], [Dovrebbe validare un SellOrderDTO corretto], [validate ritorna zero errori per un SellOrderDTO valido], [PASSED],
    [TdU213], [Dovrebbe fallire se items non è un array in SellOrderDTO], [validate ritorna errore sulla proprietà items], [PASSED],
    [TdU214], [Dovrebbe fallire se destinationAddress è vuoto in SellOrderDTO], [validate ritorna errore sulla proprietà destinationAddress], [PASSED],
    [TdU215], [Dovrebbe validare un WarehouseStateDTO corretto], [validate ritorna zero errori per un WarehouseStateDTO valido], [PASSED],
    [TdU216], [Dovrebbe fallire se warehouseId manca in WarehouseStateDTO], [validate ritorna errore sulla proprietà warehouseId], [PASSED],
    [TdU217], [Dovrebbe fallire se warehouseId è invalido in WarehouseStateDTO], [validate ritorna errore sulla proprietà warehouseId], [PASSED],
    [TdU218], [Dovrebbe emettere l'evento corretto per handleRequestInvResult], [natsClient.emit chiamato e message], [PASSED],
    [TdU219], [Dovrebbe emettere l'evento corretto per handleRequestOrdResult], [natsClient.emit chiamato e message], [PASSED],



      )
#let caption_test_unità = (
  [Test di unità di Sistema Centralizzato]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

=== 4.1.3 Microservizio di Stato Aggregato

#let voci_test_unità = (
    [TdU220], [---], [---], [NI]
  )
#let caption_test_unità = (
  [Test di unità di Stato Aggregato]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

=== 4.1.4 Microservizio di Routing

#let voci_test_unità = (
  [TdU273], [Dovrebbe restituire un output valorizzato quando l'aggiornamento di un indirizzo di magazzino ha successo], [result è true], [PASSED],
  [TdU274], [Dovrebbe restituire false quando l'aggiornamento di un indirizzo di magazzino fallisce], [result è false], [PASSED],
  [TdU275], [Dovrebbe restituire un output valorizzato quando la rimozione di un indirizzo di magazzino ha successo], [result è true], [PASSED],
  [TdU276], [Dovrebbe restituire un output false quando la rimozione di un indirizzo di magazzino fallisce], [result è false], [PASSED],
  [TdU277], [Dovrebbe restituire un output valorizzato quando l'aggiornamento dello stato di un magazzino ha successo], [result è true], [PASSED],
  [TdU278], [Dovrebbe restituire false quando l'aggiornamento dello stato di un magazzino fallisce], [result è false], [PASSED],
  [TdU279], [Dovrebbe restituire un output valorizzato quando il salvataggio di un magazzino ha successo], [result è true], [PASSED],
  [TdU280], [Dovrebbe restituire false quando il salvataggio di un magazzino fallisce], [result è false], [PASSED],
  [TdU281], [Dovrebbe restituire l'array di magazzini in ordine per distanza più vicina al magazzino richiedente], [array contenente WarehouseId], [PASSED],
  [TdU282], [equals ritorna true se gli id sono uguali], [true], [PASSED],
  [TdU283], [equals ritorna false se gli id sono diversi], [false], [PASSED],
  [TdU284], [serializza una risposta con response], [result = { data: { foo: 'bar' } }], [PASSED],
  [TdU285], [serializza una risposta con err come stringa], [result.data contiene error con code 'system.invalidParams' e message], [PASSED],
  [TdU286], [serializza una risposta con err come array di errori di validazione], [result.data contiene error con code 'system.invalidParams' e message], [PASSED],
  [TdU287], [serializza una risposta senza response né err], [result = { data: 'test' }], [PASSED],
  [TdU288], [deve avere la struttura corretta], [natsConfig con proprietà e valori attesi], [PASSED],
  [TdU289], [deve usare NATS_URL se presente], [servers[0] = 'nats:\/\/custom:4222'], [PASSED],
  [TdU290], [deve usare il valore di default se NATS_URL non è presente], [servers[0] = 'nats:\/\/localhost:4222'], [PASSED],
  [TdU291], [onModuleInit inizializza la connessione NATS], [service['nc'] definito], [PASSED],
  [TdU292], [onModuleDestroy chiude la connessione NATS], [close chiamato], [PASSED],
  [TdU293], [publish invia il messaggio codificato], [publish chiamato con subject e buffer], [PASSED],
  [TdU294], [crea la microservice app con le opzioni corrette], [NestFactory.createMicroservice chiamato con RoutingModule e opzioni], [PASSED],
  [TdU295], [warehouseIdToDomain converte DTO in entity], [entity è WarehouseId, id = 42], [PASSED],
  [TdU296], [warehouseStateToDomain converte DTO in entity], [entity è WarehouseState, id = 7, state = 'ATTIVO'], [PASSED],
  [TdU297], [warehouseAddressToDomain converte DTO in entity], [entity è WarehouseAddress, id = 5, state = 'DISATTIVO', address = 'Via Roma 5'], [PASSED],
  [TdU298], [warehouseAddressToDTO converte entity in DTO], [DTO con warehouseState e address], [PASSED],
  [TdU299], [warehouseIdToDTO converte entity in DTO], [DTO con warehouseId], [PASSED],
  [TdU300], [warehouseStateToDTO converte entity in DTO], [DTO con warehouseId e state], [PASSED],
  [TdU301], [sendAddress chiama natsService.publish con il topic e il payload giusto], [publish chiamato con 'warehouse.address' e address], [PASSED],
  [TdU302], [sendWarehouseDistance chiama natsService.publish con il topic e il payload giusto], [publish chiamato con 'warehouse.distance' e array], [PASSED],
  [TdU303], [deve chiamare outboundService.sendAddress con il DTO corretto], [sendAddress chiamato con DTO corretto], [PASSED],
  [TdU304], [saveWarehouse chiama create con warehouseId], [create chiamato con warehouseId], [PASSED],
  [TdU305], [getWarehouseById ritorna WarehouseId se trovato], [WarehouseId(2)], [PASSED],
  [TdU306], [getWarehouseById ritorna null se non trovato], [null], [PASSED],
  [TdU307], [getAllWarehouses ritorna array di WarehouseId], [[WarehouseId(1), WarehouseId(2)]], [PASSED],
  [TdU308], [saveWarehouseAddress chiama create con dati corretti], [create chiamato con warehouseId, state, address], [PASSED],
  [TdU309], [removeWarehouseAddress chiama deleteOne con warehouseId], [deleteOne chiamato con warehouseId], [PASSED],
  [TdU310], [updateWarehouseAddress chiama updateOne con dati corretti], [updateOne chiamato con warehouseId e address], [PASSED],
  [TdU311], [getWarehouseAddressById ritorna WarehouseAddress se trovato], [WarehouseAddress con dati attesi], [PASSED],
  [TdU312], [getWarehouseAddressById ritorna null se non trovato], [null], [PASSED],
  [TdU313], [getAllWarehouseAddresses ritorna array di WarehouseAddress], [array di WarehouseAddress], [PASSED],
  [TdU314], [saveWarehouseState chiama create con dati corretti], [create chiamato con warehouseId e state], [PASSED],
  [TdU315], [getWarehouseStateById ritorna WarehouseState se trovato], [WarehouseState con dati attesi], [PASSED],
  [TdU316], [getWarehouseStateById ritorna null se non trovato], [null], [PASSED],
  [TdU317], [getAllWarehouseStates ritorna array di WarehouseState], [array di WarehouseState], [PASSED],
  [TdU318], [updateWarehouseState chiama updateOne con dati corretti], [updateOne chiamato con warehouseId e state], [PASSED],
  [TdU319], [chiama logger.verbose con il messaggio corretto], [logger.verbose chiamato con messaggio], [PASSED],
  [TdU320], [restituisce un oggetto con pattern, data e id], [oggetto con pattern, data, id], [PASSED],
  [TdU321], [usa la cache se l'indirizzo è già presente], [axios.get non chiamato, risultato da cache], [PASSED],
  [TdU322], [lancia errore se la risposta è vuota], [throw errore], [PASSED],
  [TdU323], [geocodifica e salva in cache se non presente], [axios.get chiamato, risultato corretto], [PASSED],
  [TdU324], [calcola la distanza tra due coordinate note], [distanza tra Milano e Roma ~477km], [PASSED],
  [TdU325], [la distanza tra due punti uguali è zero], [distanza = 0], [PASSED],
  [TdU326], [updateAddress chiama il service e ritorna il risultato], [updateWarehouseAddress chiamato, risultato 'ok'], [PASSED],
  [TdU327], [updateAddress gestisce errori], [result contiene error code 'system.invalidParams'], [PASSED],
  [TdU328], [removeAddress chiama il service e ritorna il risultato], [removeWarehouseAddress chiamato, risultato 'removed'], [PASSED],
  [TdU329], [removeAddress gestisce errori], [result contiene error code 'system.invalidParams'], [PASSED],
  [TdU330], [receiveRequest chiama il service e ritorna la risposta], [calculateDistance chiamato, risultato array], [PASSED],
  [TdU331], [receiveRequest gestisce errori], [result contiene error code 'system.invalidParams'], [PASSED],
  [TdU332], [updateWarehouseState chiama il service e ritorna il risultato], [updateWarehouseState chiamato, risultato 'updated'], [PASSED],
  [TdU333], [updateWarehouseState gestisce errori], [result contiene error code 'system.invalidParams'], [PASSED],
  [TdU334], [createWarehouse chiama il service e ritorna il risultato], [saveWarehouse chiamato, risultato 'created'], [PASSED],
  [TdU335], [createWarehouse gestisce errori], [result contiene error code 'system.invalidParams'], [PASSED],
  [TdU336], [should return access granted for global token], [result contiene get: true, call: '\*'], [PASSED],
  [TdU337], [should return access denied for token with error], [result contiene error code 'system.accessDenied'], [PASSED],
  [TdU338], [should return access denied for missing token], [result contiene error code 'system.accessDenied'], [PASSED],
  )
#let caption_test_unità = (
  [Test di unità di Routing]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

=== 4.1.5 Microservizio di Inventario Aggregato

#let voci_test_unità = (
    [TdU340], [---], [---], [NI]
  )
#let caption_test_unità = (
  [Test di unità di Inventario Aggregato]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

=== 4.1.6 Microservizio di Ordine Aggregato

#let voci_test_unità = (
    [TdU400], [---], [---], [NI]
  )
#let caption_test_unità = (
  [Test di unità di Ordine Aggregato]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

=== 4.1.7 Microservizio di Inventario

#let voci_test_unità = (
    [TdU506], [---], [---], [NI]
  )
#let caption_test_unità = (
  [Test di unità di Inventario]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

=== 4.1.8 Microservizio di Ordini

#let voci_test_unità = (
[TdU592], [Verifica che l'ordine interno sia inizializzato correttamente con tutte le proprietà], [L'ordine deve avere ID 'I233dcc2d-6637-4120-b80c-199f18e0ff2b', 1 articolo, stato PENDING, magazzino partenza 1 e destinazione 2], [PASSED],
[TdU593], [Verifica l'aggiornamento del magazzino di destinazione in un ordine interno], [Il magazzino di destinazione deve essere aggiornato a 5], [PASSED],
[TdU594], [Verifica l'aggiornamento dello stato dell'ordine in un ordine interno], [Lo stato dell'ordine deve essere aggiornato a PROCESSING], [PASSED],
[TdU595], [Verifica che ItemId restituisca l'ID corretto], [L'ID dell'articolo deve essere 42], [PASSED],
[TdU596], [Verifica che ItemId memorizzi correttamente ID diversi], [I due articoli devono avere ID 1 e 999 rispettivamente], [PASSED],
[TdU597], [Verifica che Order restituisca l'ID ordine corretto], [L'ID dell'ordine deve essere 'I233dcc2d-6637-4120-b80c-199f18e0ff2b'], [PASSED],
[TdU598], [Verifica l'impostazione e il recupero degli articoli in Order], [Gli articoli devono essere aggiornati correttamente], [PASSED],
[TdU599], [Verifica l'impostazione e il recupero dello stato dell'ordine in Order], [Lo stato dell'ordine deve essere aggiornato a PROCESSING], [PASSED],
[TdU600], [Verifica l'impostazione e il recupero della data di creazione in Order], [La data di creazione deve essere aggiornata a '2025-01-01'], [PASSED],
[TdU601], [Verifica l'impostazione e il recupero del magazzino di partenza in Order], [Il magazzino di partenza deve essere aggiornato a 5], [PASSED],
[TdU602], [Verifica che OrderId restituisca l'ID corretto], [L'ID dell'ordine deve essere 'S933dcc2d-6637-4120-b80c-199f18e0ff2b'], [PASSED],
[TdU603], [Verifica che OrderId restituisca il tipo ordine corretto], [Il tipo ordine deve essere 'S' (prima lettera dell'ID)], [PASSED],
[TdU604], [Verifica che OrderItem restituisca l'ID articolo corretto], [L'ID dell'articolo deve essere 125], [PASSED],
[TdU605], [Verifica che OrderItem restituisca la quantità corretta], [La quantità deve essere 23], [PASSED],
[TdU606], [Verifica che OrderItemDetail restituisca l'OrderItem corretto], [Deve restituire l'OrderItem inizializzato], [PASSED],
[TdU607], [Verifica che OrderItemDetail restituisca la quantità riservata corretta], [La quantità riservata deve essere 2], [PASSED],
[TdU608], [Verifica che OrderItemDetail restituisca il prezzo unitario corretto], [Il prezzo unitario deve essere 100], [PASSED],
[TdU609], [Verifica l'aggiornamento della quantità riservata in OrderItemDetail], [La quantità riservata deve essere aggiornata a 10], [PASSED],
[TdU610], [Verifica l'aggiornamento del prezzo unitario in OrderItemDetail], [Il prezzo unitario deve essere aggiornato a 200], [PASSED],
[TdU611], [Verifica l'aggiornamento degli ordini di vendita in Orders], [Gli ordini di vendita devono essere aggiornati correttamente], [PASSED],
[TdU612], [Verifica l'aggiornamento degli ordini interni in Orders], [Gli ordini interni devono essere aggiornati correttamente], [PASSED],
[TdU613], [Verifica che SellOrder restituisca l'indirizzo di destinazione corretto], [L'indirizzo deve essere 'Via Roma 1'], [PASSED],
[TdU614], [Verifica l'aggiornamento dell'indirizzo di destinazione in SellOrder], [L'indirizzo deve essere aggiornato a 'Via Milano 2'], [PASSED],
[TdU615], [Verifica che SellOrder restituisca l'ID ordine corretto], [L'ID ordine deve essere 'S933dcc2d-6637-4120-b80c-199f18e0ff2b'], [PASSED],
[TdU616], [Verifica che SellOrder restituisca gli articoli corretti], [Deve restituire l'array di OrderItemDetail inizializzato], [PASSED],
[TdU617], [Verifica che SellOrder restituisca lo stato ordine corretto], [Lo stato ordine deve essere PENDING], [PASSED],
[TdU618], [Verifica che SellOrder restituisca la data di creazione corretta], [La data di creazione deve essere '2025-09-02'], [PASSED],
[TdU619], [Verifica che SellOrder restituisca il magazzino di partenza corretto], [Il magazzino di partenza deve essere 1], [PASSED],  
[TdU620], [Verifica la validazione di un InternalOrderDTO corretto], [Non devono esserci errori di validazione], [PASSED],
[TdU621], [Verifica che la validazione fallisca se orderId non inizia con I o S], [Devono essere presenti errori di validazione], [PASSED],
[TdU622], [Verifica che la validazione fallisca se orderState non è uno stato valido], [Devono essere presenti errori di validazione per orderState], [PASSED],
[TdU623], [Verifica che la validazione fallisca se items non è un array], [Devono essere presenti errori di validazione per items], [PASSED],
[TdU624], [Verifica che la validazione fallisca se warehouseDeparture non è un intero], [Devono essere presenti errori di validazione per warehouseDeparture], [PASSED],
[TdU625], [Verifica che la validazione fallisca se warehouseDestination non è un intero], [Devono essere presenti errori di validazione per warehouseDestination], [PASSED],
[TdU626], [Verifica la validazione di un OrderItemDetailDTO corretto], [Non devono esserci errori di validazione], [PASSED],
[TdU627], [Verifica che la validazione fallisca se quantityReserved è negativo], [Devono essere presenti errori di validazione per quantityReserved], [PASSED],
[TdU628], [Verifica che la validazione fallisca se unitPrice ha più di 2 decimali], [Devono essere presenti errori di validazione per unitPrice], [PASSED],
[TdU629], [Verifica che la validazione fallisca se item è mancante], [Devono essere presenti errori di validazione per item], [PASSED],
[TdU630], [Verifica la validazione di un OrderQuantityDTO corretto], [Non devono esserci errori di validazione], [PASSED],
[TdU631], [Verifica che la validazione fallisca se id è mancante], [Devono essere presenti errori di validazione per id], [PASSED],
[TdU632], [Verifica che la validazione fallisca se items è vuoto], [Devono essere presenti errori di validazione per items], [PASSED],
[TdU633], [Verifica che la validazione fallisca se la quantità dell'item è negativa], [Devono essere presenti errori di validazione], [PASSED],
[TdU634], [Verifica che la validazione fallisca se itemId è mancante], [Devono essere presenti errori di validazione], [PASSED],
[TdU635], [Verifica la validazione di un OrdersDTO corretto], [Non devono esserci errori di validazione], [PASSED],
[TdU636], [Verifica che la validazione fallisca se sellOrders non è un array], [Devono essere presenti errori di validazione per sellOrders], [PASSED],
[TdU637], [Verifica che la validazione fallisca se internalOrders non è un array], [Devono essere presenti errori di validazione per internalOrders], [PASSED],
[TdU638], [Verifica la validazione di un SellOrderDTO corretto], [Non devono esserci errori di validazione], [PASSED],
[TdU639], [Verifica che la validazione fallisca se orderState non è uno stato valido], [Devono essere presenti errori di validazione per orderState], [PASSED],
[TdU640], [Verifica che la validazione fallisca se items non è un array], [Devono essere presenti errori di validazione per items], [PASSED],
[TdU641], [Verifica che la validazione fallisca se warehouseDeparture non è un intero], [Devono essere presenti errori di validazione per warehouseDeparture], [PASSED],
[TdU642], [Verifica che la validazione fallisca se destinationAddress è vuoto], [Devono essere presenti errori di validazione per destinationAddress], [PASSED],
[TdU643], [Verifica accesso consentito con token globale in commandOrder], [Deve restituire accesso completo (get: true, call: "")], [PASSED],
[TdU644], [Verifica accesso consentito con warehouseAssigned corrispondente], [Deve restituire accesso completo (get: true, call: "")], [PASSED],
[TdU645], [Verifica accesso negato con warehouseAssigned non corrispondente], [Deve restituire accesso negato (get: false)], [PASSED],
[TdU646], [Verifica accesso negato senza token], [Deve restituire errore di accesso negato], [PASSED],
[TdU647], [Verifica accesso negato con errore nel token], [Deve restituire errore di accesso negato con messaggio], [PASSED],
[TdU648], [Verifica che orderAccess deleghi a checkAccess], [Deve chiamare il metodo checkAccess con i dati corretti], [PASSED],
[TdU649], [Verifica che ordersAccess deleghi a checkAccess], [Deve chiamare il metodo checkAccess con i dati corretti], [PASSED],
[TdU650], [Verifica conversione InternalOrderDTO in InternalOrder], [Deve creare un'istanza corretta di InternalOrder con tutte le proprietà], [PASSED],
[TdU651], [Verifica errore quando magazzino partenza e destinazione sono uguali], [Deve lanciare un errore di validazione], [PASSED],
[TdU652], [Verifica conversione SellOrderDTO in SellOrder], [Deve creare un'istanza corretta di SellOrder con tutte le proprietà], [PASSED],
[TdU653], [Verifica conversione OrderItemDTO in OrderItem], [Deve creare un'istanza corretta di OrderItem con ID e quantità], [PASSED],
[TdU654], [Verifica conversione OrderIdDTO in OrderId], [Deve creare un'istanza corretta di OrderId con ID], [PASSED],
[TdU655], [Verifica conversione OrderIdDTO in OrderId per riferimento ordine vendita], [Deve creare un'istanza corretta di OrderId con ID], [PASSED],
[TdU656], [Verifica conversione OrderStateDTO valido in OrderState], [Deve restituire lo stato ordine corretto], [PASSED],
[TdU657], [Verifica errore per OrderStateDTO non valido], [Deve lanciare un errore di stato non valido], [PASSED],
[TdU658], [Verifica conversione OrderItemDetailDTO in OrderItemDetail], [Deve creare un'istanza corretta con tutte le proprietà], [PASSED],
[TdU659], [Verifica errore quando quantityReserved > quantity], [Deve lanciare un errore di quantità non valida], [PASSED],
[TdU660], [Verifica conversione InternalOrder in InternalOrderDTO], [Deve creare un DTO corretto con tutte le proprietà], [PASSED],
[TdU661], [Verifica conversione SellOrder in SellOrderDTO], [Deve creare un DTO corretto con tutte le proprietà], [PASSED],
[TdU662], [Verifica conversione OrderItem in OrderItemDTO], [Deve creare un DTO corretto con ID e quantità], [PASSED],
[TdU663], [Verifica conversione OrderId in OrderIdDTO], [Deve creare un DTO corretto con ID], [PASSED],
[TdU664], [Verifica conversione OrderId in OrderIdDTO per riferimento ordine vendita], [Deve creare un DTO corretto con ID], [PASSED],
[TdU665], [Verifica conversione OrderState in OrderStateDTO], [Deve creare un DTO corretto con stato], [PASSED],
[TdU666], [Verifica gestione di tutti i valori OrderState in conversione DTO], [Deve gestire correttamente tutti gli stati], [PASSED],
[TdU667], [Verifica conversione OrderItemDetail in OrderItemDetailDTO], [Deve creare un DTO corretto con tutte le proprietà], [PASSED],
[TdU668], [Verifica conversione OrderId e OrderItem[] in OrderQuantityDTO], [Deve creare un DTO corretto con ID e items], [PASSED],
[TdU669], [Verifica gestione array vuoto in orderQuantityToDTO], [Deve creare un DTO con array items vuoto], [PASSED],
[TdU670], [Verifica conversione Orders in OrdersDTO], [Deve creare un DTO corretto con ordini vendita e interni], [PASSED],
[TdU671], [Verifica gestione ordini vuoti in ordersToDTO], [Deve creare un DTO con array vuoti], [PASSED],
[TdU672], [Verifica gestione errori conversione in ordini vendita], [Deve gestire correttamente gli errori di conversione], [PASSED],
[TdU673], [Verifica gestione errori conversione in ordini interni], [Deve gestire correttamente gli errori di conversione], [PASSED],
[TdU674], [Verifica gestione valori null/undefined in conversione DTO to Domain], [Deve gestire correttamente i valori mancanti], [PASSED],
[TdU675], [Verifica gestione di tutti i valori OrderState], [Deve gestire correttamente tutti gli stati], [PASSED],
[TdU676], [Verifica gestione valori zero in orderItemDetailToDomain], [Deve gestire correttamente quantità e prezzo zero], [PASSED],
[TdU677], [Verifica gestione valori decimali in unitPrice], [Deve gestire correttamente i prezzi decimali], [PASSED],
[TdU678], [Verifica conversione round-trip per InternalOrder], [Deve mantenere l'integrità dei dati nella conversione avanti e indietro], [PASSED],
[TdU679], [Verifica conversione round-trip per SellOrder], [Deve mantenere l'integrità dei dati nella conversione avanti e indietro], [PASSED],
[TdU680], [Verifica aggiornamento stock riservato in stockReserved], [Deve chiamare il servizio correttamente con i parametri], [PASSED],
[TdU681], [Verifica aggiornamento stock completo riservato in sufficientProductAvailability], [Deve chiamare il servizio correttamente], [PASSED],
[TdU682], [Verifica aggiunta ordine vendita in addSellOrder], [Deve chiamare il servizio correttamente e restituire ID], [PASSED],
[TdU683], [Verifica aggiunta ordine interno in addInternalOrder], [Deve chiamare il servizio correttamente e restituire ID], [PASSED],
[TdU684], [Verifica spedizione ordine in waitingForStock], [Deve chiamare il servizio correttamente], [PASSED],
[TdU685], [Verifica completamento ordine vendita in stockShipped], [Deve aggiornare stato e completare ordine], [PASSED],
[TdU686], [Verifica ricezione ordine interno in stockShipped], [Deve ricevere l'ordine interno correttamente], [PASSED],
[TdU687], [Verifica completamento ordine in stockReceived], [Deve completare l'ordine correttamente], [PASSED],
[TdU688], [Verifica gestione rifornimento per ordine vendita in replenishmentReceived], [Deve aggiornare stock riservato e verificare quantità], [PASSED],
[TdU689], [Verifica gestione rifornimento per ordine interno in replenishmentReceived], [Deve aggiornare stock riservato e verificare quantità], [PASSED],
[TdU690], [Verifica aggiornamento stato ordine in updateOrderState], [Deve chiamare il servizio correttamente con stato], [PASSED],
[TdU691], [Verifica cancellazione ordine in cancelOrder], [Deve aggiornare stato a CANCELLED], [PASSED],
[TdU692], [Verifica completamento ordine in completeOrder], [Deve completare l'ordine correttamente], [PASSED],
[TdU693], [Verifica recupero stato ordine in getOrderState], [Deve restituire lo stato corretto come DTO], [PASSED],
[TdU694], [Verifica recupero ordine interno in getOrder], [Deve restituire l'ordine interno come DTO], [PASSED],
[TdU695], [Verifica recupero ordine vendita in getOrder], [Deve restituire l'ordine vendita come DTO], [PASSED],
[TdU696], [Verifica errore per tipo ordine sconosciuto in getOrder], [Deve lanciare errore per tipo non riconosciuto], [PASSED],
[TdU697], [Verifica recupero tutti gli ordini in getAllOrders], [Deve restituire tutti gli ordini come DTO], [PASSED],
[TdU698], [Verifica gestione items vuoti in replenishmentReceived], [Deve gestire correttamente array vuoto], [PASSED],
[TdU699], [Verifica gestione items non corrispondenti in replenishmentReceived], [Deve gestire items non presenti nell'ordine], [PASSED],
[TdU700], [Verifica deserializzazione messaggio in InboundResponseDeserializer], [Deve loggare e restituire oggetto con pattern, data e id], [PASSED],
[TdU701], [Verifica creazione microservizio con opzioni corrette in bootstrap], [Deve creare il microservizio con transport NATS e server corretti], [PASSED],
[TdU702], [Verifica recupero InternalOrder in getById], [Deve restituire InternalOrder se trovato], [PASSED],
[TdU703], [Verifica recupero SellOrder se InternalOrder non trovato in getById], [Deve restituire SellOrder se InternalOrder non esiste], [PASSED],
[TdU704], [Verifica errore se ordine non trovato in getById], [Deve lanciare NotFoundException], [PASSED],
[TdU705], [Verifica salvataggio ordine vendita in addSellOrder], [Deve salvare correttamente l'ordine vendita], [PASSED],
[TdU706], [Verifica salvataggio ordine interno in addInternalOrder], [Deve salvare correttamente l'ordine interno], [PASSED],
[TdU707], [Verifica aggiornamento stato InternalOrder in updateOrderState], [Deve aggiornare correttamente lo stato], [PASSED],
[TdU708], [Verifica aggiornamento stato SellOrder in updateOrderState], [Deve aggiornare correttamente lo stato], [PASSED],
[TdU709], [Verifica errore se ordine COMPLETED in removeById], [Deve lanciare RpcException], [PASSED],
[TdU710], [Verifica return false se ordine CANCELED in removeById], [Deve restituire false], [PASSED],
[TdU711], [Verifica errore se ordine non trovato in updateReservedStock], [Deve lanciare errore], [PASSED],
[TdU712], [Verifica errore se quantità insufficiente per ordine vendita in checkReservedQuantityForSellOrder], [Deve lanciare errore], [PASSED],
[TdU713], [Verifica errore se quantità insufficiente per ordine interno in checkReservedQuantityForInternalOrder], [Deve lanciare errore], [PASSED]
)

#let caption_test_unità = (
  [Test di unità di Ordini]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

=== 4.1.9 Microservizio di State

#let voci_test_unità = (
  [TdU799], ["Crea un DTO valido da oggetto plain"], ["DTO valido, nessun errore di validazione"], [PASSED],
  [TdU800], ["Fallisce la validazione se manca lo stato"], ["errors[0].property = 'state'"], [PASSED],
  [TdU801], ["Fallisce la validazione se lo stato non è una stringa"], ["errors[0].property = 'state'"], [PASSED],
  [TdU802], ["Fallisce la validazione se manca warehouseId"], ["errors[0].property = 'warehouseId'"], [PASSED],
  [TdU803], ["Service definito"], ["service definito"], [PASSED],
  [TdU804], ["Crea Heartbeat con messaggio corretto usando syncHeartbeat"], ["heartbeat contiene 'ONLINE', id corretto, timestamp è Date"], [PASSED],
  [TdU805], ["Chiama publishHeartbeat con Heartbeat usando sendHeartBeat"], ["publishHeartbeat chiamato con Heartbeat, dati corretti"], [PASSED],
  [TdU806], ["Crea documento State con tutte le proprietà"], ["doc ha proprietà warehouseId, state, lastHeartbeat, lastHeartbeatMsg"], [PASSED],
  [TdU807], ["Restituisce WarehouseState dal documento"], ["result è WarehouseState, stato = 'ACTIVE'"], [PASSED],
  [TdU808], ["Restituisce stato 'unknown' se non trovato"], ["result è WarehouseState, stato = 'unknown'"], [PASSED],
  [TdU809], ["Restituisce true se update acknowledged"], ["result = true"], [PASSED],
  [TdU810], ["Restituisce false se update non acknowledged"], ["result = false"], [PASSED],
  [TdU811], ["Chiama getSyncedState con input oggetto"], ["getSyncedState chiamato con { id: 5 }"], [PASSED],
  [TdU812], ["Chiama getSyncedState con input stringa"], ["getSyncedState chiamato con { id: 10 }"], [PASSED],
  [TdU813], ["Default a warehouseId 0 se input malformato"], ["getSyncedState chiamato con { id: 0 }"], [PASSED],
  [TdU814], ["Gestisce stringa JSON non valida"], ["logger.error chiamato, getSyncedState con { id: 0 }"], [PASSED],
  [TdU815], ["Chiama connect su onModuleInit"], ["connect chiamato"], [PASSED],
  [TdU816], ["Pubblica heartbeat"], ["emit chiamato con topic heartbeat e dto"], [PASSED],
  [TdU817], ["Pubblica stato magazzino"], ["emit chiamato con topic stato e dati"], [PASSED],
  [TdU818], ["Pubblica stato aggiornato"], ["emit chiamato con topic updated e dati"], [PASSED],
  [TdU819], ["Pubblica stato magazzino tramite adapter"], ["publishState chiamato con warehouseId e state"], [PASSED],
  [TdU820], ["Pubblica heartbeat tramite adapter"], ["publishHeartbeat chiamato con HeartbeatDTO"], [PASSED],
  [TdU821], ["Logga errore se publishState fallisce"], ["logger.error chiamato"], [PASSED],
  [TdU822], ["Logga errore se publishHeartbeat fallisce"], ["logger.error chiamato"], [PASSED],
  [TdU823], ["Chiama sendHeartBeat con oggetti dominio corretti"], ["sendHeartBeat chiamato con WarehouseId e WarehouseState 'ONLINE'"], [PASSED],
  [TdU824], ["Crea entità Heartbeat"], ["getHeartbeatMsg = 'ALIVE', getId = 1"], [PASSED],
  [TdU825], ["Crea entità WarehouseState"], ["getState = 'ACTIVE', dopo setState = 'INACTIVE'"], [PASSED],
  [TdU826], ["Crea entità WarehouseId"], ["getId = 42"], [PASSED],
  [TdU827], ["Mappa WarehouseIdDTO a WarehouseId"], ["entity è WarehouseId, id = 5"], [PASSED],
  [TdU828], ["Mappa WarehouseStateDTO a WarehouseState"], ["entity è WarehouseState, stato = 'ACTIVE'"], [PASSED],
  [TdU829], ["Mappa HeartbeatDTO a Heartbeat"], ["entity è Heartbeat, msg = 'ALIVE', timestamp corretto, id = 1"], [PASSED],
  [TdU830], ["Mappa WarehouseId a WarehouseIdDTO"], ["dto = { id: 10 }"], [PASSED],
  [TdU831], ["Mappa WarehouseState a WarehouseStateDTO"], ["dto.state = 'ACTIVE', dto.warehouseId.id = 3"], [PASSED],
  [TdU832], ["Mappa Heartbeat a HeartbeatDTO"], ["dto è HeartbeatDTO, msg = 'ALIVE', warehouseId = 7, timestamp è Date"], [PASSED]
  )
#let caption_test_unità = (
  [Test di unità di State]
)
#show: unit_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)

== 4.2 Test di integrazione

I test di integrazione servono a verificare che più unità di codice funzionino correttamente insieme. L'obiettivo è individuare problemi che emergono quando i vari moduli interagiscono tra loro, ad esempio errori di comunicazione tra componenti o malintesi sui formati di dati scambiati. Questi test sono particolarmente utili quando si integrano sistemi esterni come database, API o servizi#super[G] di terze parti.

#let voci_test_integrazione = (
    [---], [---], [---], [NI]
  )
#let caption_test_integrazione = (
  [Test di integrazione]
)
#show: test_table.with(
  voci: voci_test_integrazione,
  caption: caption_test_integrazione
)

== 4.3 Test di sistema

I test di sistema valutano il comportamento del software nel suo complesso, simulando l'uso reale da parte dell'utente in un ambiente quanto più possibile simile alla produzione. Questo tipo di test include tutti i componenti integrati e mira a verificare che il sistema nel suo insieme soddisfi i requisiti#super[G] funzionali e non funzionali. È un passaggio fondamentale prima del collaudo finale.

#let voci_test_sistema = (
    [TdS01], [Verificare che il supervisore globale si possa registrare al primo avvio del sistema.], [RF01/01], [NI],
    [TdS02], [Verificare che il supervisore globale abbia inserito l'email.], [RF01/01], [NI],
    [TdS03], [Verificare che il supervisore globale abbia inserito il numero di cellulare.], [RF01/01], [NI],
    [TdS04], [Verificare che il supervisore globale abbia inserito la password.], [RF01/01], [NI],
    [TdS05], [Verificare che il supervisore globale riceva un avviso nel caso in cui l'email è errata dal punto di vista della forma.], [RF01/02], [NI],
    [TdS06], [Verificare che il supervisore globale riceva un avviso nel caso in cui il numero di cellulare è errato dal punto di vista della forma.], [RF01/03], [NI],
    [TdS07], [Verificare che il supervisore globale riceva un avviso nel caso in cui la password non rispetti la sintassi.], [RF01/04], [NI],
    [TdS08], [Verificare che il supervisore globale riceva un avviso nel caso in cui la password e conferma password non corrispondono.], [RF01/05], [NI],
    [TdS09], [Verificare che l'utente non autenticato possa effettuare l'autenticazione#super[G].], [RF02/01], [NI],
    [TdS10], [Verificare che l'utente non autenticato abbia inserito l'email.], [RF02/01], [NI],
    [TdS11], [Verificare che l'utente non autenticato abbia inserito la password.], [RF02/01], [NI],
    [TdS12], [Verificare che l'utente non autenticato riceva un avviso in caso di errore di autenticazione#super[G].], [RF02/03], [NI],
    [TdS13], [Verificare che l'utente possa effettuare il logout dal sistema.], [RF02/02], [NI],
    [TdS14], [Verificare che il supervisore globale possa registrare nuovi supervisori locali.], [RF03/01], [NI],
    [TdS15], [Verificare che il supervisore globale abbia inserito l'email per la registrazione di un nuovo supervisore locale.], [RF03/01], [NI],
    [TdS16], [Verificare che il supervisore globale abbia inserito il numero di cellulare per la registrazione di un nuovo supervisore locale.], [RF03/01], [NI],
    [TdS17], [Verificare che il supervisore globale abbia inserito la password per la registrazione di un nuovo supervisore locale.], [RF03/01], [NI],
    [TdS18], [Verificare che il supervisore globale riceva un avviso nel caso in cui l'email è errata dal punto di vista della forma per la registrazione di un nuovo supervisore locale.], [RF03/03], [NI],
    [TdS19], [Verificare che il supervisore globale riceva un avviso nel caso in cui il numero di cellulare è errato dal punto di vista della forma per la registrazione di un nuovo supervisore locale.], [RF03/05], [NI],
    [TdS20], [Verificare che il supervisore globale riceva un avviso nel caso in cui la password non rispetti la sintassi per la registrazione di un nuovo supervisore locale.], [RF03/04], [NI],
    [TdS21], [Verificare che il supervisore globale assegni il/i magazzino/i a cui il supervisore locale ha accesso in fase di registrazione di un nuovo supervisore locale.], [RF03/02], [NI],
    [TdS22], [Verificare che il supervisore globale abbia inserito l'indirizzo fisico del magazzino aggiunto.], [RF04/01], [NI],
    [TdS23], [Verificare che il supervisore globale possa rimuovere un magazzino dal sistema.], [RF04/02], [NI],
    [TdS24], [Verificare che il supervisore globale abbia inserito il supervisore locale al magazzino.], [RF04/03], [NI],
    [TdS25], [Verificare che ogni magazzino sia identificato univocamente.], [RF04/04], [NI],
    [TdS26], [Verificare che il supervisore globale possa modificare le informazioni del magazzino], [RF04/03], [NI],
    [TdS27], [Verificare che, per l’inserimento di un nuovo tipo di merce nell’inventario#super[G], questa abbia un codice EAN univoco.], [RF05/01], [NI],
    [TdS28], [Verificare che, per l’inserimento di un nuovo tipo di merce nell'inventario#super[G], questa abbia un nome.], [RF05/01], [NI],
    [TdS29], [Verificare che, per l’inserimento di un nuovo tipo di merce nell’inventario#super[G], sia presente un avviso nel caso in cui il codice EAN non rispetti la sintassi prevista.], [RF05/02], [NI],
    [TdS30], [Verificare che, per l’inserimento di un nuovo tipo di merce nell’inventario#super[G], in caso di inserimento o modifica del prezzo unitario, sia presente un avviso nel caso in cui quest’ultimo non rispetti la forma corretta.], [RF05/03 RF05/04 RF05/10], [NI],
    [TdS31], [Verificare che, per l’inserimento di un nuovo tipo di merce nell’inventario#super[G], in caso di inserimento o modifica della quantità, sia presente un avviso nel caso in cui quest’ultima non rispetti la forma corretta.], [RF05/05 RF05/06 RF05/08 RF05/09], [NI],
    [TdS32], [Verificare che i supervisori possano rimuovere un tipo di prodotto#super[G] dall’inventario#super[G] solo se la quantità di quel prodotto#super[G] è zero.], [RF05/07], [NI],
    [TdS33], [Verificare che, per l’inserimento di un ordine#super[G] di trasferimento#super[G] interno, sia selezionato il magazzino di partenza.], [RF06/01], [NI],
    [TdS34], [Verificare che, per l’inserimento di un ordine#super[G] di vendita verso l’esterno, sia inserito l’indirizzo del destinatario.], [RF06/02], [NI],
    [TdS35], [Verificare che, per l’inserimento di un ordine#super[G], siano inseriti uno o più prodotti.], [RF06/01 RF06/02], [NI],
    [TdS36], [Verificare che, per l’inserimento di un ordine#super[G], sia presente un avviso se la quantità di prodotto#super[G] non è corretta nella forma.], [RF06/03], [NI],
    [TdS37], [Verificare che i supervisori possano annullare ordini “in attesa” o “in elaborazione”.], [RF06/04], [NI],
    [TdS38], [Verificare che il supervisore globale possa visualizzare correttamente l’inventario#super[G] globale.], [RF07/01], [NI],
    [TdS39], [Verificare che il supervisore globale possa visualizzare correttamente l’inventario#super[G] di ciascun magazzino.], [RF07/02], [NI],
    [TdS40], [Verificare che il supervisore globale possa visualizzare correttamente un report degli ordini globali.], [RF07/03], [NI],
    [TdS41], [Verificare che il supervisore globale possa visualizzare correttamente un report degli ordini di ciascun magazzino.], [RF07/04], [NI],
    [TdS42], [Verificare che i supervisori locali possano visualizzare correttamente l’inventario#super[G] del/dei magazzino/i a loro assegnato/i.], [RF07/05], [NI],
    [TdS43], [Verificare che i supervisori locali possano visualizzare correttamente un report degli ordini del/dei magazzino/i a loro assegnato/i.], [RF07/06], [NI],
    [TdS44], [Verificare che i supervisori possano visualizzare correttamente lo stato di tutti i magazzini.], [RF08], [NI],
    [TdS45], [Verificare che i supervisori possano visualizzare correttamente le notifiche informative prodotte dal sistema.], [RF09/01], [NI],
    [TdS46], [Verificare che il supervisore globale possa accettare le richieste decisionali prodotte dal sistema.], [RF09/02], [NI],
    [TdS47], [Verificare che il supervisore globale possa rifiutare le richieste decisionali prodotte dal sistema.], [RF09/03], [NI],
    [TdS48], [Verificare che, in caso di inserimento o modifica del valore di soglia minima in un prodotto#super[G] da parte dei supervisori, si riceva un avviso nel caso in cui il valore di soglia minima non sia nella forma corretta.], [RF10/01 RF10/03 RF10/04 RF10/05 RF10/06 RF10/07], [NI],
    [TdS49], [Verificare che, in caso di inserimento o modifica del valore di soglia massima in un prodotto#super[G] da parte dei supervisori, si riceva un avviso nel caso in cui il valore di soglia massima non sia nella forma corretta.], [RF10/02 RF10/03 RF10/04 RF10/05 RF10/06 RF10/07], [NI],
    [TdS50], [Verificare che ogni magazzino identifichi quando le scorte#super[G] di un determinato prodotto#super[G] scendono sotto una certa soglia.], [RF11/01], [NI],
    [TdS51], [Verificare che ogni magazzino identifichi quando le scorte#super[G] di un determinato prodotto#super[G] salgono sopra una certa soglia.], [RF11/02], [NI],
    [TdS52], [Verificare che ogni magazzino verifichi la disponibilità delle scorte#super[G] prima di soddisfare un ordine#super[G].], [RF12/01], [NI],
    [TdS53], [Verificare che ogni magazzino identifichi l’impossibilità di soddisfare un ordine#super[G].], [RF12/02], [NI],
    [TdS54], [Verificare che ogni magazzino identifichi l’insufficienza di scorte#super[G] per ciascun prodotto#super[G].], [RF12/03], [NI],
    [TdS55], [Verificare che, in caso di insufficienza di scorte#super[G] per un determinato prodotto#super[G], il magazzino in questione richieda un riassortimento#super[G] al sistema.], [RF12/03], [NI],
    [TdS56], [Verificare che ogni magazzino abbia un tracciamento dello stato degli ordini.], [RF12/04], [NI],
    [TdS57], [Verificare che i magazzini possono inviare merce tramite un ordine#super[G].], [RF12/05], [NI],
    [TdS58], [Verificare che i magazzini possono ricevere un approvvigionamento#super[G] di merce dall’esterno tramite un ordine#super[G].], [RF12/06], [NI],
    [TdS59], [Verificare che i magazzini possono inviare merce verso l’esterno tramite un ordine#super[G].], [RF12/07], [NI],
    [TdS60], [Verificare che il magazzino di destinazione notifichi l’arrivo della merce al magazzino di origine.], [RF12/08], [NI],
    [TdS61], [Verificare che venga rispettata la forma dello stato dell’ordine#super[G]. Sono ammessi i seguenti stati: “in attesa”, “in elaborazione”, “in transito”, “annullato”, “consegnato”.], [RF12/09], [NI],
    [TdS62], [Verificare che venga rispettata la forma dello stato del magazzino. Sono ammessi i seguenti stati: “online”, “offline”.], [RF14/01], [NI],
    [TdS63], [Verificare che il sistema mostri un avviso di un eventuale cambio di stato del magazzino.], [RF14/02], [NI],
    [TdS64], [Verificare che il sistema identifichi eventuali disconnessioni di uno o più magazzini segnandoli come offline.], [RF14/03], [NI],
    [TdS65], [Verificare che il sistema sia in grado di programmare trasferimenti interni in caso di raggiungimento di una soglia critica di un prodotto#super[G] in un magazzino.], [RF13/01], [NI],
    [TdS66], [Verificare che, nel caso di un magazzino offline, quest’ultimo annulli gli ordini che non può soddisfare dopo un periodo di tempo predefinito.], [RF15/01], [NI],
    [TdS67], [Verificare che il supervisore globale possa definire il periodo di tempo dopo cui l'ordine#super[G] di un magazzino offline viene annullato.], [RF15/02], [NI],
    [TdS68], [Verificare che il sistema riconosca il ritorno di un magazzino da “offline” a “online”.], [RF16/01], [NI],
    [TdS69], [Verificare che un ordine#super[G] “in transito” cambi il suo stato in “annullato” dopo il superamento di una soglia temporale predefinita.], [RF17/01], [NI],
    [TdS70], [Verificare che il supervisore globale possa definire la soglia temporale dopo cui un ordine#super[G] “in transito” cambi il suo stato in “annullato”.], [RF17/02], [NI],
  )
#let caption_test_sistema = (
  [Test di sistema]
)

#show figure: set block(breakable: true)
#show: test_table.with(
  voci: voci_test_sistema,
  caption: caption_test_sistema
)

== 4.4 Test di accettazione

I test di accettazione vengono eseguiti per verificare che il software soddisfi i requisiti#super[G] concordati con il cliente#super[G] o l'utente finale. Sono spesso definiti sulla base di scenari realistici o specifiche formali (come le User Story o i Criteri di Accettazione). Questi test rappresentano l'ultima fase di verifica prima del rilascio del prodotto#super[G] e determinano se esso può essere considerato “pronto per l'uso”.

#let voci_test_accettazione = (
  [---], [---], [---], [NI]
  )
#let caption_test_accettazione = (
  [Test di Accettazione]
)
#show figure: set block(breakable: true)
#show: test_table.with(
  voci: voci_test_accettazione,
  caption: caption_test_accettazione
)
#pagebreak()
= 5. Cruscotto di Valutazione
// Inserire qui i vari punti di valutazione delle metriche in base alle metriche di qualità che verranno riportate nella sezione 2, per il momento si può lasciare vuoto
== 5.1 Valutazione dei costi
Il cruscotto di valutazione dei costi permette di monitorare l'andamento dei costi rispetto a quelli pianificati, evidenziando eventuali scostamenti e permettendo una gestione più efficace del budget. Le metriche principali includono il valore atteso, il costo attuale, il valore effettivo, l'indice di prestazione dei costi e il preventivo al completamento.

#let valori_grafico_costi_atteso = (
  (1,970), (2,1020), (3,1145), (4,1160), (5,1090), (6,1150), (7,980), (8,680), (9,1220), (10,1540), (11,1790), (12,1470)
)
#let valori_grafico_costi_reale = (
  (1,970), (2,790), (3,1140), (4,1220), (5,955), (6,985), (7,980), (8,530), (9,1205), (10,1380)
)
#show figure: set block(breakable: false)
#show : graph_line.with(
  caption: "Valutazione dei costi",
  data_atteso: valori_grafico_costi_atteso,
  data_reale: valori_grafico_costi_reale,
  label_atteso: "Costo atteso",
  label_reale: "Costo reale",
  label_x: "Sprint",
  label_y: "Costo",
  y-max: 1900,
  y-min: 0,
  y-tick-step: 100
)

Possiamo osservare che il costo atteso e il costo reale sono molto vicini, con un leggero scostamento nei primi sprint. Questo indica una buona gestione dei costi fino a questo punto del progetto.\
Gli scostamenti sono minimi e non superano il 10% rispetto al costo atteso, il che è un buon segno di stabilità finanziaria del progetto.

== 5.2 Grafico valore atteso ed effettivo

Il grafico del valore atteso ed effettivo mostra l'andamento del valore pianificato rispetto al valore effettivo ottenuto fino ad oggi.
Partendo dal budget iniziale di 14.430€, il valore atteso ed effettivo diminuisce progressivamente, in base ai costi sostenuti per ogni sprint. Il valore atteso rappresenta il budget pianificato per ogni sprint, mentre il valore effettivo rappresenta i costi reali sostenuti fino a quel momento.

#let valori_grafico_valore_atteso = (
  (0, 14430), (1, 13460), (2, 12440), (3, 11295), (4, 10135), (5, 9045), (6, 7895), (7, 6915), (8, 6235), (9,5640), (10,4100), (11,2310)
)
#let valori_grafico_valore_effettivo = (
  (0, 14430), (1, 13460), (2, 12670), (3, 11530), (4, 10310), (5, 9355), (6, 8370), (7, 7390), (8, 6860), (9,5655), (10,4275)
)
#show figure: set block(breakable: false)
#show : graph_line.with(
  caption: "Valore atteso ed effettivo",
  data_atteso: valori_grafico_valore_atteso,
  data_reale: valori_grafico_valore_effettivo,
  label_atteso: "Valore atteso",
  label_reale: "Valore effettivo",
  label_x: "Sprint",
  label_y: "Valore (€)",
  y-max: 15000,
  y-min: 0,
  y-tick-step: 1000
)

Dal grafico si evince che il valore atteso diminuisce progressivamente, mentre il valore effettivo mostra una leggera fluttuazione. Questo indica che, sebbene i costi siano stati sostenuti in modo pianificato, ci sono state alcune variazioni nei costi reali rispetto a quelli previsti. Tuttavia, il valore effettivo rimane sempre al di sopra del valore atteso, il che è un segno positivo per la gestione del budget.\
Abbiamo sempre preventivato in modo conservativo per evitare di sforare il budget iniziale, e questo approccio si è dimostrato efficace fino ad ora.\
Infatti, mantenendo questa tendenza riguardo il valore effettivo, possiamo notare che il progetto dovrebbe rimanere entro i limiti del budget iniziale di 14.430€.


== 5.3 Indice di prestazione dei tempi (tempo attuale e tempo pianificato per ogni sprint)

Il grafico dell'indice di prestazione dei tempi mostra l'andamento del tempo pianificato rispetto al tempo effettivo impiegato per completare ogni sprint.\
L'indice di prestazione dei tempi (SPI) è calcolato come il rapporto tra il valore pianificato e il valore effettivo. Se l'SPI è maggiore di 1, significa che il progetto sta procedendo più velocemente del previsto; se è inferiore a 1, significa che il progetto sta procedendo più lentamente del previsto.

#let valori_grafico_spi = (
  (1, 1.0), (2, 0.95), (3, 0.9), (4, 0.85), (5, 0.8), (6, 0.75), (7, 0.8), (8, 0.85)
)
#show figure: set block(breakable: false)
#show : graph_bar.with(
  caption: "Indice di prestazione dei tempi",
  data: valori_grafico_spi,
  label_x: "Sprint",
  label_y: "Indice di prestazione dei tempi (SPI)",
  y-max: 1.2,
  y-min: 0.5,
  y-tick-step: 0.1,
  y-dash: 1,
  //potremmo inserire una linea orizzontale a 1 per indicare il valore di riferimento
) 

L'indice di prestazione dei tempi mostra una tendenza al ribasso, indicando che il progetto sta procedendo più lentamente del previsto. Tuttavia, l'SPI è ancora superiore a 0.5, il che significa che il progetto sta comunque rispettando i tempi pianificati in modo accettabile.\
Come si può notare dal grafico, abbiamo subito dei rallentamenti negli sprint centrali, dovuti allo studio delle tecnologie non conosciute e alla complessità dell'Analisi dei Requisiti#super[G] e della progettazione. \
Tuttavia, nell'ultimo sprint, che riguarda la fase di sviluppo del PoC, abbiamo recuperato parte del tempo perso, portando l'indice di prestazione dei tempi a 0.8. Il team prevede di mantenere questo ritmo di recupero anche nei prossimi sprint, cercando di migliorare ulteriormente l'efficienza.


== 5.4 Grafico indice di stabilità dei requisiti

Il grafico dell'indice di stabilità dei requisiti mostra l'andamento della stabilità dei requisiti nel tempo. L'indice di stabilità dei requisiti è calcolato come il rapporto tra il numero di requisiti stabili e il numero totale di requisiti. Un indice più alto indica una maggiore stabilità dei requisiti, mentre un indice più basso indica una minore stabilità.

#let valori_grafico_stabilita_requisiti = (
  (1, 0.43), (2, 0.64), (3, 0.86), (4, 0.81), (5, 0.55), (6, 0.68), (7, 0.82), (8, 0.82)
)
#show figure: set block(breakable: false)
#show : graph_bar.with(
  caption: "Indice di stabilità dei requisiti",
  data: valori_grafico_stabilita_requisiti,
  label_x: "Sprint",
  label_y: "Indice di stabilità dei requisiti (%)",
  y-max: 1,
  y-min: 0,
  y-tick-step: 0.01,
  y-dash: 0.7
)

L'indice di stabilità dei requisiti mostra una tendenza al ribasso nel quinto sprint, a causa delle modifiche apportate ai requisiti dopo il primo incontro con il #p.cardin. Tuttavia, negli sprint successivi, l'indice è aumentato nuovamente, raggiungendo un picco dell'82% nell'ultimo sprint. Questo suggerisce che le modifiche apportate grazie ai consigli del #p.cardin hanno avuto un impatto positivo sulla stabilità dei requisiti e che il team sta lavorando per mantenere questa stabilità anche nei prossimi sprint.

== 5.5 Grafico indice di Gulpease

Il grafico dell'indice di Gulpease mostra l'andamento della leggibilità del documento nel tempo. Un indice più alto indica una maggiore leggibilità, mentre un indice più basso indica una minore leggibilità. L'obiettivo è mantenere l'indice sopra il valore minimo di 50 per garantire che il documento sia facilmente comprensibile.

#let valori_grafico_gulpease = (
  (1, 40), (2, 38), (3, 50), (4, 55), (5, 58), (6, 58), (7, 58), (8, 61)
)
#show figure: set block(breakable: false)
#show : graph_bar.with(
  caption: "Indice di Gulpease",
  data: valori_grafico_gulpease,
  label_x: "Sprint",
  label_y: "Indice di Gulpease",
  y-max: 100,
  y-min: 0,
  y-tick-step: 10,
  y-dash: 50
)

Inizialmente l'indice di Gulpease era sotto il valore minimo di 50, indicando una bassa leggibilità del documento. Tuttavia, grazie agli sforzi per migliorare la qualità della documentazione, l'indice è aumentato e si è stabilizzato sopra il valore minimo, raggiungendo un picco di 58 negli ultimi sprint. Questo suggerisce che le modifiche apportate hanno avuto un impatto positivo sulla leggibilità del documento.
