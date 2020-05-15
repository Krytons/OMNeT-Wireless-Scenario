# OMNeT-Wireless-Scenario
Progetto RAI 2019/2020 Caruso Bartolomeo, Fallica Giuseppe


Corso di Reti per l’automazione industriale
Elaborato OMNeT++
Consegna:
Simulare uno scenario di una rete wireless ad hoc IEEE 802.11 in cui dei nodi mobili scambiano
periodicamente dei messaggi. Lo scenario include nodi (chiamati end node) che si occupano
esclusivamente della trasmissione di pacchetti periodici, nodi (chiamati forwarding node) che si
occupano esclusivamente del forwarding dei pacchetti e un nodo ricevitore. Implementare un
modulo che permette di inizializzare le tabelle di routing dei forwarding nodi . Le tabelle di routing
dovranno supportare la funzionalità di modifica a runtime fatta da un eventuale specifico algoritmo
di routing (da non implementare).
Cosa Utilizzare:
• le librerie basate su INET creando un nuovo progetto in cui ogni AdHocHost utilizza il
modulo che simula il livello fisico chiamato Ieee80211ScalarRadio e
Ieee80211ScalarRadioMedium.
• il modello di canale LogNormalShadowing con alpha=4.03 e sigma=4.98.
Metodologia
Il progetto deve estendere un modulo preesistente (ad esempio il modulo NextHopNetworkLayer).
Prendere spunto dall’esempio DsdvNetwork (inet/examples/manetrouting/dsdv/DsdvNetwork) per
l’utilizzo del modulo NextHopNetworkLayer.
• Ogni end node invia periodicamente, con periodo parametrizzabile, un messaggio UDP in
broadcast.
• Il pacchetto a livello network deve avere i seguenti campi:
􀀀 src (2 byte): indirizzo sorgente del messaggio
􀀀 dst (2 byte): indirizzo destinatario del messaggio
􀀀 seq (2 byte): numero di sequenza di un pacchetto
• Tutti i forwarding node nel range di copertura degli end node che ricevono i messaggi
correttamente, li inoltrano verso il ricevitore utilizzando il percorso con il minor numero di
hop (inizializzato staticamente utilizzando appositi parametri).
• Il nodo ricevitore colleziona i dati e genera le statistiche per nodo.
Metriche per la valutazione:
La metrica da valutare è l’end-to-end delay (evidenziando i valori medio, massimo e minimo) in
diverse configurazioni di rete con 4 hop e 20 nodi.
Riferimenti:
Sito di OMNeT++: https://omnetpp.org/
Manuale OMNeT++: https://omnetpp.org/doc/omnetpp/manual/usman.html
Manuale INET: https://doc.omnetpp.org/inet/api-current/neddoc/index.html
