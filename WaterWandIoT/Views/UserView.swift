//
//  UserView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI

struct UserView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    let backGroundBlue = UIColor(red: 23/255, green:  138/255, blue: 180/255, alpha: 1.0)
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: backGroundBlue]
        
    }
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea().offset(y:100)
        VStack{
            List {
                NavigationLink(
                    destination: AddDevice(),
                    label: {
                        Text("Add Device")
                        .font(Font.custom("SemiBold", size: 25))
                        .foregroundColor(.backGroundBlue)
                    }).listRowBackground(Color.clear)
                    .navigationBarTitle("User Menu")
                NavigationLink(
                    destination: DataCapture(),
                    label: {
                        Text("Data Collection")
                        .font(Font.custom("SemiBold", size: 25))
                        .foregroundColor(.backGroundBlue)
                    }).listRowBackground(Color.clear)
                    .navigationBarTitle("User Menu")
                NavigationLink(
                    destination: Text("Notification Details"),
                    label: {
                        Text("Notifications")
                        .font(Font.custom("SemiBold", size: 25))
                        .foregroundColor(.backGroundBlue)
                    }).listRowBackground(Color.clear)
                    .navigationBarTitle("User Menu")
                NavigationLink(
                    destination: Text("Contact Us Details"),
                    label: {
                        Text("Contact Us")
                        .font(Font.custom("SemiBold", size: 25))
                        .foregroundColor(.backGroundBlue)
                    }).listRowBackground(Color.clear)
                    .navigationBarTitle("User Menu")
                Button(action: {
                    // replay app onboarding
                    isOnboarding = true
                }) { // FIXME add action
                    Text("Replay Onboarding")
                        .font(Font.custom("SemiBold", size: 25))
                        .foregroundColor(.backGroundBlue)
                }.listRowBackground(Color.clear)
                .navigationBarTitle("User Menu")
            }//END LIST
        }//END VSTACK
        }//END ZSTACK
    }//END VIEW
}//END BODY

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
