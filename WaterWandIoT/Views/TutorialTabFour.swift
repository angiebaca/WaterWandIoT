//
//  TutorialTabFour.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

// body
struct TutorialTabFour: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Login Tab")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                // image 1
                Image("USER")
                    .frame(
                        width: 100.0,
                        height: 80,
                        alignment: .center)
                
                // description 1
                Text("If you have a WaterWand device and are ready to begin taking measurements, youy can login or sigh up and register you device in the login tab.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // description 2
                Text("This step is always optional.")
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
        .background(Color("pastelBlue"))
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
