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

#let voci_test_unità = (
    [---], [---], [---], [NI]
  )
#let caption_test_unità = (
  [Test di unità]
)
#show: test_table.with(
  voci: voci_test_unità,
  caption: caption_test_unità
)
#pagebreak()

== 4.2 Test di integrazione

I test di integrazione servono a verificare che più unità di codice funzionino correttamente insieme. L'obiettivo è individuare problemi che emergono quando i vari moduli interagiscono tra loro, ad esempio errori di comunicazione tra componenti o malintesi sui formati di dati scambiati. Questi test sono particolarmente utili quando si integrano sistemi esterni come database, API o servizi#super[G] di terze parti.

#let voci_test_integrazione = (
    [TdI01], [Testare la verifica del JWT(Json Web Token) tramite il microservizio autenticazione, Resgate e accesso ad un dato microservizio], [] , [S],
    [TdI02], [Testare la sincronizzazione da Inventario a Inventario Aggregato dopo un operazione di aggiunta/modifica/rimozione], [] , [S],
    [TdI03], [Testare la sincronizzazione da Ordine a Ordine Aggregato dopo un operazione di aggiunta/modifica], [] , [S],
    [TdI04], [Testare interazione tra microservizi stato e microservizio stato Aggregato], [] , [S],
    [TdI05], [Testare interazione tra Magazzini differenti in caso di ordine interno], [] , [S],
    [TdI06], [Testare interazione tra microservizio Ordini e Inventario], [] , [S],
    [TdI07], [Testare interazione tra microservizio Inventario a Inventario], [] , [S],
    [TdI08], [Testare interazione tra microservizio Inventario e Sistema centralizzato in caso di criticità soglia Min o Max], [] , [S],
    [TdI09], [Testare interazione tra microservizio Ordine e Sistema centralizzato in caso di insufficienza Prodotti], [] , [S],
    [TdI09], [Testare interazione tra microservizio Sistema centralizzato e Inventario aggregato per ottenere inventario], [] , [S],
    [TdI10], [Testare interazione tra microservizio Sistema centralizzato e Ordine aggregato per ottenere ordini], [] , [S],
    [TdI11], [Testare interazione tra microservizio Sistema centralizzato e Routing per ottenere informazioni sulla distanza dei magazzini], [] , [S],
    [TdI12], [Testare interazione tra Inventario e MongoDB per archiviazione prodotti], [] , [S],
    [TdI13], [Testare interazione tra Ordini e MongoDB per archiviazione ordini], [] , [S]
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
Questi test sono stati testati manualmente tramite blocchi di chiamate API che simulavano interazioni realistiche con il sistema.

#let voci_test_sistema = (
    [TdS01], [Verificare che il supervisore globale si possa registrare al primo avvio del sistema.], [RF01/01], [S],
    [TdS02], [Verificare che il supervisore globale abbia inserito l'email.], [RF01/01], [S],
    [TdS03], [Verificare che il supervisore globale abbia inserito il numero di cellulare.], [RF01/01], [S],
    [TdS04], [Verificare che il supervisore globale abbia inserito la password.], [RF01/01], [S],
    [TdS05], [Verificare che il supervisore globale riceva un avviso nel caso in cui l'email è errata dal punto di vista della forma.], [RF01/02], [S],
    [TdS06], [Verificare che il supervisore globale riceva un avviso nel caso in cui il numero di cellulare è errato dal punto di vista della forma.], [RF01/03], [S],
    [TdS07], [Verificare che il supervisore globale riceva un avviso nel caso in cui la password non rispetti la sintassi.], [RF01/04], [S],
    [TdS08], [Verificare che il supervisore globale riceva un avviso nel caso in cui la password e conferma password non corrispondono.], [RF01/05], [S],
    [TdS09], [Verificare che l'utente non autenticato possa effettuare l'autenticazione#super[G].], [RF02/01], [S],
    [TdS10], [Verificare che l'utente non autenticato abbia inserito l'email.], [RF02/01], [S],
    [TdS11], [Verificare che l'utente non autenticato abbia inserito la password.], [RF02/01], [S],
    [TdS12], [Verificare che l'utente non autenticato riceva un avviso in caso di errore di autenticazione#super[G].], [RF02/03], [S],
    [TdS13], [Verificare che l'utente possa effettuare il logout dal sistema.], [RF02/02], [S],
    [TdS14], [Verificare che il supervisore globale possa registrare nuovi supervisori locali.], [RF03/01], [S],
    [TdS15], [Verificare che il supervisore globale abbia inserito l'email per la registrazione di un nuovo supervisore locale.], [RF03/01], [S],
    [TdS16], [Verificare che il supervisore globale abbia inserito il numero di cellulare per la registrazione di un nuovo supervisore locale.], [RF03/01], [S],
    [TdS17], [Verificare che il supervisore globale abbia inserito la password per la registrazione di un nuovo supervisore locale.], [RF03/01], [S],
    [TdS18], [Verificare che il supervisore globale riceva un avviso nel caso in cui l'email è errata dal punto di vista della forma per la registrazione di un nuovo supervisore locale.], [RF03/03], [S],
    [TdS19], [Verificare che il supervisore globale riceva un avviso nel caso in cui il numero di cellulare è errato dal punto di vista della forma per la registrazione di un nuovo supervisore locale.], [RF03/05], [S],
    [TdS20], [Verificare che il supervisore globale riceva un avviso nel caso in cui la password non rispetti la sintassi per la registrazione di un nuovo supervisore locale.], [RF03/04], [S],
    [TdS21], [Verificare che il supervisore globale assegni il/i magazzino/i a cui il supervisore locale ha accesso in fase di registrazione di un nuovo supervisore locale.], [RF03/02], [S],
    [TdS22], [Verificare che il supervisore globale abbia inserito l'indirizzo fisico del magazzino aggiunto.], [RF04/01], [S],
    [TdS23], [Verificare che il supervisore globale possa rimuovere un magazzino dal sistema.], [RF04/02], [S],
    [TdS24], [Verificare che il supervisore globale abbia inserito il supervisore locale al magazzino.], [RF04/03], [S],
    [TdS25], [Verificare che ogni magazzino sia identificato univocamente.], [RF04/04], [S],
    [TdS26], [Verificare che il supervisore globale possa modificare le informazioni del magazzino], [RF04/03], [S],
    [TdS27], [Verificare che, per l’inserimento di un nuovo tipo di merce nell’inventario#super[G], questa abbia un codice EAN univoco.], [RF05/01], [S],
    [TdS28], [Verificare che, per l’inserimento di un nuovo tipo di merce nell'inventario#super[G], questa abbia un nome.], [RF05/01], [S],
    [TdS29], [Verificare che, per l’inserimento di un nuovo tipo di merce nell’inventario#super[G], sia presente un avviso nel caso in cui il codice EAN non rispetti la sintassi prevista.], [RF05/02], [S],
    [TdS30], [Verificare che, per l’inserimento di un nuovo tipo di merce nell’inventario#super[G], in caso di inserimento o modifica del prezzo unitario, sia presente un avviso nel caso in cui quest’ultimo non rispetti la forma corretta.], [RF05/03 RF05/04 RF05/10], [S],
    [TdS31], [Verificare che, per l’inserimento di un nuovo tipo di merce nell’inventario#super[G], in caso di inserimento o modifica della quantità, sia presente un avviso nel caso in cui quest’ultima non rispetti la forma corretta.], [RF05/05 RF05/06 RF05/08 RF05/09], [S],
    [TdS32], [Verificare che i supervisori possano rimuovere un tipo di prodotto#super[G] dall’inventario#super[G] solo se la quantità di quel prodotto#super[G] è zero.], [RF05/07], [S],
    [TdS33], [Verificare che, per l’inserimento di un ordine#super[G] di trasferimento#super[G] interno, sia selezionato il magazzino di partenza.], [RF06/01], [S],
    [TdS34], [Verificare che, per l’inserimento di un ordine#super[G] di vendita verso l’esterno, sia inserito l’indirizzo del destinatario.], [RF06/02], [S],
    [TdS35], [Verificare che, per l’inserimento di un ordine#super[G], siano inseriti uno o più prodotti.], [RF06/01 RF06/02], [S],
    [TdS36], [Verificare che, per l’inserimento di un ordine#super[G], sia presente un avviso se la quantità di prodotto#super[G] non è corretta nella forma.], [RF06/03], [S],
    [TdS37], [Verificare che i supervisori possano annullare ordini “in attesa” o “in elaborazione”.], [RF06/04], [S],
    [TdS38], [Verificare che il supervisore globale possa visualizzare correttamente l’inventario#super[G] globale.], [RF07/01], [S],
    [TdS39], [Verificare che il supervisore globale possa visualizzare correttamente l’inventario#super[G] di ciascun magazzino.], [RF07/02], [S],
    [TdS40], [Verificare che il supervisore globale possa visualizzare correttamente un report degli ordini globali.], [RF07/03], [S],
    [TdS41], [Verificare che il supervisore globale possa visualizzare correttamente un report degli ordini di ciascun magazzino.], [RF07/04], [S],
    [TdS42], [Verificare che i supervisori locali possano visualizzare correttamente l’inventario#super[G] del/dei magazzino/i a loro assegnato/i.], [RF07/05], [S],
    [TdS43], [Verificare che i supervisori locali possano visualizzare correttamente un report degli ordini del/dei magazzino/i a loro assegnato/i.], [RF07/06], [S],
    [TdS44], [Verificare che i supervisori possano visualizzare correttamente lo stato di tutti i magazzini.], [RF08], [S],
    [TdS45], [Verificare che i supervisori possano visualizzare correttamente le notifiche informative prodotte dal sistema.], [RF09/01], [S],
    [TdS46], [Verificare che il supervisore globale possa accettare le richieste decisionali prodotte dal sistema.], [RF09/02], [S],
    [TdS47], [Verificare che il supervisore globale possa rifiutare le richieste decisionali prodotte dal sistema.], [RF09/03], [S],
    [TdS48], [Verificare che, in caso di inserimento o modifica del valore di soglia minima in un prodotto#super[G] da parte dei supervisori, si riceva un avviso nel caso in cui il valore di soglia minima non sia nella forma corretta.], [RF10/01 RF10/03 RF10/04 RF10/05 RF10/06 RF10/07], [S],
    [TdS49], [Verificare che, in caso di inserimento o modifica del valore di soglia massima in un prodotto#super[G] da parte dei supervisori, si riceva un avviso nel caso in cui il valore di soglia massima non sia nella forma corretta.], [RF10/02 RF10/03 RF10/04 RF10/05 RF10/06 RF10/07], [S],
    [TdS50], [Verificare che ogni magazzino identifichi quando le scorte#super[G] di un determinato prodotto#super[G] scendono sotto una certa soglia.], [RF11/01], [S],
    [TdS51], [Verificare che ogni magazzino identifichi quando le scorte#super[G] di un determinato prodotto#super[G] salgono sopra una certa soglia.], [RF11/02], [S],
    [TdS52], [Verificare che ogni magazzino verifichi la disponibilità delle scorte#super[G] prima di soddisfare un ordine#super[G].], [RF12/01], [S],
    [TdS53], [Verificare che ogni magazzino identifichi l’impossibilità di soddisfare un ordine#super[G].], [RF12/02], [S],
    [TdS54], [Verificare che ogni magazzino identifichi l’insufficienza di scorte#super[G] per ciascun prodotto#super[G].], [RF12/03], [S],
    [TdS55], [Verificare che, in caso di insufficienza di scorte#super[G] per un determinato prodotto#super[G], il magazzino in questione richieda un riassortimento#super[G] al sistema.], [RF12/03], [S],
    [TdS56], [Verificare che ogni magazzino abbia un tracciamento dello stato degli ordini.], [RF12/04], [S],
    [TdS57], [Verificare che i magazzini possono inviare merce tramite un ordine#super[G].], [RF12/05], [S],
    [TdS58], [Verificare che i magazzini possono ricevere un approvvigionamento#super[G] di merce dall’esterno tramite un ordine#super[G].], [RF12/06], [S],
    [TdS59], [Verificare che i magazzini possono inviare merce verso l’esterno tramite un ordine#super[G].], [RF12/07], [S],
    [TdS60], [Verificare che il magazzino di destinazione notifichi l’arrivo della merce al magazzino di origine.], [RF12/08], [S],
    [TdS61], [Verificare che venga rispettata la forma dello stato dell’ordine#super[G]. Sono ammessi i seguenti stati: “in attesa”, “in elaborazione”, “in transito”, “annullato”, “consegnato”.], [RF12/09], [S],
    [TdS62], [Verificare che venga rispettata la forma dello stato del magazzino. Sono ammessi i seguenti stati: “online”, “offline”.], [RF14/01], [S],
    [TdS63], [Verificare che il sistema mostri un avviso di un eventuale cambio di stato del magazzino.], [RF14/02], [S],
    [TdS64], [Verificare che il sistema identifichi eventuali disconnessioni di uno o più magazzini segnandoli come offline.], [RF14/03], [S],
    [TdS65], [Verificare che il sistema sia in grado di programmare trasferimenti interni in caso di raggiungimento di una soglia critica di un prodotto#super[G] in un magazzino.], [RF13/01], [S],
    [TdS66], [Verificare che, nel caso di un magazzino offline, quest’ultimo annulli gli ordini che non può soddisfare dopo un periodo di tempo predefinito.], [RF15/01], [S],
    [TdS67], [Verificare che il supervisore globale possa definire il periodo di tempo dopo cui l'ordine#super[G] di un magazzino offline viene annullato.], [RF15/02], [S],
    [TdS68], [Verificare che il sistema riconosca il ritorno di un magazzino da “offline” a “online”.], [RF16/01], [S],
    [TdS69], [Verificare che un ordine#super[G] “in transito” cambi il suo stato in “annullato” dopo il superamento di una soglia temporale predefinita.], [RF17/01], [S],
    [TdS70], [Verificare che il supervisore globale possa definire la soglia temporale dopo cui un ordine#super[G] “in transito” cambi il suo stato in “annullato”.], [RF17/02], [S],
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
  (1, 1.0), (2, 0.95), (3, 0.9), (4, 0.85), (5, 0.8), (6, 0.75), (7, 0.8), (8, 0.85), (9, 0.85), (10, 0.8)
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
  (1, 0.43), (2, 0.64), (3, 0.86), (4, 0.81), (5, 0.55), (6, 0.68), (7, 0.82), (8, 0.82), (9, 0.82),
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
  (1, 40), (2, 38), (3, 50), (4, 55), (5, 58), (6, 58), (7, 58), (8, 61), (9, 60), (10, 60)
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
