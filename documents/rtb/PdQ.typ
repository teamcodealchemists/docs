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
#let versione = "0.2.0"

#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  p.tullio,
  p.cardin,
)

#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
  [0.3.0],
  [10/07/2025],
  [-],
  [-],
  [-],

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

= 1. Introduzione
== 1.1 Scopo del documento

Il presente documento ha lo scopo di definire le modalità di qualifica e verifica del prodotto#super[G] software. Esso rappresenta un indice di valutazione del prodotto#super[G] software, delle sue componenti e degli strumenti utilizzati. L'obiettivo è quello di garantire la qualità del prodotto#super[G] finale.

Il Piano di Qualifica#super[G] si basa su tre aspetti principali:

=== 1.1.1 Piano della Qualità
- Fissare gli standard del prodotto#super[G] e i tipi di test da effettuare;
- Indicare gli obiettivi e le modalità di qualifica;
- Stabilire le regole a cui attenersi.

=== 1.1.2 Controllo di Qualità
- Attuare e assicurare la conformità con le regole da seguire e il Way of Working#super[G] ;
- L'operato viene monitorato attraverso il Cruscotto di Valutazione;
- Effettuare il Quality Assurance passo-passo per prevenire e mitigare i rischi e verificare la soddisfazione dei requisiti#super[G].

== 1.2 Glossario
Per una corretta comprensione del documento, viene fornito un glossario dei termini utilizzati. Ogni termine è indicato da una "#super[G]" in apice alla parola#super[G].
Per trovare il significato del termine, è possibile consultare il glossario al seguente indirizzo: 
#underline[#link("https://teamcodealchemists.github.io/glossario.html")]\
== 1.3 Riferimenti

=== 1.3.1 Riferimenti normativi  

- *Capitolato#super[G] d'appalto* \
  *C6 - Sistema di Gestione di un Magazzino Distribuito* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")]\

=== 1.3.2 Riferimenti informativi

- *Qualità del software* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")]\

- *Qualità del processo* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")]\

- *Verifica e Validazione#super[G]* \
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf")]\
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf")]\
  #underline[#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf")]\

- *Glossario#super[G]* \
  #underline[#link("https://teamcodealchemists.github.io/glossario.html")]

#pagebreak()

= 2. Qualità di Processo

La qualità di processo rappresenta l’insieme delle attività, delle metodologie e delle metriche adottate per garantire che lo sviluppo del prodotto#super[G] software avvenga secondo standard definiti e controllabili. L’obiettivo è assicurare che ogni fase del ciclo di vita del progetto sia pianificata, monitorata e migliorata in modo continuo.

Le metriche di qualità di processo permettono di:

- Valutare l’efficacia e l’efficienza delle attività svolte nei diversi processi (primari, di supporto e organizzativi);
- Monitorare il rispetto degli standard e delle procedure stabilite nel Piano della Qualità;
- Fornire indicatori oggettivi utili per individuare aree di miglioramento e prevenire eventuali criticità.

L’adozione di un approccio sistematico e quantitativo consente di ridurre la soggettività nelle valutazioni e di supportare decisioni basate su dati concreti.

== 2.1 Processi Primari

I processi primari sono quelli che riguardano direttamente la realizzazione del prodotto#super[G] software. Essi comprendono le attività di fornitura e sviluppo.

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
I processi di supporto sono quelli che non riguardano direttamente la realizzazione del prodotto#super[G] software, ma che sono comunque necessari per il suo sviluppo. Essi comprendono le attività di documentazione, verifica e gestione della qualità.
I processi di supporto sono identificati dalla seguente nomenclatura:
- *PSD*: Processi di Supporto alla Documentazione;
- *PSV*: Processi di Supporto alla Verifica;
- *PSQ*: Processi di Supporto alla Qualità.
Per ogni categoria, i codici#super[G] definiti precedentemente sono seguiti da un numero progressivo che identifica la metrica specifica.

=== 2.2.1 Documentazione

#let voci_tabella_documentazione = (
    [PSD01], [Indice di Gulpease], [>= 50%], [100%],
    [PSD02], [Parole#super[G] del glossario contrassegnate con #super[G]], [>= 60%], [100%],
    [PSD03], [Glossario ordinato], [ordinato], [ordinato],
  )
#let caption_documentazione = (
  [Metriche di qualità per il processo di documentazione]
)
#show: qualifica_table.with(
  voci: voci_tabella_documentazione,
  caption: caption_documentazione
)

=== 2.2.2 Verifica

#let voci_tabella_verifica = (
    [PSV01], [Code Coverage], [>= 70%], [>= 80%],
    [PSV02], [Grado di successo dei test], [100%], [100%],
  )
#let caption_verifica = (
  [Metriche di qualità per il processo di verifica]
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
I processi organizzativi sono quelli che riguardano la gestione del progetto e delle risorse. Essi comprendono le attività di pianificazione, monitoraggio e controllo del progetto, gestione delle risorse umane e gestione dei fornitori.
I processi organizzativi sono identificati dalla seguente nomenclatura:
- *POG*: Gestione dei processi

Per ogni categoria, i codici#super[G] definiti precedentemente sono seguiti da un numero progressivo che identifica la metrica specifica.
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
  [Metriche per la funzionalità del prodotto#super[G] software]
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
  [Metriche per l'affidabilità del prodotto#super[G] software]
)
#show: qualifica_table.with(
  voci: voci_tabella_prodotto_affidabile,
  caption: caption_prodotto_affidabile
)

== 3.3 Manutenibilità
/*
  Cyclomatic complexity: misura la complessità del codice#super[G] in base al numero di percorsi indipendenti.
  Code smell: indicatori di potenziali problemi nel codice#super[G] che potrebbero influenzare la manutenibilità.
  Coefficient of coupling: misura il grado di dipendenza tra moduli o classi.
*/

#let voci_tabella_prodotto_manutenibile = (
    [QPM01], [Complessità ciclomatica], [<= 20], [<= 10],
    [QPM02], [Code smell rilevati], [<= 10], [<= 5],
    [QPM03], [Coefficient of coupling], [<= 0.5], [<= 0.3],
)
#let caption_prodotto_manutenibile = (
  [Metriche per la manutenibilità del prodotto#super[G] software]
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
  [Metriche per l'efficienza del prodotto#super[G] software]
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
  [Metriche per l'usabilità del prodotto#super[G] software]
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
  [Metriche per la portabilità del prodotto#super[G] software]
)
#show: qualifica_table.with(
  voci: voci_tabella_prodotto_portabile,
  caption: caption_prodotto_portabile
)

#pagebreak()
= 4. Metodologie di Testing
Per garantire la qualità del prodotto#super[G] software, è fondamentale adottare metodologie di testing adeguate.

Ad ogni test è stato attribuito un codice#super[G] univoco per facilitarne l'identificazione e la tracciabilità. Il codice#super[G] è strutturato come segue: tipoXX, dove "tipo" rappresenta il tipo di test e "XX" è un numero progressivo che identifica il test specifico. I tipi di test sono i seguenti:
- *TdU*: Test di unità;
- *TdI*: Test di integrazione;
- *TdS*: Test di sistema;
- *TdR*: Test di regressione;
- *TdA*: Test di accettazione.

Per ogni test viene specificato uno stato, che può essere:
- *NI*: Non Implementato;
- *IP*: In fase di Implementazione;
- *TS*: Test Superato;
- *TF*: Test Fallito.


== 4.1 Test di unità

I test di unità verificano il comportamento corretto delle singole unità di codice#super[G], come funzioni, metodi o classi. Vengono scritti e mantenuti dagli sviluppatori durante la fase di sviluppo e servono a garantire che ogni componente, isolato dal resto, produca il risultato atteso per diversi input. Sono fondamentali per individuare rapidamente errori logici a livello di codice#super[G] sorgente.

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

== 4.2 Test di integrazione

I test di integrazione servono a verificare che più unità di codice#super[G] funzionino correttamente insieme. L'obiettivo è individuare problemi che emergono quando i vari moduli interagiscono tra loro, ad esempio errori di comunicazione tra componenti o malintesi sui formati di dati scambiati. Questi test sono particolarmente utili quando si integrano sistemi esterni come database, API o servizi#super[G] di terze parti.

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
    [---], [---], [---], [NI]
  )
#let caption_test_sistema = (
  [Test di sistema]
)
#show: test_table.with(
  voci: voci_test_sistema,
  caption: caption_test_sistema
)


== 4.4 Test di regressione

I test di regressione hanno lo scopo di assicurare che le nuove modifiche al codice#super[G], come correzioni di bug o l'introduzione di nuove funzionalità, non abbiano introdotto errori in funzionalità esistenti. Vengono eseguiti regolarmente durante lo sviluppo continuo e sono spesso automatizzati per garantire un controllo rapido ed efficace ogni volta che il software viene aggiornato.

#let voci_test_regressione = (
  [---], [---], [---], [NI]
  )
#let caption_test_regressione = (
  [Test di regressione]
)
#show: test_table.with(
  voci: voci_test_regressione,
  caption: caption_test_regressione
)

== 4.5 Test di accettazione

I test di accettazione vengono eseguiti per verificare che il software soddisfi i requisiti#super[G] concordati con il cliente#super[G] o l'utente finale. Sono spesso definiti sulla base di scenari realistici o specifiche formali (come le User Story o i Criteri di Accettazione). Questi test rappresentano l'ultima fase di verifica prima del rilascio del prodotto#super[G] e determinano se esso può essere considerato “pronto per l'uso”.

#let voci_test_accettazione = (
  [---], [---], [---], [NI]
  )
#let caption_test_accettazione = (
  [Test di Accettazione]
)
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
  (1,970), (2,1020), (3,870), (4,1160), (5,1090), (6,1190), (7,980)
)
#let valori_grafico_costi_reale = (
  (1,970), (2,790), (3,865), (4,1220), (5,955), (6,985), (7,980)
)
#show : graph_line.with(
  data_atteso: valori_grafico_costi_atteso,
  data_reale: valori_grafico_costi_reale,
  label_atteso: "Costo atteso",
  label_reale: "Costo reale",
  label_x: "Sprint",
  label_y: "Costo",
  y-max: 1400,
  y-min: 0,
  y-tick-step: 100
)

Possiamo osservare che il costo atteso e il costo reale sono molto vicini, con un leggero scostamento nei primi sprint. Questo indica una buona gestione dei costi fino a questo punto del progetto.\
Gli scostamenti sono minimi e non superano il 10% rispetto al costo atteso, il che è un buon segno di stabilità finanziaria del progetto.

== 5.2 Grafico valore atteso ed effettivo
== 5.3 Indice di prestazione dei tempi (tempo attuale e tempo pianificato per ogni sprint) [grafico a barre eventualmente]
== 5.4 Grafico indice di stabilità dei requisiti#super[G] 
== 5.5 Grafico indice di Gulpease (generale) [grafico a barre eventualmente]
#let valori_grafico_gulpease = (
  (1, 40), (2, 38), (3, 50), (4, 55), (5, 58), (6, 58), (7, 58)
)
#show : graph_bar.with(
  data: valori_grafico_gulpease,
  label_x: "Sprint",
  label_y: "Indice di Gulpease",
  y-max: 100,
  y-min: 0,
  y-tick-step: 10
)
== 5.6 Grafico di efficienza in termini di tempo
// 
// sopra ogni grafico scrivere una breve descrizione del grafico che si sta per visualizzare
// 
