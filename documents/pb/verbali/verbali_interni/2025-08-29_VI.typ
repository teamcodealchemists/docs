#import "../../../../src/basic.typ": *

// VARIABILI
#let titolo = "Verbale Interno del "
#let data = "29/08/2025"
#let titolo = titolo + data
#let status = "Approvato"
#let versione = "1.0.0"
#let presenze = (
  /* formato: <p.nome,> oppure <"nome",> */
  p.nicolo,
  p.mattia,
  p.sebastiano,
  p.nicholas,
  p.matteo,
  p.alex,
  p.ramona
)
#let distribuzione = (
  /* formato:  p.nome,  oppure  "nome",  */
  "Code Alchemists",
)
#let voci_registro = (
  /* formato:  [text],  OPPURE  "text",  */
    
    [1.0.0], [29/08/2025], [-], [N. Moretto], [Revisione del documento],
    [0.1.0], [29/08/2025], [N. Bolzon], [N. Moretto], [Prima stesura del documento]

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

#set heading(numbering: "1.1.")

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  block(it)
}

// INSERIRE QUI CONTENUTO
  = Informazioni generali
    In data *29 agosto 2025*, dalle ore *14:30* alle ore *15:30*, si è svolta, in modalità telematica sulla piattaforma _Discord_, la riunione interna del _Team Code Alchemists_.\
    La riunione si è svolta al termine dell'undicesimo sprint#super[G] per fare il punto della situazione, discutere le prossime attività da intraprendere e definire ruoli e responsabilità di ciascun membro del team. \

    == Ordine del Giorno
    + Discussione sui lavori svolti durante lo sprint#super[G] PB#super[G] 11.
    + Valutazione dello stato di avanzamento del lavoro.
    + Pianificazione del prossimo sprint#super[G] e delle attività da intraprendere.
    + Assegnazione di ruoli e responsabilità ai membri del team.
    
  #pagebreak()
  = Dettagli della riunione
  Il verbale iniziale viene redatto da *#p.nicolo* e verificato da *#p.nicholas*. \

  == Lavori svolti durante lo sprint PB 11
  Nel corso dell’undicesimo sprint #super[G], il team ha concentrato le attività sul completamento della progettazione dettagliata e sul proseguimento della fase di codifica. Parallelamente, è proseguita la redazione della documentazione tecnica. Inoltre, si è svolto un incontro di aggiornamento con l’azienda _M31_.

  === Progettazione dettagliata dei microservizi
  Nel corso dello sprint sono stati completati i microservizi#super[G] relativi alla gestione degli ordini#super[G] aggregati, all’autenticazione#super[G], al sistema centralizzato e al routing.

  L’analisi e lo studio del microservizio#super[G] di autenticazione#super[G] mediante *ResGate* hanno evidenziato alcune criticità, principalmente riconducibili alla complessità della tecnologia e alla limitata disponibilità di documentazione ufficiale.

  In sintesi, l’architettura#super[G] prevede che il client invii la richiesta di autenticazione#super[G] a un microservizio#super[G] del sistema, il quale, anziché rispondere direttamente al client _(operazione che potrebbe comportare potenziali rischi di sicurezza)_ inoltra la richiesta a ResGate. Quest’ultimo, tramite l’utilizzo di un token, verifica#super[G] la validità della connessione e delle credenziali dell’utente. Successivamente, ogni richiesta verso i microservizi#super[G] del sistema viene accompagnata dal token generato da ResGate, che consente al microservizio destinatario di validare i permessi e autorizzare l’accesso alle risorse richieste.

  === Codifica dei microservizi
  Nel corso dello sprint è stato completato il microservizio#super[G] di inventario#super[G], sia per quanto concerne l’implementazione che le attività di testing. Parallelamente, lo sviluppo del microservizio#super[G] di ordini#super[G] risulta attualmente in fase di completamento.

  === Stesura e miglioramento dei documenti
  Nel corso dello sprint è proseguita l’attività di redazione della documentazione a supporto del corretto avanzamento del progetto didattico. Particolare attenzione è stata dedicata al *Piano di Progetto* e al documento di *Specifica Tecnica*.

  === Incontro di aggiornamento con M31
  In data *martedì 26 agosto 2025* si è svolto un incontro di aggiornamento con l’azienda _M31_, organizzato in modalità online al fine di ridurre i tempi di spostamento e ottimizzare le ore di lavoro dedicate dal team alle attività progettuali.

  Durante la riunione, i rappresentanti di _M31_ hanno espresso apprezzamento per i risultati raggiunti e per i contenuti presentati. È stato concordato di proseguire con la realizzazione del MVP#super[G], integrando i suggerimenti ricevuti. Inoltre, il team si impegnerà a redigere il Test Book e a trasmetterlo all’azienda con alcuni giorni di anticipo rispetto alla consegna finale del progetto, così da pianificare congiuntamente la fase di testing.

  Per ulteriori dettagli, si rimanda al *Verbale Esterno* della medesima riunione, disponibile al seguente collegamento:
  #underline[#link("https://teamcodealchemists.github.io/docs/pb/verbali/verbali_esterni/2025-08-26_VE_2.0.0_signed.pdf", "Verbale Esterno del 26/08/2025")].

  == Analisi delle criticità e valutazione avanzamento del lavoro
  Durante la riunione non sono emerse criticità rilevanti nello svolgimento delle attività. L’unico aspetto problematico ha riguardato la fase di studio del sistema di autenticazione#super[G], già evidenziato in precedenza. Tale criticità è stata successivamente superata grazie a un’analisi approfondita che ha permesso di definire correttamente le modalità di implementazione del relativo microservizio#super[G].

  Al fine di ottimizzare l’avanzamento del lavoro, il team ha confermato _(in continuità con quanto stabilito nello sprint precedente)_ la scelta di assegnare task specifiche a ciascun membro, con scadenza intermedia fissata a metà sprint (*venerdì 5 settembre*). Tale approccio è finalizzato a garantire una maggiore responsabilizzazione individuale, a migliorare la gestione delle attività e a rendere più trasparente il monitoraggio#super[G] dei progressi.

  Le attività assegnate sono riportate nel documento di indicazioni relativo allo Sprint#super[G] PB#super[G] 12, condiviso con il team tramite la piattaforma _Google Drive_.

  == Definizione del prossimo sprint
  Con la conclusione dell'undicesimo sprint, il team ha proceduto all’assegnazione di ruoli e responsabilità ai membri, come riportato nella sezione successiva del presente documento.
  Il dodicesimo e ultimo sprint, della durata di due settimane, avrà inizio il *29 agosto* e terminerà il *12 settembre*. Esso sarà identificato come Sprint#super[G] PB#super[G] 12 e sarà focalizzato principalmente sul completamento del *MVP* e successivamente terminare la fase *PB* mediante la validazione#super[G] del prodotto#super[G] finale da parte dell'azienda e le revisioni con i docenti.

  === Assegnazione di ruoli e responsabilità ai membri del team
  Durante la riunione, il team ha discusso e assegnato i ruoli e le responsabilità di ciascun membro, conformemente a quanto stabilito nelle Norme di Progetto. In linea con tali indicazioni, la rotazione dei ruoli è avvenuta come segue:
  - *Responsabile#super[G]*: #p.ramona.
  - *Programmatori#super[G]*: #p.sebastiano, #p.matteo, #p.nicolo, #p.alex, #p.mattia.
  - *Verificatori#super[G]*: #p.nicholas, #p.stefano.

  === Definizione delle attività da intraprendere
  Al termine della riunione, il team ha discusso le attività previste per il dodicesimo sprint.
  Di seguito, le principali attività programmate per il prossimo sprint:
  - Completamento del microservizio#super[G] Orders e relativa fase di test unitario.
  - Implementazione del microservizio#super[G] Ordine#super[G] Aggregato e test unitario.
  - Completamento della Specifica Tecnica.
  - Implementazione del microservizio#super[G] Stato.
  - Implementazione del microservizio#super[G] Stato Cloud.
  - Integrazione del microservizio#super[G] di Autenticazione#super[G] con gli altri microservizi#super[G], comprensiva di test unitari e test di accettazione.
  - Implementazione del microservizio#super[G] Sistema Centralizzato.
  - Studio dei sistemi di telemetria e logging e loro integrazione nei microservizi#super[G].

  Per ciascun membro, è raccomandato di consultare i requisiti#super[G] relativi al proprio microservizio#super[G], aggiornare la *Checklist Requisiti Soddisfatti* spuntando quelli completati e pianificare i relativi test di accettazione e/o casi d’uso.

  Nella seconda parte dello sprint, saranno svolte le attività di verifica#super[G] e completamento della documentazione esistente e di compilazione del *Manuale Utente*.
  
  #pagebreak()
  = Esiti della riunione
  La riunione si è conclusa con l’assegnazione dei compiti e la definizione delle decisioni e delle azioni intraprese, ponendo particolare attenzione alle attività che il team dovrà svolgere durante il prossimo sprint, come indicato al punto *2.3.2* del presente documento.

#pagebreak()
  = Tabella delle decisioni e azioni
    #let voci_tabella = (
    [A34], [Relizzare il Test Book da consegnare all’azienda qualche giorno prima della consegna.],
    [D45], [Aumentare il numero di programmatori#super[G] per terminare la fase di codifica.],
    [D46], [Terminare lo sviluppo dell'MVP entro il 5 settembre 2025.],
    [A35], [Terminare la fase di codifica.],
    [A36], [Completamento del documento di Specifica Tecnica],
    [A37], [Inizio revisione di tutta la documentazione],
    [DOC34], [Stesura del verbale interno del 29/08/2025]
  )

  #show: decision_table.with(
  voci: voci_tabella
  )
