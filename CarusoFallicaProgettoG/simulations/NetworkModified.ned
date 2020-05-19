package carusofallicaprogettog.simulations;

//Added inet thanks to "project references" option!
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator; //Used to implement IPv4
import inet.node.inet.AdhocHost; //Used to implement nodes
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium; //This is our physical layer
import inet.visualizer.integrated.IntegratedMultiVisualizer; //Our visualizer
import inet.common.scenario.ScenarioManager;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.dsdv.DsdvRouter;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;

network NetworkModified{
    parameters:
        @display("bgb=799,505");
        int number;
    	//Essendo wireless non sono necessarie connessioni con i moduli.
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=71,135");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=71,38");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=68,233");
        }
        routingTableRecorder: RoutingTableRecorder {
            parameters:
                @display("p=93,320;is=s");
        }
        host[number]: AdhocHost {
            @display("p=415.344,295.22;is=l");
        }
}
