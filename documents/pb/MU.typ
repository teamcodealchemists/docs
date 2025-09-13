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

  == Scopo dell'applicativo

  == Glossario
  // Importanza di avere un glossario, link per rimandare al glossario e nomenclatura con cui si trovano le parole consultabili nel Glossario (la G in apice)

  == Riferimenti 
    === Riferimenti normativi 
    // Link al regolamento del progetto didattico

    === Riferimenti informativi
    // Link al capitolato del progetto

  = Requisiti di sistema      
    == Requisiti hardware

    == Requisiti software

  
  = Installazione del sistema
    == Clonazione della repository 

    == Preparazione del sistema

    == Configurazione // non so se serve?

    == Avvio del sistema

    == Spegnimento

    == Ripristino


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

    == Test di accettazione


  = Telemetria
  // inserire sottosezioni