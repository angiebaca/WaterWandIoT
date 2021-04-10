//
//  TutorialTabOne.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

struct TutorialTabOne: View {
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Water Wand")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                // image 1
                Image("noun_cloud_white")
                    .scaleEffect(1.5)
                
                // image 2
                Image("noun_Flood_white")
                    .frame(
                        width: 100.0,
                        height: 80,
                        alignment: .center)
                
                // description
                Text("Empowering and uniting citizen scientists to collect data and combat urban flooding")
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

struct TutorialTabOne_Previews: PreviewProvider {
    static var previews: some View {
        TutorialTabOne()
    }
}
