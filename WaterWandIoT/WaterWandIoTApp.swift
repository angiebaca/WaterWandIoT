//
//  WaterWandIoTApp.swift
//  WaterWandIoT
//
//  Created by Alvaro Palacios on 1/26/21.
//

import SwiftUI

@main
struct WaterWandIoTApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                Onboarding();
            } else {
                ContentView();
            }
           
        }
    }
}
