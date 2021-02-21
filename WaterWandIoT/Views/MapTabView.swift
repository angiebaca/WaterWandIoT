//
//  MapTabView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI
import Mapbox

struct MapTabView: View {
    
    //JUST HARDCODING THIS TO MAKE SURE MULTIPLE ANNOTATIONS WORK
    @State var annotations: [MGLPointAnnotation] = [
        MGLPointAnnotation(title: "ID:0", coordinate: .init(latitude: 25.747951, longitude: -80.382897)),
        MGLPointAnnotation(title: "ID:1", coordinate: .init(latitude: 25.755656, longitude: -80.400107))
        ]
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    //JUST INITIALIZING REMOVE LATER
    var locations = [
        CLLocationCoordinate2D(latitude: 25.747951, longitude: -80.382897)
    ]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                
                HStack {

                    Spacer()
                    Button(action: {
                        //NEED A FLAG TO TELL THIRD BUTTON WHICH STUFF TO DISPLAY
                        
                        //POPULATES PROPER COORDINATES INTO ARRAY
                        //THIS SHOULD BE A SEPERATE MODULE THAT READS JSON AND POPULATES CONTENTS INTO AN OBJECT
                        //MAYBE HAVE A FUNCTION WITHIN THAT MODULE TO RETURN AN ARRAY ON THE OBJECTS DATA AND COORDINATES 
                        var locations = [
                            CLLocationCoordinate2D(latitude: 25.747951, longitude: -80.382897)
                        ]
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
                        //NEED A FLAG TO TELL THIRD BUTTON WHICH STUFF TO DISPLAY
                        
                        //POPULATES PROPER COORDINATES INTO ARRAY
                        //THIS SHOULD BE A SEPERATE MODULE THAT READS JSON AND POPULATES CONTENTS INTO AN OBJECT
                        //MAYBE HAVE A FUNCTION WITHIN THAT MODULE TO RETURN AN ARRAY ON THE OBJECTS DATA AND COORDINATES
                        var locations = [
                            CLLocationCoordinate2D(latitude: 25.747951, longitude: -80.382897),
                            CLLocationCoordinate2D(latitude: 25.755656, longitude: -80.400107),
                        ]
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
                        //SHOW INFORMATION DEPENDING ON WHICH FLAG IS SET(MIMICK TAPPING ON ICONS???)
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
                
                //WHERE STATE VAR ANNOTATIONS SHOULD BE DEFINED BUT LONG/LATS ARE POPULATED WITH THE CONTENTS OF THE LOCATIONS ARRAY
                //CENTER COORDINATE SHOULD BE USERS LOCATION
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
