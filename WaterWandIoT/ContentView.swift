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
        
    var body: some View {
        TabView {
            ZStack{
                HomeTabView().tabItem {Image(systemName: "house.fill")}
            }
            ZStack {// tab 2 - map tab
                MapView(annotations: $annotations).centerCoordinate(.init(latitude: 37.791293, longitude: -122.396324)).zoomLevel(16)
            }.tabItem { Image(systemName: "pin.fill") }
            
            Text("SETTINGS TAB").bold() // tab 3 - settings tab
                .tabItem{Image(systemName: "gearshape.fill")}
            
            
            
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

