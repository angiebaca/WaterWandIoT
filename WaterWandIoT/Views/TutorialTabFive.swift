//
//  TutorialTabFive.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

struct TutorialTabFive: View {
    // properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    // body
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Welcome to \nWater Wand!")
                    .foregroundColor(Color.white)
                    .font(Font.custom("Bold", size: 40))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                
                // image
                Image("watericon")
                    .frame(
                        width: 100.0,
                        height: 80,
                        alignment: .center)
                    .scaleEffect(0.5)
                
                // description
                Text("Get Started")
                    .font(Font.custom("Light", size: 20))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // button
                Button(action: {
                    // navigate to three tab app view
                    isOnboarding = false
                }) {
                    //Image(systemName: "arrow.fill")
                    Image(systemName: "arrow.right.circle.fill")
                        .imageScale(.large)
                        .scaleEffect(2)
                        .padding()
                        .foregroundColor(.white)
                }
                
                Spacer()
            } // Vstack
        }.frame( // Zstack
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .center)
        .cornerRadius(20)
        .padding(.horizontal, 20)
        .padding(.vertical, 10)
    } // body
} // struct

struct TutorialTabFive_Previews: PreviewProvider {
    static var previews: some View {
        TutorialTabFive()
    }
}

