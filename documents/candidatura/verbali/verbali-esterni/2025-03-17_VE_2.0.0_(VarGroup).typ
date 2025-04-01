#import "/template/import/basic.typ": *

// VARIABILI
#let titolo = "Verbale esterno del "
#let data = "17/03/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "2.0.0"
#let destinatario = "VarGroup"
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
  /* esempio: 
    versione,
    data,
    p.stefano,
    "-",
    "Creazione template"
  */
  [2.0.0], 
  [19/03/2025], 
  [_VarGroup_], 
  [-], 
  [Approvazione da parte di _VarGroup_ del documento],

  [1.0.0], 
  [18/03/2025], 
  [N. Moretto], 
  [A. Shu], 
  [Verifica e approvazione interna del documento],

  [0.1.0], 
  [18/03/2025], 
  [N. Moretto], 
  [A. Shu], 
  [Redazione del documento],
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
= 1. Informazioni generali
    In data *17 marzo 2025*, dalle ore *18:03* alle ore *18:30* è stata svolta, in modalità virtuale, una riunione con l'azienda _VarGroup_ per discutere su quanto presentato nel capitolato d'appalto.
  
    A questo incontro, svoltosi tramite la piattaforma *Microsoft Teams*, hanno partecipato per conto di _VarGroup_:
    - Stefano Dindo
    - Michele Massaro

= 2. Motivo della riunione
    Il Team _Code Alchemists_ dopo aver letto e analizzato il capitolato *_C3 - Automatizzare le routine digitali tramite l’intelligenza generativa_*, ha ritenuto opportuno richiedere un incontro per avere un'idea più chiara sul progetto da svolgere e per risolvere alcuni dubbi, tra i quali:
        
        + Strumenti di comunicazione;
        + Supporto allo sviluppo del progetto;
        + Scelta delle tecnologie e dell'ambiente di sviluppo;
        + Chiarimenti su alcuni vincoli del progetto;

= 3. Chiarimento generale sul Capitolato
    L'azienda ha da subito iniziato con un riepilogo del capitolato del progetto.\
    
    Si tratta di un applicativo per utenti che costruiscono *_workflow_* con *l'AI*: sono automatismi complessi, che migliorano il quotidiano delle persone. L'azienda ha inoltre esposto un esempio di utilizzo: nel caso di un numero elevato di e-mail da leggere quotidianamente che richiedono un appuntamento, si deve sviluppare un automatismo che legge le mail che richiedono richieste di incontri/appuntamenti per identificare una data, poi deve essere controllato il calendario, e, sulla base di impegni già fissati, inserire o meno l'appuntamento. Nel caso di un appuntamento online, deve venire riportato in calendario anche l'eventuale link della riunione.\
    
    L'azienda ha menzionato delle tecnologie da utilizzare in base all'ambiente di lavoro. Il tipo di ambiente di lavoro e le tecnologie le scelgono il team sulla base delle proposte: l'azienda ha solamente voluto proporre ambienti e tecnologie diverse per dare più ampiezza al capitolato. \

    L'azienda ha infine specificato che la licenza del software prodotto rimarrà a loro, mentre noi potremmo scrivere in curriculum la nostra esperienza fatta con loro.

== 3.1 Strumenti di comunicazione 
    L'azienda ci ha comunicato che, in caso di scelta del loro capitolato, ci verrà messo a disposizione un team di supporto. La comunicazione non verrà solo tramite e-mail, ma anche tramite *canali Slack*: così facendo si renderà la comunicazione più fluida e immediata.

== 3.2 Supporto allo sviluppo del progetto
    L'azienda ci supporterà inizialmente con una sessione di *Design Thinking*, cioè ci insegnano come operare. Loro interpreteranno la parte del cliente e andiamo a definire assieme quali possono essere i requisiti del progetto da realizzare sulla base delle tecnologie che scegliamo di portare avanti.

    Sulla base del risultato del *Design Thinking*, andremo a definire assieme all'azienda dei momenti di formazione su tecnologie e strumenti che verranno utilizzati per realizzarla definendo assieme a noi le altre tappe.\
    L'azienda proporrà degli sprint ogni *2/3 settimane*.

== 3.3 Chiarimenti su alcuni vincoli del progetto
    Dopo aver letto il capitolato, sono emersi alcuni dubbi per quanto riguarda l'utilizzo della *Generative AI*, l'implementazione di *test automatici* con *coverage del 70%* del codice realizzato, e la creazione dell'applicativo in *ottica modulare*.

    In riferimento alla generative AI, l'azienda ci fornirà degli accessi a *AWS* e un budget a disposizione per fare i test e utilizzare le tecnologie e i *modelli LLM* che Amazon mette a disposizione.

    Relativamente all'implementazione dei test automatici sul codice, l'azienda ha specificato che sono test di unità, quindi sugli snippet di codice. I test devono essere automatici sull'output dell'LLM, dove in caso di parità di input dovrei avere risultati uguali o simili. Con diversi input mi aspetto dei risultati migliorativi nel tempo, non una regressione di efficienza.\ L'azienda ha consigliato la creazione di *benchmark* di requisiti su cui verificare i risultati.

    Infine, per quanto riguarda l'applicativo in ottica modulare, si intende che l'interazione con i vari applicativi (e-mail, calendario, word,...) ci deve essere, ma allo stesso tempo ogni applicativo deve essere indipendente, potendolo quindi inserire o rimuovere in qualsiasi momento senza alterare i risultati degli altri applicativi. Questo metodo di lavoro rende il tutto più semplice; al contrario, l'automatismo generico è difficile.\ L'intelligenza artificiale, spiega l'azienda, lavora all'interno di questi moduli, producendo l'output desiderato.


= 4. Conclusioni
    La riunione con _VarGroup_ è stata chiara e ha risolto tutti i nostri dubbi. I rappresentanti dell'azienda sono stati molto esaustivi nelle risposte e particolarmente disponibili nel ricevere domande su eventuali incertezze o incomprensioni.
    
    Il Team _Code Alchemists_ ringrazia l'azienda _VarGroup_ e i suoi rappresentanti per la pronta disponibilità e la professionalità mostrataci durante l'incontro.

#pagebreak()
= 5. Approvazione Esterna
    Dopo l'approvazione interna da parte del Team _Code Alchemists_, si attesta formalemnte che il presente verbale è stato esaminato e approvato dai rappresentanti di _VarGroup_.\

    La validità di questa approvazione è confermata dalla firma apposta di seguito da almeno uno dei rappresentanti ufficiali dell'azienda, a testimonianza del loro consenso e dell'accordo riguardo ai contenuti del documento.

  