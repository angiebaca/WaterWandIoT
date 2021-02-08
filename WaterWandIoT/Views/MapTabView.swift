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
            MGLPointAnnotation(title: "Mapbox", coordinate: .init(latitude: 37.791434, longitude: -122.396267))
        ]
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            MapView(annotations: $annotations).centerCoordinate(.init(latitude: 37.791293, longitude: -122.396324)).zoomLevel(16)
        }
    }
}

struct MapTabView_Previews: PreviewProvider {
    static var previews: some View {
        MapTabView()
    }
}
