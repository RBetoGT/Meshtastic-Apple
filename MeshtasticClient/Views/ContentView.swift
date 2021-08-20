/*
Abstract: Default App View
*/

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .devices

    enum Tab {
        case messages
        case devices
        case map
        case featured
        case list
        case ble
    }

    var body: some View {
        TabView(selection: $selection) {

            DeviceHome()
                .tabItem {
                    Label("Devices", systemImage: "flipphone")
                }
                .tag(Tab.devices)
            DeviceList()
                .tabItem {
                    Label("Device List", systemImage: "list.bullet.rectangle")
                }
                .tag(Tab.devices)
            DeviceMap()
                .tabItem {
                    Label("Mesh Map", systemImage: "map")
                }
                .tag(Tab.map)
            Messages()
                .tabItem {
                    Label("Messages", systemImage: "message")
                }
                .tag(Tab.messages)
            DeviceBLE()
                .tabItem {
                    Label("Bluetooth", systemImage: "dot.radiowaves.left.and.right")
                }
                .tag(Tab.ble)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}