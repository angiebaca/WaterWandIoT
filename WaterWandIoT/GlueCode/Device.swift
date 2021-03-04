//
//  Device.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/21/21.
//
import Foundation
import Mapbox

struct Device: Codable, Identifiable {
    var id: Int
    var latitude: CLLocationDegrees
    var longitude: CLLocationDegrees
    var depth: Float
    var temperature: Float
    var conductivity: Int
    var turbidity: Int
}

