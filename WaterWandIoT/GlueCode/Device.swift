//
//  Device.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/21/21.
//

struct Device: Codable {
    var id: Int
    var latitude: Float
    var longitude: Float
    var depth: Float
    var temperature: Float
    var conductivity: Int
    var turbidity: Int
}

