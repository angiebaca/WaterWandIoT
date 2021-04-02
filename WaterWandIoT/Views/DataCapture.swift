//
//  DataCapture.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 4/2/21.
//

import SwiftUI

struct DataCapture: View {
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Text("Data Capture Details")
            }.padding().navigationBarTitle("Data Capture")
        }
    }
}

struct DataCapture_Previews: PreviewProvider {
    static var previews: some View {
        DataCapture()
    }
}
