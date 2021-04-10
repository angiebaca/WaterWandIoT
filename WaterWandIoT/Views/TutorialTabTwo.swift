//
//  TutorialTabTwo.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

struct TutorialTabTwo: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Home Tab")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                // image 1
                Image("HOME")
                    .frame(
                        width: 100.0,
                        height: 80,
                        alignment: .center)
                
                // description
                Text("The home tab tells you about the team behind WaterWand, what it is, and how and where to order one when you're ready")
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

struct TutorialTabTwo_Previews: PreviewProvider {
    static var previews: some View {
        TutorialTabTwo()
    }
}
