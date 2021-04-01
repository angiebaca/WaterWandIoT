//
//  LogIn.swift
//  WaterWandIoT
//
//  Created by Alvaro Palacios on 4/1/21.
//

import SwiftUI

struct LogIn: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                WelcomeText().offset(y:-40)
                UserImage().offset(y:-40)
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .offset(y:-40)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.lightGreyColor)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .offset(y:-40)
                NavigationLink(destination: SettingsTabView(), label: {
                    LoginButtonContent()
                }).offset(y:-40)
                Button(action: {print("create account")}, label: {
                    CreateAccount()
                }).offset(y:-30)
            }//END VSTACK
            .padding()
        }//END NAVIGATION VIEW
    }//END BODY
}//END VIEW

struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Log-In")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct UserImage: View {
    var body: some View {
        Image("userImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}

struct CreateAccount: View {
    var body: some View {
        Text("Create Account")
            .font(.headline)
            .foregroundColor(.blue)
            .frame(width: 220, height: 20)
    }
}
