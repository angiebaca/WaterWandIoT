//
//  ContentView.swift
//  WaterWandIoT
//
//  Created by Alvaro Palacios on 1/26/21.
//  Edited by anthony de la torre on 1/26/21.

//
//  ContentView.swift
//  SecondXcode
//
//  Created by anthony de la torre on 11/30/20.
//

import SwiftUI
import CloudKit
import MapKit

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.76, longitude: -80.19), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
        
    var body: some View {
        
        TabView {
            
            ZStack { // tab 1 - home
                Color(.cyan).ignoresSafeArea()
                HStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        Image.init(systemName: "plus")
                        
                        Spacer()
                    
                        Button(action: {
                            UIApplication.shared.open(URL(string:"https://crestcache.fiu.edu")!)
                        }) { // FIXME add action
                            Image("crest")
                                .resizable()
                                .scaledToFit()
                                .padding()
                        }
                        
                        Spacer()
                        
                        Image("ww")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(30)
                        
                        Spacer()
                        
                        Button(action: {
                            UIApplication.shared.open(URL(string:"http://biaynabogosian.com/research/fiu-waterwandiot")!)
                        }) { // FIXME add action
                            Text("LEARN MORE")
                                .bold()
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(Color.white)
                                .cornerRadius(50)
                        }
                        
                        Spacer()
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }.tabItem {Image(systemName: "house.fill")} // end tab 1 ZStack
            
            Map(coordinateRegion: $region) // tab 2 - map tab
                .tabItem { Image(systemName: "pin.fill") }
            
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

