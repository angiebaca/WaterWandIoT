//
//  HomeTabView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI

struct HomeTabView: View {
    
    //properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    // body 
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            HStack {
                Spacer()
                Spacer()
                Spacer()
                
                VStack {
                    
                    HStack {
                        Button(action: {
                            UIApplication.shared.open(URL(string:"https://crestcache.fiu.edu")!)
                        }) {
                            Image("crest")
                                .resizable()
                                .frame(width: 220, height:77)
                                .padding()
                                
                        }
                        Spacer()
                    }.padding()
                    
                    
                    Image("WaterWand_Icon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 350, height: 400)
                        .offset(y:20)
                    
                    Text("Water Wand IoT")
                        .font(Font.custom("SemiBold", size: 40))
                        .padding()
                        .foregroundColor(.white)
                        .offset(y:-20)
                    
                    Text("Empowering citizen-scientists")
                        .padding()
                        .font(Font.custom("Light", size: 25))
                        .foregroundColor(.white)
                        .offset(y:-45)
                        
                    
                    // button 1 to url link
                    Button(action: {
                        UIApplication.shared.open(URL(string:"http://biaynabogosian.com/research/fiu-waterwandiot")!)
                    }) { // FIXME add action
                        Text("About")
                            .font(Font.custom("Light", size: 25))
                            .bold()
                            .foregroundColor(.backGroundBlue)
                            .padding()
                            .frame(width: 160, height: 60)
                            .background(Color.white)
                            .cornerRadius(30.0)
                    }.offset(y:-40)
                    
                    Spacer()
                }
                
                Spacer()
                Spacer()
                Spacer()
            }
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
