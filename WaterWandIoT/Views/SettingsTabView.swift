//
//  SettingsTabView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI

struct SettingsTabView: View {
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            Text("SETTINGS TAB").bold()
        }
    }
}

struct SettingsTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}
