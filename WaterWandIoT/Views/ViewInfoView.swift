//
//  ViewInfoView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 3/22/21.
//

import SwiftUI
import Mapbox

struct ViewInfoView: View {
    
    let devices = Bundle.main.decode([Device].self, from: "DummyData.json")
    
    @State var annotations: [MGLPointAnnotation] = [MGLPointAnnotation(title: "Mapbox", coordinate: .init(latitude: 25.747951, longitude: -80.382897))]
    
    let backGroundBlue = UIColor(red: 23/255, green:  138/255, blue: 180/255, alpha: 1.0)

    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: backGroundBlue]

    }
    let gradient = Gradient(colors: [.white, .backGroundBlue])

    var body: some View {
        ZStack{
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea().offset(y:100)
            VStack {
                Text(" ID: \(devices[0].id) \n\n\t Coordinates: \n\t\t Lat: \(devices[0].latitude)\t Long: \(devices[0].longitude)\n\n\t Depth: \(devices[0].depth)\n\n\t Temperature: \(devices[0].temperature)\n\n\t Conductivity: \(devices[0].conductivity)\n\n\t Turbidity: \(devices[0].turbidity)\n\n")
                    .font(.system(size: 15, weight: .semibold, design: .monospaced))
                    .foregroundColor(.backGroundBlue)
                    .background(Color.clear)
                MapView(annotations: $annotations).centerCoordinate(.init(latitude: 25.747951, longitude: -80.382897)).zoomLevel(10).frame(width: 350, height: 300)
                }.listRowBackground(Color.clear)
        }
    }
}

struct ViewInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ViewInfoView()
    }
}
