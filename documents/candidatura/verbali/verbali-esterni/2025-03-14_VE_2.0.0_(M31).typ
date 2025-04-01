#import "/src/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "14/03/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "2.0.0"
#let destinatario = "M31"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.stefano,
  p.alex,
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
  destinatario,
  p.tullio,
  p.cardin,
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    [2.0.0],
    [18/03/2025],
    [_M31_],
    [-],
    [Approvazione del documento da parte di _M31_],

    [1.0.0],
    [15/03/2025],
    [R. Zangla],
    [-],
    [Verifica e Approvazione Interna del documento],

    [0.2.0],
    [15/03/2025],
    [N. Bolzon],
    [R. Zangla],
    [Aggiunta informazioni, revisione e correzione di alcuni errori minori],

    [0.1.0],
    [14/03/2025],
    [N. Bolzon],
    [R. Zangla],
    [Redazione iniziale del documento],

)
#let contenuto = (
    // Voci in prima pagina
    voce("Stato", status),
    voce("Versione", versione),
    voce("Presenze", presenze),
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

#show: firma.with(
  destinatario: destinatario
)


// INSERIRE QUI CONTENUTO
= 1. Informazioni generali    //punto dell'indice
  In data *14 marzo 2025*, dalle ore *14:30* alle ore *15:33*,  è stata svolta, in modalità virtuale, una riunione con l'azienda _M31_ per discutere su quanto presentato nel capitolato d'appalto.
  
  A questo incontro, svoltosi tramite la piattaforma *Microsoft Teams*, hanno partecipato per conto di _M31_:
  - Luca Cossaro
  - Moones Mobaraki
  - Cristian Pirlog

= 2. Motivo della riunione
  Il Team _Code Alchemists_ dopo aver letto e analizzato il capitolato _C6 - Sistema di gestione di un magazzino distribuito_, ha ritenuto opportuno richiedere un incontro per avere un'idea più chiara sul progetto da svolgere e per risolvere alcuni dubbi, tra i quali:
  
  + Strumenti di comunicazione;
  + Supporto allo sviluppo del progetto;
  + Scelta delle tecnologie;
  + Valutazione e Differenziazione dei Requisiti;

  Nelle precedenti comunicazioni con l'azienda, avvenute tramite mail, avevamo già provveduto, come da loro richiesta, a trasmettere in anticipo le domande da sottoporre durante la riunione, al fine di consentire un'adeguata preparazione e favorire risposte più concise e puntuali.

= 3. Chiarimento generale sul Capitolato
Dopo una breve presentazione dei membri di _M31_ presenti alla riunione, anche noi studenti ci siamo introdotti rapidamente.

Successivamente, l'azienda ha riepilogato il capitolato del progetto. Si tratta di una richiesta reale proveniente da un potenziale cliente, il quale deve affrontare una problematica logistica complessa. In particolare, il cliente gestisce un numero variabile di centri di produzione che riforniscono sedi operative. Tuttavia, alcuni magazzini potrebbero diventare temporaneamente non operativi per diversi motivi sia fisici _(es. strada rovinata, ponte crollato per alluvione)_ che per motivi tecnologici _(es. mancanza di connessione ad Internet)_.

La sfida principale consiste nell'assicurare un approvvigionamento continuo ai centri operativi, nonostante la variabilità dello stato dei magazzini, il tutto su un territorio molto esteso. Ogni magazzino deve operare in modo relativamente indipendente, ma il sistema deve garantire una gestione centralizzata, come se l’intera rete di magazzini fosse un'unica entità.

L'obiettivo è quindi sviluppare una soluzione che permetta di mantenere un'organizzazione efficiente del sistema logistico, assicurando la fornitura dei beni indipendentemente dalla disponibilità operativa dei singoli magazzini.

Si tratta di un problema concreto e non di un caso ipotetico. Non ci è stato possibile ricevere ulteriori informazioni sulla casistica poichè vi sono clausule di riservatezza.

== 3.1 Strumenti di comunicazione
Principalmente ci viene chiesto di comunicare tramite email ai contatti fornitoci durante la presentazione del capitolato.

I meeting periodici si svolgono su Microsoft Teams, con una frequenza minima di una volta al mese, ma possono avvenire più spesso se necessario. In alcuni casi, è possibile partecipare in presenza presso l’azienda (massimo 3 persone alla volta).

Si valuterà, in base alle necessità, se attivare una chat su Teams o una chat condivisa prima della riunione, a seconda delle politiche aziendali definite dall'IT Manager in base alle esigenze di sicurezza aziendali. Tuttavia, il gruppo precedente non ha richiesto una comunicazione particolarmente diretta.


== 3.2 Supporto allo sviluppo del progetto
Nella fase iniziale del progetto, gli incontri sono più frequenti per garantire un avvio strutturato ed efficace. In passato, durante il periodo di sessione invernale, il gruppo precedente ha avuto periodi fino a un mese e mezzo senza videoconferenze su Teams, ma comunque continuando il progetto. Tuttavia, verso la conclusione del progetto, vengono organizzati ulteriori meeting per coordinare le ultime attività e finalizzare il lavoro in modo ottimale.

L’incontro mensile rappresenta il minimo indispensabile, ma si cerca di favorire una comunicazione più continua attraverso meeting aggiuntivi o aggiornamenti via e-mail, garantendo così uno sviluppo coerente e in linea con le aspettative.

Per ottimizzare le riunioni, _M31_ ci chiede di inviare in anticipo una lista di domande, che viene accolta con favore dal team. Durante gli incontri, si andranno ad affrontare direttamente i punti chiave proposti via mail, ottimizzando così il tempo a disposizione.

Durante i meeting assumeranno il ruolo di _“clienti esigenti”_, mettendoci alla prova con richieste e criticità tipiche di un contesto reale. Tuttavia, offrono anche supporto, consapevoli che si tratta di un progetto che affrontiamo per la prima volta nella nostra vita con le modalità tipiche dell'_Ingegneria del Software_. Il loro obiettivo è quello di aiutarci a comprendere le principali difficoltà che si incontrano nello sviluppo di un progetto, fornendo al contempo indicazioni utili per affrontarle.

== 3.3 Scelta delle tecnologie
L'azienda ci propone di utilizzare quelle tecnologie poichè rappresentano lo standard aziendale. Pertanto, se realizziamo un progetto per loro, dobbiamo adottare le tecnologie in uso all’interno dell’azienda. Dal momento che saranno loro a occuparsi della manutenzione del sistema, una volta terminato il nostro progetto, è fondamentale svilupparlo secondo le loro preferenze e specifiche.

Tuttavia, è sempre possibile avviare un confronto e discutere eventuali alternative. Anche se _M31_ predilige l’utilizzo delle tecnologie già adottate internamente, il dialogo rimane aperto per valutare soluzioni diverse, qualora fosse necessario.

== 3.4 Differenziazione dei requisiti
Sono stati discussi in senso generale i requisiti funzionali richiesti dal capitolato del progetto.

Il requisito fulcro riguarda la gestione della sincronizzazione dei magazzini. È infatti essenziale saper coordinare la disponibilità e lo stato (“online” o “offline”) di ogni singolo magazzino e sincronizzarli tra di loro al meglio. Secondo l'esempio fornitoci, se il magazzino B è in stato "offline", bisogna fare in modo che, quando tornerà online, B riesca a riallinearsi con il magazzino principale A (il quale, finchè ciò non avviene, deve sapere che non può contare sulle operazioni con quel magazzino e trovare un’alternativa).

Ulteriore punto fondamentale consiste nel riuscire a risolvere i conflitti di aggiornamento simultaneo; infatti, bisognerà svolgere un risk analysis approfondito sui casi di conflitto e risolvere almeno quelli più importanti.

Inoltre, in particolare, tra i requisiti minimi bisognerà trattare la gestione delle scorte nei magazzini con la generazione di report periodici dettagliati.

Il requisito di riassortimento predittivo, che prevede l'utilizzo di machine learning per prevedere la futura domanda di specifici prodotti sulla base di vari fattori, è trattato invece come requisito negoziabile (considerabile come opzionale, rispetto a quanto indicato nel documento del capitolato). 

In generale, i requisiti da rispettare con vincolo obbligatorio dovranno tenere conto dei bisogni dell’utente, da cui poi deriveranno delle indicazioni e degli user input da tenere in considerazione durante la fase di sviluppo.


= 4. Conclusioni
  La riunione con M31 è stata chiara e ha risolto tutti i nostri dubbi. I rappresentanti dell'azienda sono stati molto esaustivi nelle risposte e particolarmente disponibili nel ricevere domande su eventuali incertezze o incomprensioni. Inoltre, hanno offerto la loro disponibilità per risolvere ulteriori dubbi, qualora dovessero sorgere, riguardo a quanto indicato nel capitolato o a domande che potrebbero emergere dopo aver discusso quanto trattato nell'incontro odierno con l'azienda.
  
  Il Team _Code Alchemists_ ringrazia l'azienda _M31_ e i suoi rappresentanti per la pronta disponibilità e la professionalità mostrataci durante l'incontro e nella comunicazione tramite posta elettronica.

= 5. Approvazione Esterna
  Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalmente che il presente verbale è stato esaminato e approvato dai rappresentanti di _M31_.\

  La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.
