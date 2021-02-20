//
//  MapTabView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI
import Mapbox

struct MapTabView: View {
    
    @State var annotations: [MGLPointAnnotation] = [
        MGLPointAnnotation(title: "Mapbox", coordinate: .init(latitude: 25.747951, longitude: -80.382897)),
        MGLPointAnnotation(title: "Mapbox", coordinate: .init(latitude: 25.755656, longitude: -80.400107))
        ]
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                
                HStack {

                    Spacer()
                    Button(action: {
                        UIApplication.shared.open(URL(string:"http://biaynabogosian.com/research/fiu-waterwandiot")!)
                    }) {
                        Text("Your Device")
                            .bold()
                            .padding()
                            .background(Color.backGroundBlue)
                            .foregroundColor(Color.white)
                            .cornerRadius(50)
                    }//END FIRST BUTTON
                    
                    Spacer()
                    Button(action: {
                        UIApplication.shared.open(URL(string:"http://biaynabogosian.com/research/fiu-waterwandiot")!)
                    }) {
                        Text("All Devices")
                            .bold()
                            .padding()
                            .background(Color.backGroundBlue)
                            .foregroundColor(Color.white)
                            .cornerRadius(50)
                    }//END SECOND BUTTON
                    
                    Spacer()
                    Button(action: {
                        UIApplication.shared.open(URL(string:"http://biaynabogosian.com/research/fiu-waterwandiot")!)
                    }) {
                        Text("View Info")
                            .bold()
                            .padding()
                            .background(Color.backGroundBlue)
                            .foregroundColor(Color.white)
                            .cornerRadius(50)
                    }
                    Spacer()
                }//END THIRD BUTTON
                
                Spacer()
                
                MapView(annotations: $annotations).centerCoordinate(.init(latitude: 25.747951, longitude: -80.382897)).zoomLevel(10)
            }//END VSTACK
        }//END ZSTACK
    }//END BODY
}//END VIEW

struct MapTabView_Previews: PreviewProvider {
    static var previews: some View {
        MapTabView()
    }
}
