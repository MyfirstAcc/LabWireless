//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package lab9;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.SensorNode;
import inet.physicallayer.wireless.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;

network Wlan9
{
    parameters:
        @display("bgb=650,500;bgg=100,1,grey95");

    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=206.64,37.296");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=315.504,28.224");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=433.44,25.2");
        }

        controller: SensorNode {
            @display("p=560.448,307.44;i=misc/sensorgateway");
        }

        sensor1: SensorNode {
            @display("p=79.632,311.47202;i=misc/sensor");
        }

        lamp1: SensorNode {
            @display("p=74.592,206.64;i=status/bulb");
        }
}

