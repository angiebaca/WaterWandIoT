//
//  SettingsTabView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI

struct SettingsTabView: View {
    
    let backGroundBlue = UIColor(red: 23/255, green:  138/255, blue: 180/255, alpha: 1.0)
    
    init() {
        UITableView.appearance().backgroundColor = backGroundBlue
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
    }
    
    private var itemList = [  "Add Device",
                              "Set-up Demo",
                              "Data Capture",
                              "Notifications",
                              "Contact Us"]
    
    var body: some View {
        VStack{
            List {
                ForEach(self.itemList, id: \.self) { index in
                NavigationLink(
                    destination: Text("\(index) Details"),
                    label: {
                        Text("\(index)")
                        .font(.system(size: 25, weight: .semibold, design: .monospaced))
                        .foregroundColor(.white)
                    })
                }
                .listRowBackground(Color.backGroundBlue)
                .navigationBarTitle("User Menu")
            }//END LIST
        }//END VSTACK
    }//END VIEW
}//END BODY

struct SettingsTabView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTabView()
    }
}
