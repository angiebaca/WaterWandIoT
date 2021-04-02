//
//  ViewInfoView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 3/22/21.
//

import SwiftUI

struct ViewInfoView: View {
    
    let devices = Bundle.main.decode("DummyData.json")
    
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
            List {
                ForEach(self.devices, id: \.self) { item in
                    Text(" ID: \(item.id) \n\n\t Coordinates: \n\t\t Lat: \(item.latitude)\t Long: \(item.longitude)\n\n\t Depth: \(item.depth)\n\n\t Temperature: \(item.temperature)\n\n\t Conductivity: \(item.conductivity)\n\n\t Turbidity: \(item.turbidity)\n\n")
                        .font(.system(size: 15, weight: .semibold, design: .monospaced))
                        .foregroundColor(.backGroundBlue)
                }.listRowBackground(Color.clear)
            }
        }
        }
}

struct ViewInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ViewInfoView()
    }
}
