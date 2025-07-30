#import "../../src/basic.typ": *

// VARIABILI
#let title = "Analisi dell’Avanzamento del Progetto Didattico"

// IMPOSTAZIONI TESTO
#set text(
  lang: "it",
  font: "New Computer Modern",
  size: 11pt,
)

// HEADER
#set page(header: context {
  if counter(page).get().first() > 1 [
    _Code Alchemists_
    #h(1fr)
    #title
    #rect(width: 100%, height: 1pt, fill: black)
  ]
})

// FOOTER
#set page(footer: context {
  if counter(page).get().first() > 1 [
    #rect(width: 100%, height: 1pt, fill: black)
    #align(center)[
      Pagina
      #counter(page).display("1")
      di
      #counter(page).final().first()
    ]
  ]
})

// PRIMA PAGINA
#page(background: image("../../assets/logoUnipdSfondo.png"))[
  #align(center)[ // Imposta tutto il testo centrato di default

    #image("../../assets/Logo-nome-motto.png", width: 8cm)

    //TITOLO
    #text(size: 22pt)[
       *#title*
    ]
    #set text(size: 15pt)
  ]
]

#pagebreak()

= Analisi dell’Avanzamento del Progetto Didattico

Siamo attualmente allo *Sprint 9* del nostro progetto didattico. Fino a questo punto abbiamo utilizzato in media 46 ore sulle 90 massime previste, rimanendo quindi nei limiti temporali complessivi. \

Siamo consapevoli però di aver accumulato un *ritardo operativo*, dovuto principalmente alla sovrapposizione con il periodo degli *esami universitari*. Tuttavia, questo rallentamento era *già stato messo in conto* nella pianificazione iniziale e non ha compromesso in modo significativo l’andamento complessivo. \

Una parte rilevante del tempo è stata impiegata nello *studio approfondito delle tecnologie scelte e nella progettazione iniziale*. A posteriori, ci rendiamo conto di aver dedicato più tempo del necessario a questa fase ma è risultato necessario per comprendere meglio le tecnologie utilizzate e ridurre i rallentamenti dovuti ad un loro utilizzo errato. Riteniamo che questa preparazione tecnica approfondita ci porterà ora a una *fase di progettazione e codifica più veloce ed efficiente*, in quanto abbiamo acquisito maggiore padronanza degli strumenti e delle librerie da utilizzare. \

Questa esperienza ci ha insegnato che la comprensione delle *tempistiche reali* non può basarsi solo su un calendario teorico, ma deve tenere conto anche della curva di apprendimento e dei fattori esterni. Per questo motivo stiamo rivedendo la nostra pianificazione futura, focalizzandoci su obiettivi essenziali e *tempi di consegna realistici*, senza compromettere la qualità del risultato finale. \

Ci siamo posti l’obiettivo di migliorare la pianificazione delle attività sia a breve che a medio termine, tenendo conto del ritardo e cercando di fare il necessario per la produzione di un *MVP* nel minore tempo possibile.
Un altro miglioramento nella pianificazione che intendiamo apportare, è la creazione di *task più specifiche e dettagliate* per ogni membro del team per cercare di massimizzare il rendimento lavorativo in tempi ridotti e dare più responsabilità ai singoli componenti. \

Ci poniamo inoltre di aumentare ulteriormente la collaborazione del team, in particolare in caso di nuovi ritardi nelle task. Dato che il mancato completamento di una task può a volte bloccare lo svolgimento di quelle successive, ci poniamo di *migliorare la collaborazione del team* verso il *rapido completamento delle attività* più onerose e che stanno apportando ritardi, in modo da impedire che il rallentamento si propaghi. \

Il gruppo rimane motivato e consapevole, con l’obiettivo di recuperare in modo sostenibile il tempo perso e concludere il progetto nei tempi previsti. \

#pagebreak()
Di seguito la tabella con i macro-obiettivi per i prossimi quattro sprint:

#set table(
  fill:(x,y)=> if y==0 {rgb("#2599ff")} else if x == 0 {luma(235)},
)

#figure(
  table(
    columns: (2fr, 4fr),
    inset: 10pt,
    align: center,
    table.header(
    [*Sprint*], [*Obiettivi*]),

    [*Sprint 9 - Parte 2* \ _(dal 28/07 al 01/08)_],  [],
    [*Sprint 10 - Parte 1* \ _(dal 01/08 al 08/08)_], [],
    [*Sprint 10 - Parte 2* \ _(dal 08/08 al 18/08)_], [],
    [*Sprint 11 - Parte 1* \ _(dal 18/08 al 25/08)_], [],
    [*Sprint 11 - Parte 2* \ _(dal 25/08 al 01/09)_], [],
    [*Sprint 12 - Parte 1* \ _(dal 01/09 al 08/09)_], [],
    [*Sprint 12 - Parte 2* \ _(dal 08/09 al 12/09)_], [],
    [12/09/2025], [*Consegna del Progetto*],
    ),
  )