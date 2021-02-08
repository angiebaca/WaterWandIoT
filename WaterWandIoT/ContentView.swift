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
    
    @State var annotations: [MGLPointAnnotation] = [
            MGLPointAnnotation(title: "Mapbox", coordinate: .init(latitude: 37.791434, longitude: -122.396267))
        ]
    
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

/* GARBAGE
 
 //        Text("Anthony Jose de la Torre").foregroundColor(.white).padding().background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/).cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/).padding().background(Color.blue).cornerRadius(15)
 
 */

