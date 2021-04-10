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
                    Spacer()
                    
                    Image.init(systemName: "plus")
                    
                    Spacer()
                
                    Button(action: {
                        UIApplication.shared.open(URL(string:"https://crestcache.fiu.edu")!)
                    }) { // FIXME add action
                        Image("crest")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    
                    Spacer()
                    
                    Image("ww")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(30)
                    
                    Spacer()
                    
                    // button 1 to url link
                    Button(action: {
                        UIApplication.shared.open(URL(string:"http://biaynabogosian.com/research/fiu-waterwandiot")!)
                    }) { // FIXME add action
                        Text("Learn More")
                            .bold()
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(50)
                    }
                    
                    // button 2 to reset onboarding
                    Button(action: {
                        // replay app onboarding
                        isOnboarding = true
                    }) { // FIXME add action
                        Text("Replay Onboarding")
                            .bold()
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .cornerRadius(50)
                    }
                    
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
