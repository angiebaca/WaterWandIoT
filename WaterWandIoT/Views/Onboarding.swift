//
//  Onboarding.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

struct Onboarding: View {
    
    var body: some View {
        TabView {
            TutorialTabOne();
            TutorialTabTwo();
            TutorialTabThree();
            TutorialTabFour();
            TutorialTabFive();
        } // Tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    } // body
} // struct

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
