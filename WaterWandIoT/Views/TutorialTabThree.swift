//
//  TutorialTabThree.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

struct TutorialTabThree: View {
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Map Tab")
                    .foregroundColor(Color.white)
                    .font(Font.custom("Bold", size: 40))
                    .fontWeight(.heavy)
                                                
                // image
                Image("PIN-1")
                    .frame(
                        width: 100.0,
                        height: 80,
                        alignment: .center)
                
                // description 1
                Text("Each Water Wand pin on the map is representing a water wand device used by the FIU CREST's Citizen Science Community.")
                    .font(Font.custom("Light", size: 20))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // description 2
                Text("Here you can see Water Wand devices connected to our database.")
                    .font(Font.custom("Light", size: 20))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // description 3
                Text("Each Water Wand pin displays collected data, including position, depth, temperature, conductivity, \nand turbidity values.")
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

struct TutorialTabThree_Previews: PreviewProvider {
    static var previews: some View {
        TutorialTabThree()
    }
}
