package carusofallicaelaboratog.simulations;

//Added inet thanks to "project references" option!
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator; //Used to implement IPv4
import inet.node.inet.AdhocHost; //Used to implement nodes
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium; //This is our physical layer
import inet.visualizer.integrated.IntegratedCanvasVisualizer; //Our visualizer
import inet.common.scenario.ScenarioManager;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.dsdv.DsdvRouter;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;


network PeriodicalWiFi
{
    parameters:
        @display("bgb=799,505");
        int endNodeCount;
        int forwardingNodeCount;
        int receiveNodeCount;
    	//Essendo wireless non sono necessarie connessioni con i moduli.
    submodules:
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=71,135");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=71,38");
        }
        visualizer: IntegratedCanvasVisualizer {
            @display("p=68,233");
        }
        routingTableRecorder: RoutingTableRecorder {
            parameters:
                @display("p=93,320;is=s");
        }
        scenarioManager: ScenarioManager {
            parameters:
                script = default(xml("<scenario/>"));
                @display("p=93,396;is=s");
        }
        forwardingNode[forwardingNodeCount]: AdhocHost {
            @display("p=415.344,295.22;is=l");
        }
        receiver[receiveNodeCount]: AdhocHost {
            @display("p=564.99,162.88;is=l");
        }
        sender[endNodeCount]: AdhocHost {
            @display("p=276.896,162.88;is=l");
        }
}
