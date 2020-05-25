package carusofallicaprogettog.simulations;

//Added inet thanks to "project references" option!
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator; //Used to implement IPv4
import inet.networklayer.configurator.nexthop.NextHopNetworkConfigurator; //Used to implement NextHop
import inet.networklayer.configurator.contract.INetworkConfigurator;
import inet.node.inet.AdhocHost; //Used to implement nodes
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium; //This is our physical layer
import inet.visualizer.integrated.IntegratedMultiVisualizer; //Our visualizer
import inet.common.scenario.ScenarioManager;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.dsdv.DsdvRouter;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;

network NetworkModified
{
    parameters:
        @display("bgb=1230.762,856.138");
        int number;
    	//Essendo wireless non sono necessarie connessioni con i moduli.
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=880.57,152.7");
        }
        networkConfigurator: <> like INetworkConfigurator {
            @display("p=880.57,60.062;is=s");
        }
        //configurator: NextHopNetworkConfigurator {
            //@display("p=70.242,43.774");
        //}
        visualizer: IntegratedMultiVisualizer {
            @display("p=880.57,252.464");
        }
        routingTableRecorder: RoutingTableRecorder {
            parameters:
                @display("p=888.714,351.21;is=s");
        }
        host[number]: AdhocHost {
            @display("p=264.68,242.284;is=l");
        }

}
