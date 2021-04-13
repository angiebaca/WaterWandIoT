//
//  TutorialTabOne.swift
//  WaterWandIoT
//
//  Created by Anthony de la Torre on 4/9/21.
//

import SwiftUI

struct TutorialTabOne: View {
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                
                // title
                Text("Water Wand")
                    .foregroundColor(Color.white)
                    .font(Font.custom("Bold", size: 40))
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
                    .offset(y:-20)
                
                // description
                Text("Empowering Citizen Scientists \nto Collect Water Quality Data \nand Combat Urban Flooding")
                    .font(Font.custom("Light", size: 20))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    .offset(y:-8)
                
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

struct TutorialTabOne_Previews: PreviewProvider {
    static var previews: some View {
        TutorialTabOne()
    }
}
