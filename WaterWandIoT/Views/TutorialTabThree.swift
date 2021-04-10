//
//  TutorialTabThree.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

struct TutorialTabThree: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Map Tab")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                                                
                // image
                Image("PIN-1")
                    .frame(
                        width: 100.0,
                        height: 80,
                        alignment: .center)
                
                // description 1
                Text("Each WaterWand pin on the map is a water sample uploaded by another user.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // description 2
                Text("The map tab queries these water samples from an AWS cloud storage server and displays them on a MapBox map.")
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // description 3
                Text("Click on individual pins to display their depth, temperature, conductivity, and turbidity values.")
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

struct TutorialTabThree_Previews: PreviewProvider {
    static var previews: some View {
        TutorialTabThree()
    }
}
