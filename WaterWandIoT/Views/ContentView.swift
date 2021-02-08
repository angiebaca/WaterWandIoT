//
//  ContentView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 1/26/21.
//  Edited by anthony de la torre on 1/26/21.
//
//  ContentView.swift
//  SecondXcode
//
//  Created by anthony de la torre on 11/30/20.
//

import SwiftUI
import CloudKit
import Mapbox

struct ContentView: View {
    
    init() {
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
    }
        
    var body: some View {
        TabView {
            HomeTabView().tabItem { Image(systemName: "house.fill") }
            MapTabView().tabItem { Image(systemName: "pin.fill") }
            SettingsTabView().tabItem{ Image(systemName: "gearshape.fill") }
        } // END TabView
    } // END var body: some View
} // END struct ContentView: View

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

