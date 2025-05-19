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

Il presente documento ha lo scopo di definire le modalità di qualifica e verifica del prodotto#super[G] software. Esso rappresenta un indice di valutazione del prodotto#super[G] software, delle sue componenti e degli strumenti utilizzati. L'obiettivo è quello di garantire la qualità del prodotto#super[G] finale e un continuo miglioramento del processo di sviluppo.

Il Piano di Qualifica#super[G] si basa su tre aspetti principali:

=== 1.1.1 Piano della Qualità
- Fissare gli standard del prodotto#super[G] e i tipi di test da effettuare;
- Indicare gli obiettivi e le modalità di qualifica;
- Stabilire le regole a cui attenersi.

=== 1.1.2 Controllo di Qualità
- Attuare e assicurare la conformità con le regole da seguire e il Way of Working#super[G] ;
- L'operato viene monitorato attraverso il Cruscotto di Valutazione;
- Effettuare il Quality Assurance passo-passo per prevenire e mitigare i rischi e verificare la soddisfazione dei requisiti#super[G].

=== 1.1.3 Miglioramento continuo
La qualità non è definitiva, bensì si evolve e va perfezionata nel corso del tempo:
- Gli errori rappresentano opportunità di apprendimento, sperimentazione e miglioramento progressivo;
- L'obiettivo è incrementare nel tempo l'efficienza e l'efficacia dei processi.

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

= 2. Metriche di Qualità

Per garantire un'analisi oggettiva e sistematica della qualità del prodotto#super[G] software, si fa riferimento allo standard ISO/IEC 14598:1999. Esso propone un metodo per associare metriche quantitative a specifiche sotto-caratteristiche di qualità individuate nello standard ISO 9126.

In particolare, le metriche sono utilizzate per:

- Valutare attributi interni (come la struttura del codice#super[G]) e attributi esterni (come l'usabilità e l'affidabilità percepita dall'utente);

- Supportare il monitoraggio dell'evoluzione del prodotto#super[G] durante le fasi di sviluppo e validazione;

- Fornire indicatori oggettivi del raggiungimento degli standard prefissati nel Piano della Qualità.

Sebbene non sempre sia semplice adottare misurazioni formali, l'obiettivo è mantenere un approccio il più possibile oggettivo e ripetibile, riducendo soggettività nelle valutazioni.

== 2.1 Processi Primari

I processi primari sono quelli che riguardano direttamente la realizzazione del prodotto#super[G] software. Essi comprendono le attività di fornitura e sviluppo.

È stato deciso di utilizzare la seguente nomenclatura per per identificare in modo univoco le metriche di qualità:
- *PPF*: Processi Primari di Fornitura;
- *PPS*: Processi Primari di Sviluppo.
Per ogni categoria, i codici#super[G] definiti precedentemente sono seguiti da un numero progressivo che identifica la metrica specifica.

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
    [PSD01], [Indice di Gulpease], [>= 60%], [100%],
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
    [PSV01], [Code Coverage], [da definire], [100%],
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

// TODO: Per il PB inserire le qualità di prodotto#super[G] 

= 3. Metodologie di Testing
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

#pagebreak()

== 3.1 Test di unità

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

== 3.2 Test di integrazione

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

== 3.3 Test di sistema

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

#pagebreak()

== 3.4 Test di regressione

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

== 3.5 Test di accettazione

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

= 4. Cruscotto di Valutazione
// Inserire qui i vari punti di valutazione delle metriche in base alle metriche di qualità che verranno riportate nella sezione 2, per il momento si può lasciare vuoto
//4.1 Valutazione dei costi (costo attuale e costo pianificato per ogni sprint)
== 4.1 Valutazione dei costi

#let valori_grafico_costi_atteso = (
  (1,970), (2,1020), 
)
#let valori_grafico_costi_reale = (
  (1,970), (2,790), 
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

//4.2 Grafico valore atteso ed effettivo
//4.3 Indice di prestazione dei tempi (tempo attuale e tempo pianificato per ogni sprint) [grafico a barre eventualmente]
//4.4 Grafico indice di stabilità dei requisiti#super[G] 
//4.5 Grafico indice di Gulpease (generale) [grafico a barre eventualmente]
//4.6 Grafico di efficienza in termini di tempo
// 
// sopra ogni grafico scrivere una breve descrizione del grafico che si sta per visualizzare
// 



#let valori_grafico_gulpease = (
  (1,70), (2,63), (4,60), (5,54)
)

#show : graph_gulpease.with(
  data: valori_grafico_gulpease
)

= 5. Considerazioni di Miglioramento Continuo
== 5.1 Introduzione
Il miglioramento continuo è un processo fondamentale per garantire la qualità del prodotto#super[G] software e il successo del progetto. Attraverso l'analisi delle metriche di qualità, delle valutazioni e dei feedback ricevuti (Interni ed Esterni), è possibile identificare aree di miglioramento e implementare azioni correttive.
Il gruppo di lavoro si impegna a monitorare costantemente le metriche e a raccogliere feedback per garantire un miglioramento continuo del processo di sviluppo e del prodotto#super[G] finale.

//I periodi possono essere indicati come sprint, generalmente (per esempio inizio progetto) o con delle date specifiche

== 5.2 Valutazioni sull'organizzazione

#let header_autovalutazione_organizzazione = (
  [*Periodo*],[*Problema*],[*Soluzione*]
)
#let voci_autovalutazione_organizzazione = (
  [---], [---], [---],
  )
#let caption_autovalutazione_organizzazione = (
  [Valutazioni sull'organizzazione]
)
#show: automiglioramento_table.with(
  header: header_autovalutazione_organizzazione,
  voci: voci_autovalutazione_organizzazione,
  caption: caption_autovalutazione_organizzazione
)
== 5.3 Valutazioni sui ruoli

#let header_autovalutazione_ruoli = (
  [*Periodo*],[*Ruolo*],[*Problema*],[*Soluzione*]
)
#let voci_autovalutazione_ruoli = (
  [---], [---], [---], [---]
  )
#let caption_autovalutazione_ruoli = (
  [Valutazioni sui ruoli]
)
#show: automiglioramento_table.with(
  header: header_autovalutazione_ruoli,
  voci: voci_autovalutazione_ruoli,
  caption: caption_autovalutazione_ruoli
)

== 5.4 Valutazioni sugli strumenti

#let header_autovalutazione_strumenti = (
  [*Periodo*],[*Strumento*],[*Problema*],[*Soluzione*]
)
#let voci_autovalutazione_strumenti = (
  [---], [---], [---], [---]
  )
#let caption_autovalutazione_strumenti = (
  [Valutazioni sugli strumenti]
)
#show: automiglioramento_table.with(
  header: header_autovalutazione_strumenti,
  voci: voci_autovalutazione_strumenti,
  caption: caption_autovalutazione_strumenti
)

== 5.5 Valutazioni sul prodotto#super[G]

#let header_autovalutazione_prodotto = (
  [*Periodo*],[*Riferimento*],[*Problema*],[*Soluzione*]
)
#let voci_autovalutazione_prodotto = (
  [---], [---], [---], [---]
  )
#let caption_autovalutazione_prodotto = (
  [Valutazioni sul prodotto#super[G]]
)
#show: automiglioramento_table.with(
  header: header_autovalutazione_prodotto,
  voci: voci_autovalutazione_prodotto,
  caption: caption_autovalutazione_prodotto
)