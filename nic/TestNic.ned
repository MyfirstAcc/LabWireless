//
// Copyright (C) 2006 OpenSim Ltd.
//
// SPDX-License-Identifier: LGPL-3.0-or-later
//


package nic;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.WirelessHost;
import inet.physicallayer.wireless.common.contract.packetlevel.IRadioMedium;
import inet.visualizer.contract.IIntegratedVisualizer;

network TestNic
{
    parameters:
        int numHosts;
    //        @display("bgb=450,450");
    //        @figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);
    //
    //        @figure[rcvdPkText](type=indicatorText; pos=380,20; anchor=w; font=,18; textFormat="packets received: %g"; initialValue=0);
    //        @statistic[packetReceived](source=host[0].app[0].pingTxSeq; record=figure(count); targetFigure=rcvdPkText);
    submodules:
        visualizer: <default(firstAvailableOrEmpty("IntegratedCanvasVisualizer"))> like IIntegratedVisualizer if typename != "" {
            parameters:
                @display("p=100,300;is=s");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=100,100;is=s");
        }
        radioMedium: <> like IRadioMedium {
            parameters:
                @display("p=100,200;is=s");
        }
        host[numHosts]: WirelessHost {
            parameters:
                @display("p=250,200;i=device/pocketpc");
        }
}
