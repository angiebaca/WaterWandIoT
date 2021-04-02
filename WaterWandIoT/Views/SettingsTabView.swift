//
//  SettingsTabView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI

struct SettingsTabView: View {
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: Color.backGroundBlue]
        
    }
    
    private var itemList = [  "Add Device",
                              "Set-up Demo",
                              "Data Capture",
                              "Notifications",
                              "Contact Us"]
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea().offset(y:100)
        VStack{
            List {
                ForEach(self.itemList, id: \.self) { index in
                NavigationLink(
                    destination: Text("\(index) Details"),
                    label: {
                        Text("\(index)")
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .foregroundColor(.backGroundBlue)
                    })
                }
                .listRowBackground(Color.clear)
                .navigationBarTitle("User Menu")
            }//END LIST
        }//END VSTACK
        }
    }//END VIEW
}//END BODY

struct SettingsTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}
