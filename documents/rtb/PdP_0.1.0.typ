#import "../../src/basic.typ": *
#import "../../src/tables.typ": *  //importo le tabelle

/*
  Definire variabili da inserire in prima pagina con #let
  e poi inserire tramite la funzione #voce in contenuto

  es. #let status = "non approvato"
  
      #let contenuto = (
        voce("Stato", status),
      )
  Nota: inserire virgola dopo ciascun uso della funzione voce (anche se singola)
*/

#let titolo = "Piano di Progetto"
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
  [09/04/2025],
  [N. Moretto],
  [-],
  [Inizio redazione documento: Introduzione generale, Introduzione pianificazione a breve termine, Sprint 1],
  
  [0.0.1],
  [08/04/2025],
  [N. Moretto],
  [-],
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

#set heading(numbering: "1.1.")

= Introduzione
== Informazioni generali
Il *Piano di Progetto#super[G]* è un documento che definisce le modalità di gestione del progetto, le risorse necessarie e i rischi attesi.\ Il piano di progetto è un documento vivo, che viene aggiornato durante il ciclo di vita del progetto di *Ingegneria del Software*, in quanto le attività vengono pianificate volta per volta e le risorse vengono allocate in base alle necessità. Una progettazione dettagliata sul lungo termine, infatti, si rivelerebbe inefficace.

Il documento è molto importante per permettere una corretta pianificazione del lavoro e dei vari sprint#super[G], analizzando il tempo previsto ed effettivo per ogni attività, tenendo conto dei rischi e delle risorse disponibili.

== Scopo del prodotto

== Glossario
La realizzazione di un software richiede, ancor prima dello sviluppo, una fase di analisi e progettazione. Dato che il lavoro durante questa fase è svolto da più persone e in modo asincrono, è necessario documentare tutte queste attività per tenere traccia di ciò che è stato fatto e per evitare confusione. 

Si potrà dedurre che questi documenti potrebbero contenere parole o frasi che non sono di uso comune, ma che sono state scelte per essere più specifiche e per evitare ambiguità. Per questo motivo è stato creato un glossario#super[G] che contiene le definizioni di tali termini, al seguente #link("https://teamcodealchemists.github.io/glossario")[#underline[indirizzo]]. 

== Riferimenti   //Inserire riferimenti al capitolato del progetto e a lezioni/slide del professore se necessario
- *Capitolato d'appalto C6 - Gestione di un magazzino distribuito - _M31_*\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C6.pdf")

  //TODO: da completare

#pagebreak()
= Analisi e gestione dei rischi
== Introduzione

In questa sezione del documento vengono analizzati i principali rischi in cui il team potrebbe incorrere durante lo svolgimento
del progetto. Ad ognuno viene associata una valutazione della probabilità di occorrenza e gravità, oltre che ad una descrizione ed una sezione relativa al rilevamento e alle contrimisure. 

Infine ogni rischio viene associato ad un indice numerico consentendo quindi di determinarne la criticità di ciascuno facilmente.

== Definizione degli indici

Per una corretta valutazione dei rischi, sono stati definiti i seguenti fattori chiave:

- *Indice*: un valore numerico che indica in modo univoco ogni rischio;

- *Tipo*: rappresenta l'impatto che il rischio potrebbe avere sul progetto, ed è classificato in Basso, Medio o Alto;

- *Gravità*: Descrive le conseguenze che un rischio ha se si verifica, con l’eventuale possibilità di modifica alla pianificazione o al progetto;

- *Probabilità*: Indica, come da nome, la probabilità che il rischio si verifichi durante lo sviluppo del progetto.

#align(center)[
  #tabella_indici_gravita(
    dati: (
      [1], 
      [Basso], 
      [L’impatto sul progetto è minimo, un lieve rallentamento che non modifica i tempi di consegna], 
      [è improbabile che si verifichi,
      ma esistono situazioni che potrebbero contribuire alla realizzazione],

      [2], 
      [Medio], 
      [L’evento richiede un parziale adattamento al piano e l'organizzazione iniziale, con uno sforzo supplementare ma con un impatto gestibile ], 
      [Esiste una probabilità media che il rischio si realizzi], 

      [3], 
      [Alto], 
      [Il rischio comporta ritardi significativi,
      un possibile aumento dei costi o un degrado della qualità, impattando negativamente sul raggiungimento degli obiettivi del progetto], 
      [E altamente probabile che il rischio si verifichi, con diversi segni evidenti che ne indicano la possibilità], 
  ),
    didascalia: "Sprint 2 - Indici di gravita gestione dei rischi"
  )
]


== Suddivisione dei rischi // Potremmo invertire l'ordine a quello inglese

I rischi del progetto sono suddivisi in quattro categorie principali, in base al tipo di problematiche che potrebbero verificarsi:

- Rischi nell'organizzazione e gestione del progetto.

- Rischi nella comunicazione;

- Rischi individuali

- Rischi di natura tecnologica;

Ogni rischio è identificato tramite un codice univoco, strutturato come segue:

#align(center, block[*R[Categoria][Indice] - [Nome]*])

Dove:

+ *Categoria*: rappresenta la tipologia del rischio, che puo essere:

  - T: per i rischi tecnologici;

  - C: per i rischi comunicativi;

  - P: per i rischi di pianificazione;

  - I: per i rischi individuali;

+ *Indice*: è un identificativo progressivo univoco all’interno della categoria.

+ *Nome*: è una breve descrizione del rischio

== Rischio tecnologico //tecnologie utilizzate ed eventuali errori

===  RT1 - Rischio tecnologico legato alle tecnologie utilizzate

#tabella_rischi(
  dati: (
     [*Codice*],
     [RT1],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Alta],

    [*Descrizione*],
    [Inesperienza nell'uso di una o piu' tecnologie utilizzate nel progetto],

    [*Rilevamento*],
    [Comunicazione da parte dei membri del team e rallentamenti nello sviluppo ],

    [*Contromisure*], 
    [In primo luogo grazie ad un impegno parallelo da parte del team di aggiornarsi ed imparare dove necessario. 
    In aggiunta dalla condivisone di materiale informativo/didattico, e dall'organizzazione di riunione/incontri 
    rivolte ad aiutare membri del team in difficoltà],
  ),
  didascalia: "RT1"
)

=== RT2 - Rischio tecnologico legato ad un utilizzo errato

#tabella_rischi(
  dati: (
     [*Codice*],
     [RT2],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Alta],

    [*Descrizione*],
    [Rischio legato ad un utilizzo errato o non ottimale delle tecnologie in uso nel progetto che potrebbero portare ad
    errori e rallentamenti],

    [*Rilevamento*],
    [Problemi di configurazione e funzionamento degli elementi costitutivi dell'architettura in uso],

    [*Contromisure*], 
    [Studio piu' approfondito e mirato alle singole componenti del sistema da parte di uno o piu' membri del team 
    per ottenre una panoramica migliore al fine di risolvere il problema],
  ),
  didascalia: "RT1"
)

=== RT3 - Rischio tecnologico legato ad errori di programmazione

#tabella_rischi(
  dati: (
     [*Codice*],
     [RT3],

    [*Descrizione*],
    [Lo sviluppo software prevede implicitamente la possibilità di scrivere codice non completamente corretto, 
    a maggior ragione se il linguaggio in uso e il suo funzionamento non è ben consciuto],

    [*Gravità*],
    [Bassa],

    [*Probabilità*],
    [Media],

    [*Rilevamento*],
    [Output dell' algoritmo o della porzione di codice non inerente a quello aspettato],

    [*Contromisure*], 
    [In caso di codice non funzionante il
    programmatore cerchera di risolvere il problema approfondendo
    la tecnologia in uso e l'argomento al fine di trovare una soluzione indipendetemente. 
    In caso di insuccesso un sistema di ticket condiviso con gli altri programmatori
    potrebbe aiutare a condividere informazioni per ottenre una soluzione alternativa. 
    Se il problema dovesse diventare centrale i programmatori si impegneranno 
    a lavorare assieme per la risoluzione],
  ),
  didascalia: "RT1"
)

=== RT4 - Rischio tecnologico legato al supporto e versione

#tabella_rischi(
  dati: (
     [*Codice*],
     [RT4],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Rilevamento*],
    [Una parte del sistema smette di funzionare o si comporta in modo anomalo],

    [*Contromisure*], 
    [Il team si impegna sin dall'inzio della progettazione architetturale di utilizzare tecnologie stabili
    e in vasto uso nel mercato, come anche gli endpoint delle API messe a dispozione, al fine di ridurre
    al minimo l'eventulita' del problema ],
  ),
  didascalia: "RT1"
)

== Rischi comunicativi

=== RC1 - Tempi di risposta lunghi

#tabella_rischi(
  dati: (
    [*Codice*],
    [RC1],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [Rischio legato ad una comunciazione lenta da parte di uno o piu' componenti del team al fine della risoluzione 
    di una problematica o a fine organizzaztivo],

    [*Rilevamento*],
    [Rilevamento implicito da parte dei restanti componenti del team],

    [*Contromisure*], 
    [I membri del team si impegnano a fissare incontri frequenti e di lavorare assieme su canali comunciativi di diversa natura. 
    In piu', grazie al sistema di sottoresponsabili adottato, data la dimensione del team, la responsabilizzare dei membri 
    ottenuta aiutera' ad effettuare check-up frequenti dei restanti membri, garantendo quindi una comunciazione frequente e granulare],
  ),
  didascalia: "RT1"
)

=== RC2 - Malcomprensione degli obbiettivi del team

#tabella_rischi(
  dati: (
    [*Codice*],
    [RC2],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [Rischio legato alla malcomprensione di uno o piu' obbiettivi dello sprint in corso],

    [*Rilevamento*],
    [Frequenti discussioni con opinioni molto contrastanti e nessun esito],

    [*Contromisure*], 
    [Il responsabile del team si occupera' di monitorare costantemnte i membri del gruppo al fine di comprendere
    eventuali incomprensioni e risolverle al piu' presto. In particolare la struttura a sottoresponsabili e sottogruppi
    aiutera' a individuare piu' facilmente chi sono i membri in questinone],
  ),
  didascalia: "RT1"
)


=== RC3 - Mancanza di comunciazione con l'azienda 

#tabella_rischi(
  dati: (
    [*Codice*],
    [RC2],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [Rischio legato ad una comunicazione ],

    [*Rilevamento*],
    [Discussioni frequenti con opinioni molto contrastanti e nessun esito],

    [*Contromisure*], 
    [Il responsabile del team si occupera' di monitorare costantemnte i membri del gruppo al fine di comprendere
    eventuali incomprensioni e risolverle al piu' presto. In particolare la struttura a sottoresponsabili e sottogruppi
    aiutera' a individuare piu' facilmente chi sono i membri in questione],
  ),
  didascalia: "RT1"
)



== Rischio individuale //altri impegni e attività individuale

=== RI1 - Impegni personali, universitari e indisponibilita'

#tabella_rischi(
  dati: (
    [*Codice*],
    [RI1],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Alta],

    [*Descrizione*],
    [Essendo il progetto stesso di SWE un dei molteplici corsi universitari,
    i membri del team potrebbero essere costretti in alcuni casi 
    a periodi o momenti di indisponibilità dati da quest'ultimi.
    Si considerano inoltre momenti di assenza dati da impegni esterni 
    inderogabili e malessere personale.
 ],

    [*Rilevamento*],
    [I membri del team si impegnano a mantenere un orario settimanale costantemente aggiornato
    della disponibilita' di ciascuno e di informare i restanti membri in casi diversi],

    [*Contromisure*], 
    [L'orario settimanale condivisio verra' utilizzato per pianificare le attività e suddividere il lavoro
    in modo da mantenere la disponibilita necessaria],
  ),
  didascalia: "RI1"
)


=== RI2 - Scarsa collaborazione

#tabella_rischi(
  dati: (
    [*Codice*],
    [RI2],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [La possibilita che alcuni membri del gruppo non collaborino attivamente al progetto],

    [*Rilevamento*],
    [implicitamente dagli altri membri del gruppo],

    [*Contromisure*], 
    [Gli incontri regolari predispoti dal team aiuteranno a favorire il dialogo trasparente, la collaborazione e 
    mantenere attivo l'impegno di ciascun membro. Inoltre la scala della responsabilita'
    piu' granulare aiutera' ad avere un riscontro continuo e piu' diretto.],
  ),
  didascalia: "RI2"
)

=== RI3 - Difficoltà di "comprensione" 

#tabella_rischi(
  dati: (
    [*Codice*],
    [RI3],

    [*Gravità*],
    [Media],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [La possibilita che alcuni membri del gruppo non siano in grado di portare avanti il lavoro indipendetemente],

    [*Rilevamento*],
    [Comunicazione al resto del team],

    [*Contromisure*], 
    [I membri del team si impegnano a comunicare in modo trasparente e onesto difficoltà nello svolgere
    il lavoro assegnato proponendosi di aiutare chi si trova in tale situazione],
  ),
  didascalia: "RI3"
)


== Rischio globale //valutare altri rischi

=== RG1 - Malcomprensione degli obbiettivi del capitolato  

#tabella_rischi(
  dati: (
    [*Codice*],
    [RG1],

    [*Gravità*],
    [Alta],

    [*Probabilità*],
    [Media],

    [*Descrizione*],
    [La possibilita che il gruppo sviluppi una soluzione ad un sotto problema 
    diversa da quella intesa dall'azienda proponente ],

    [*Rilevamento*],
    [Comunicazione da parte dell'azienda proponente del progetto],

    [*Contromisure*], 
    [I membri del team si sono impegnati sin dall'inzio nello svolgere un accurata lettura del capitolato di progetto
    al fine di individuare precisamente le richieste, nonche' di avere una comunicazione frequente con l'azienda ],
  ),
  didascalia: "RG1"
)

=== RG2 - Pareri contrastanti

#tabella_rischi(
  dati: (
    [*Codice*],
    [RG2],

    [*Gravità*],
    [Bassa],

    [*Probabilità*],
    [Bassa],

    [*Descrizione*],
    [La possibilita che il gruppo sviluppi opinioni contrastanti in merito allo sviluppo, organizzazione e pianificazione. ],

    [*Rilevamento*],
    [Implicito dato da un frequente disaccordo],

    [*Contromisure*], 
    [I membri durante le riunioni interne si impegnano ad ascoltare ciascuno le motvazioni altrui al fine
    di raggiungere la soluzione ottimale o un compromesso. Inoltre se questo non dovesse bastare, delle votazioni
    anonime a maggioranza verrano indette al fine di raggiunere una decisione.],
  ),
  didascalia: "RG1"
)


= Tabella Riassuntiva

#tabella_riassuntiva_rischi(
  dati: (
    [*Codice*],
    [RG2],

    [*Rischio*],
    [Bassa],

    [*Gravità*],
    [Bassa],

    [*Probabilità*],
    [],
  ),
  didascalia: "Tabella riassuntiva dei rischi"
)

#pagebreak()
= Pianificazione nel lungo termine
== Attività previste per la Requirements and Technology Baseline (RTB)
== Attività previste per la Product Baseline (PB)
La redazione di questo paragrafo sarà effettuato in seguito al superamento della
*Requirements and Technology Baseline#super[G] (RTB)*.

#pagebreak()
= Pianificazione nel breve termine
== Introduzione
A seguito del primo incontro di gruppo Il team _Code Alchemists_ ha deciso di impegnarsi ad adottare come strumento di sviluppo
princiaple la metodologia *Agile#super[G]* per tutto quello che riguarda la gestione del progetto. 
In particolare, si è deciso di utilizzare il framework *Scrum#super[G]*, che prevede numerosi *sprint#super[G]*, 
ovvero periodi di tempo ben definiti da una data di inizio e una data di fine in cui il team 
si impegna a concentrarsi su un insieme specifico e finito di attività.\
Il team ha deciso di utilizzare una durata dello sprint pari a *2 settimane*, 
questo aiutera ad ottenere un buon bilanciamento tra pianificazione e esecuzione delle attività. 
Inoltre durante ogni sprint, verrano effettuate diverse riunioni per discutere
sia i progressi di ogni membro e le difficoltà riscontrate, per permettere una comunicazione continua tra i membri
e una rapida risoluzione dei problemi che potrebbero insorgere.\

Il team ha deciso di utilizzare un approccio *iterativo#super[G]* e di miglioramento *incrementale#super[G]*, 
per permettere di adattare il lavoro in base alle esigenze del cliente, feedback ricevuti e necessità. 
Inoltre, si è deciso di utilizzare un *gestore di attività*, in particolare JIRA, per 
*tracciare il lavoro svolto e le scadenze*.
Questo garantira' inanzitutto una buona gestione del progetto ma anche una migliore pianificazione, 
riducendo al minimo i potenziali rischi e massimizzando le possibilità di successo.


Inoltre alcune particolari caratteristiche che il team ha deciso di adottare dopo un primo periodo di prova includono:

- L'uso di sottoresponsabili informali per responsabilizzare maggiormente piu' membri e ottenere una comunciazione piu' efficace e diretta
- La redazione di una "Lettera di sprint" da parte del responsabile entrante per definire meglio gli obbiettivi attuali, la quale
   viene redatta e diventa presenta almeno il giorno prima dell'inizio del nuovo sprint
- Un cambio di ruoli per sprint basato sul ruolo della persona e dalle competenze ottenute nello sprint appena terminato.
   Questo permette in particolare, oltre a ruotare i ruoli tra i membri, di svolgere una transzione molto piu' fluida e funzionale tra sprint


Infine il team si impegna a *concordare riunioni periodiche* con l'azienda proponente del progetto _M31_ 
per discutere progressi ed eventuali modifiche in corso d'opera. 
Le riunioni garantiranno che il lavoro svolto sia in coerente con le aspettative 
del cliente e per ottenre feedback su quanto realizzato.

Di seguito vengono riportate le caratteristiche previste per ogni sprint successivamente descritte:
- Informazioni generali;
- Attività da svolgere;
- Previsione di ore e costi;
- Rischi attesi;
- Ore e costi effettivi;
- Aggiornamento delle risorse rimanenti;
- Rischi incontrati;
- Retrospettiva.

#pagebreak()
== Requirements and Technology Baseline (RTB)
=== Sprint 1    //mantenere le seguenti distanze
Inizio: #h(1.99cm)*28-03-2025*\
Fine Prevista: #h(0.65cm)*11-04-2025*\
Fine Reale: #h(1.12cm)*11-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere

Questo sprint ha come obiettivo quello di risolvere le osservazioni 
ricevute dopo la presentazione della candidatura. 
Successivamente, avverrà la redazione dei primi documenti 
necessari per iniziare i lavori.

In particalare, le attività previste sono:
- Miglioramento grafico del sito web;
- Miglioramento della navigabilità delle risorse del sito web;
- Indicazione dei criteri di rotazione dei ruoli;
- Prima redazione del Glossario#super[G];
- Prima redazione delle Norme di Progetto#super[G];
- Prima redazione del Piano di Progetto#super[G];
- Prima redazione dell'Analisi dei Requisiti#super[G];
- Prime ipotesi architetturali e tecnologiche 
- Effettuare un incontro con _M31_;


==== Rischi attesi 

I possibili rischi :
- RT1: Rischio Tecnologico legato alla tecnologia utilizzata
- RI1: Rischio Individuale derivante dalle altre attività
- RG1: Rischio Globale derivato da malcomprensione del capitolatoG
- RG2: Rischio Globale legato a pareri contrastanti

==== Preventivo    //aggiungere tabella di preventivo (magari un template in un file .typ)
#v(1em)
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[],[5],
      [Mattia Dalla Pozza],[],[],[7],[],[],[],
      [Sebastiano Marana],[5],[],[],[],[],[],
      [Nicholas Moretto],[],[],[6],[],[],[],
      [Matteo Pretto],[],[],[],[],[],[5],
      [Alex Shu],[],[],[],[],[3],[],
      [Stefano Speranza],[],[],[6],[],[],[],
      [Ramona Zangla],[],[],[6],[],[],[],
  ),
  didascalia: "Sprint 1 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo

#v(1em)
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[],[],[],[5 (+3)],
      [Mattia Dalla Pozza],[],[],[7],[],[],[],
      [Sebastiano Marana],[5],[],[],[],[],[],
      [Nicholas Moretto],[],[],[6],[],[],[],
      [Matteo Pretto],[],[],[],[],[],[5 (-3)],
      [Alex Shu],[],[],[],[],[3],[],
      [Stefano Speranza],[],[],[6],[],[],[],
      [Ramona Zangla],[],[],[6],[],[],[],
  ),
  didascalia: "Sprint 1 - Consuntivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti   //altra tabella
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile], [30€/h], [5], [150€], [67 (-5)], [2010€ (-150€)],
      [Amministratore], [20€/h], [-], [-], [61], [1220€],
      [Analista], [25€/h], [25], [625€], [76 (-25)], [1900€ (-625€)],
      [Progettista], [25€/h], [-], [-], [156], [3900€],
      [Programmatore], [15€/h], [3], [45€], [218 (-3)], [3270€ (-45€)],
      [Verificatore], [15€/h], [10], [150€], [142 (-10)], [2130€ (-150€)],
      [*Totale*], [*-*], [*43*], [*970€*], [*720 (-43)*], [*14430€ (-970€)*],
  ),
    didascalia: "Sprint 1 - Aggiornamento delle risorse disponibili"
  )
]
==== Rischi incontrati

Durante questo primo sprint abbiamo avuto principalmente
difficoltà con una distribuzione dell'impegno non
completamente equo. L'indisponibilità poi di un membro del team ha 
portato gli altri membri a dover ulteriormente assorbire 
il lavoro in eccesso.

Alcuni rallentamenti inoltre sono stati dovuti ad un primo periodo
di approccio a JIRA da parte del gruppo non efficente, dovuto all'inesperienza
dell'utilizzo dello strumento e in aggiunta di un 
organizzazione degli incontri piu' spontanea e meno organizzata.

=== Retrospettiva

Durante lo sprint ci siamo dedicati principalmente ad una prima impostazione del
progetto, tramite automazioni e organizzazione github, alla progettazione di una
prima ipotesi architetturale/tecnologica a caldo e alla prima stesura
dei documenti necessari con un discreto sucesso, almeno come primo inizio di progetto.
Non siamo riusciti tuttavia a rendere l'ipotesi architetturale definitiva, in quanto
effettuata precedentemnte da una ricerca dello stato dell'arte approfondita e quindi
da una scarsita di informazioni.

=== Sprint 2   
Inizio: #h(1.99cm)*11-04-2025*\
Fine Prevista: #h(0.65cm)*24-04-2025*\
Fine Reale: #h(1.12cm)*24-04-2025*\
Giorni di ritardo: #h(0.15cm)*0*

==== Informazioni generali e attività da svolgere
Questo secondo sprint ha avuto principalmente come obiettivo la continuazione
e il miglioramento di quanto iniziato nel primo sprint basandoci inoltre
su quanto discusso con l'azienda proponente.

In particalare, le attività previste sono:

- Analisi dello stato dell'arte
- Continuazione dell'ipotesi architetturale e tecnologica
  - Approfondimento delle tecnologie proposte
- Redazione dei casi d'uso
- Continuazione del Glossario
- Continuazione delle Norme di Progetto
- Continuazione del Piano di Progetto
- Continuazione dell'Analisi dei Requisiti
- Miglioramento dell'utilizzo di JIRA 
- Automazioni Github 


==== Rischi attesi

I possibili rischi :
- RT1: Rischio Tecnologico legato alla tecnologia utilizzata
- RI1: Rischio Individuale derivante dalle altre attività
- RG2: Rischio Globale legato a pareri contrastanti

==== Preventivo    //aggiungere tabella di preventivo (magari un template in un file .typ)
#v(1em)
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
    [Nicolò Bolzon],[],[],[6],[],[],[],
      [Mattia Dalla Pozza],[5],[],[],[],[],[],
      [Sebastiano Marana],[],[4],[],[],[],[],
      [Nicholas Moretto],[],[],[7],[],[],[],
      [Matteo Pretto],[],[],[6],[],[],[],
      [Alex Shu],[],[],[],[],[],[5],
      [Stefano Speranza],[],[],[6],[],[],[],
      [Ramona Zangla],[],[],[],[],[],[6],
  ),
  didascalia: "Sprint 2 - Preventivo ore per ciascun componente"
)
]

==== Consuntivo

#v(1em)
#align(center)[
#tabella_preventivo_consuntivo(
  dati: (
      [Nicolò Bolzon],[],[],[6 (-1)],[],[],[],
      [Mattia Dalla Pozza],[5],[],[],[],[],[],
      [Sebastiano Marana],[],[4],[],[],[],[],
      [Nicholas Moretto],[],[],[7 (-2)],[],[],[],
      [Matteo Pretto],[],[],[6 (-1)],[],[],[],
      [Alex Shu],[],[],[],[],[],[5 (-1)],
      [Stefano Speranza],[],[],[6 (-1)],[],[],[],
      [Ramona Zangla],[],[],[],[],[],[6 (-1)],
  ),
  didascalia: "Sprint 2 - Preventivo ore per ciascun componente"
)
]

==== Aggiornamento delle risorse rimanenti   //altra tabella
#v(1em)
#align(center)[
  #tabella_aggiornamento_risorse(
    dati: (
      [Responsabile], [30€/h], [5], [150€], [67 (-5)], [2010€ (-150€)],
      [Amministratore], [20€/h], [4], [-], [61 (-4)], [1220€],
      [Analista], [25€/h], [20], [625€], [76 (-20)], [1900€ (-625€)],
      [Progettista], [25€/h], [-], [-], [156], [3900€],
      [Programmatore], [15€/h], [-], [45€], [218], [3270€ (-45€)],
      [Verificatore], [15€/h], [9], [150€], [142 (-9)], [2130€ (-150€)],
      [*Totale*], [*-*], [*43*], [*970€*], [*720 (-43)*], [*14430€ (-970€)*],
  ),
    didascalia: "Sprint 1 - Aggiornamento delle risorse disponibili"
  )
]
==== Rischi incontrati

Il principale rischio di questo secondo sprint e' stato il lungo periodo 
di festivita', come quello pasquale, che ha rallentato notevolmente
il progresso di tutte le attività attese.

Inoltre, un iniziale difficoltà nell'identificare con decisione i principali
punti su cui concetrarsi per avanzare nella produzione di un POC hanno portato
il team ad effettuare un analisi dello stato dell'arte, posponendo quindi l'avanzamento
dell'ipotesi architetturale e quindi della produzione stessa del POC.


=== Retrospettiva

Le difficoltà incontrare hanno portato alla luce come fosse e sia essenziale avere una
migliore panoramica dell'ambito di sviluppo del progetto, e di come inizare a sviluppare
parallelamente una prima base di POC sia essenziale al fine stesso di capire meglio
il contesto e identificare in anticipo eventuali issue.

