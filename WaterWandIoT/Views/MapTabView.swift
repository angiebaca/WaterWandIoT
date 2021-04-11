//
//  MapTabView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI
import Mapbox

let devices = Bundle.main.decode([Device].self, from: "DummyData.json")

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
    let selected_devices = getAnnotations()

    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea().offset(y:-300)
                MapView(annotations: $annotations).centerCoordinate(.init(latitude: 25.747951, longitude: -80.382897)).zoomLevel(10).offset(y:80)
                VStack {
                    
                    HStack {

                        Spacer()
                        Button(action: {
                            self.annotations.removeAll()
                            self.annotations.append(MGLPointAnnotation(title: selected_devices[0].title!, coordinate: selected_devices[0].coordinate))
                        }) {
                            Text("My Device")
                                .font(.caption)
                                .bold()
                                .padding()
                                .background(Color.backGroundBlue)
                                .foregroundColor(Color.white)
                                .cornerRadius(80)
                        }//END FIRST BUTTON
                        
                        Button(action: {
                            self.annotations.removeAll()
                            for dev in selected_devices {
                                self.annotations.append(MGLPointAnnotation(title: dev.title!, coordinate: dev.coordinate))
                            }
                        }) {
                            Text("All Devices")
                                .font(.caption)
                                .bold()
                                .padding()
                                .background(Color.backGroundBlue)
                                .foregroundColor(Color.white)
                                .cornerRadius(80)
                        }//END SECOND BUTTON
                        
                        NavigationLink(destination: ViewInfoView(), label: {
                            Text("View Info")
                                .font(.caption)
                                .bold()
                                .padding()
                                .background(Color.backGroundBlue)
                                .foregroundColor(Color.white)
                                .cornerRadius(80)
                        })//END THIRD BUTTON
                        Spacer()
                    }//HSTACK
                    
                    Spacer()
                        
                }//END VSTACK
            }.navigationBarTitle("Water Wand Locations")//END ZSTACK
        }.accentColor(.backGroundBlue).frame(height: 850)//END NAVIGATION VIEW
        }//END BODY
}//END VIEW


struct MapTabView_Previews: PreviewProvider {
    static var previews: some View {
        MapTabView()
    }
}
