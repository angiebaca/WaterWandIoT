//
//  MapTabView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI
import Mapbox

let devices = Bundle.main.decode("DummyData.json")

class DeviceAnnotation: MGLPointAnnotation {
    
    var depth: Double!
    var temperature: Double!
    var conductivity: Int!
    var turbidity: Int!
    
}

func addAnnotations(device: Device) -> MGLPointAnnotation {
    let point = DeviceAnnotation()
    
    point.coordinate = CLLocationCoordinate2D(latitude: device.latitude, longitude: device.longitude)
    point.title = device.id
    point.depth = device.depth
    point.temperature = device.temperature
    point.conductivity = device.conductivity
    point.turbidity = device.turbidity
    
    return point
    
}

func getAnnotations() -> [MGLPointAnnotation] {
    
    var array_of_devices: [MGLPointAnnotation]  = []
    devices.forEach({ (item) in
        array_of_devices.append(addAnnotations(device: item))
    })
    
    return array_of_devices
}
struct MapTabView: View {
    
//    JUST HARDCODING THIS TO MAKE SURE MULTIPLE ANNOTATIONS WORK
    @State var annotations: [MGLPointAnnotation] = [
//        MGLPointAnnotation(title: "ID:0", coordinate: .init(latitude: 25.747951, longitude: -80.382897)),
//        MGLPointAnnotation(title: "ID:1", coordinate: .init(latitude: 25.755656, longitude: -80.400107))
        ]
    
    var selected_devices: [MGLPointAnnotation] = []
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                
                HStack {

                    Spacer()
                    Button(action: {
                        selected_devices.append(contentsOf: getAnnotations())
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
                        MapView(annotations: $annotations).filterButtonSelectedAtIndex(2)
                        
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
