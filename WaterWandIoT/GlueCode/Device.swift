//
//  Device.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/21/21.
//
import Foundation
import Mapbox

struct Device: Codable, Identifiable, Hashable {
    let id: String
    let latitude: Double
    let longitude: Double
    let depth: Double
    let temperature: Double
    let conductivity: Int
    let turbidity: Int
}

