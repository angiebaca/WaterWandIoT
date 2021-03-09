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
    
    @State var annotations: [MGLPointAnnotation] = []
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            MapView(annotations: $annotations).centerCoordinate(.init(latitude: 25.747951, longitude: -80.382897)).zoomLevel(10)
            VStack {
                
                HStack {

                    Spacer()
                    Button(action: {
                        let selected_devices = getAnnotations()
                        self.annotations.removeAll()
                        self.annotations.append(MGLPointAnnotation(title: selected_devices[0].title!, coordinate: selected_devices[0].coordinate))
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
                        let selected_devices = getAnnotations()
                        self.annotations.removeAll()
                        for dev in selected_devices {
                            self.annotations.append(MGLPointAnnotation(title: dev.title!, coordinate: dev.coordinate))
                        }
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

            }//END VSTACK
        }//END ZSTACK
    }//END BODY
}//END VIEW


struct MapTabView_Previews: PreviewProvider {
    static var previews: some View {
        MapTabView()
    }
}
