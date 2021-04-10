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
    
    // body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Welcome to WaterWand!")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                
                // image
                Image("watericon")
                    .frame(
                        width: 100.0,
                        height: 80,
                        alignment: .center)
                    .scaleEffect(0.5)
                    .rotationEffect(.degrees(30))
                
                // description
                Text("Get Started")
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
        .background(Color("pastelBlue"))
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

