//
//  TutorialTabFour.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

// body
struct TutorialTabFour: View {
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Login Tab")
                    .foregroundColor(Color.white)
                    .font(Font.custom("Bold", size: 40))
                    .fontWeight(.heavy)
                
                // image 1
                Image("USER")
                    .frame(
                        width: 100.0,
                        height: 80,
                        alignment: .center)
                
                // description 1
                Text("If you have a WaterWand device and are ready to begin taking measurements, youy can login or sigh up and register you device in the login tab.")
                    .font(Font.custom("Light", size: 20))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // description 2
                Text("This step is always optional.")
                    .font(Font.custom("Light", size: 20))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
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

struct TutorialTabFour_Previews: PreviewProvider {
    static var previews: some View {
        TutorialTabFour()
    }
}
