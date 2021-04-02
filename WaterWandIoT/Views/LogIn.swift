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
        let gradient = Gradient(colors: [.white, .backGroundBlue])
        NavigationView {
            ZStack{
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                WelcomeText().offset(y:-40)
                UserImage().offset(y:-40)
                TextField("Email address", text: $username)
                    .padding()
                    .background(Color.lightGreyColor)
                    .cornerRadius(10.0)
                    .padding(.bottom, 20)
                    .frame(width: 270, height: 60)
                    .offset(y:-40)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.lightGreyColor)
                    .cornerRadius(10.0)
                    .padding(.bottom, 20)
                    .frame(width: 270, height: 60)
                    .offset(y:-40)
                NavigationLink(destination: SettingsTabView(), label: {
                    LoginButtonContent()
                }).offset(y:-40)
                Button(action: {print("create account")}, label: {
                    CreateAccount()
                }).offset(y:-30)
            }//END VSTACK
            .padding()
            }
        }.accentColor(.backGroundBlue)//END NAVIGATION VIEW
    }//END BODY
}//END VIEW
struct LogIn_Previews: PreviewProvider {
    static var previews: some View {
        LogIn()
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Create Account")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            .foregroundColor(.backGroundBlue)
    }
}

struct UserImage: View {
    var body: some View {
        Image("login")
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
        Text("Sign Up")
            .font(.title2)
            .bold()
            .foregroundColor(.backGroundBlue)
            .padding()
            .frame(width: 160, height: 60)
            .background(Color.white)
            .cornerRadius(30.0)
    }
}

struct CreateAccount: View {
    var body: some View {
        Text("Log-in")
            .font(.headline)
            .foregroundColor(.white)
            .frame(width: 220, height: 20)
    }
}
