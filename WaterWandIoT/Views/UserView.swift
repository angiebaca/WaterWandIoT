//
//  UserView.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 2/7/21.
//

import SwiftUI

struct UserView: View {
    
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
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .foregroundColor(.backGroundBlue)
                    })
                NavigationLink(
                    destination: DataCapture(),
                    label: {
                        Text("Data Collection")
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .foregroundColor(.backGroundBlue)
                    })
                NavigationLink(
                    destination: Text("Notification Details"),
                    label: {
                        Text("Notifications")
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .foregroundColor(.backGroundBlue)
                    })
                NavigationLink(
                    destination: Text("Contact Us Details"),
                    label: {
                        Text("Contact Us")
                        .font(.system(size: 25, weight: .bold, design: .monospaced))
                        .foregroundColor(.backGroundBlue)
                    })
                .listRowBackground(Color.clear)
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
