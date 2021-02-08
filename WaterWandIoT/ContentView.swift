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
    let gradient = Gradient(colors: [.white, .backGroundBlue])
        
    var body: some View {

        TabView {
            
            ZStack { // tab 1 - home
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
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

