//
//  AddDevice.swift
//  WaterWandIoT
//
//  Created by Angie Baca on 4/2/21.
//

import SwiftUI

struct AddDevice: View {
    
    let gradient = Gradient(colors: [.white, .backGroundBlue])
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack {
                Step1()
                Step2()
                Step3()
                Step4()
                Step5()
                Step6()
            }.padding().navigationBarTitle("Add Device")
        }
    }
}

struct AddDevice_Previews: PreviewProvider {
    static var previews: some View {
        AddDevice()
    }
}

struct Step1: View {
    var body: some View {
        Text("Step 1")
            .font(.headline)
            .bold()
            .foregroundColor(.backGroundBlue)
            .padding()
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(30.0)
        Text("Turn on your device's BlueTooth")
            .font(.body)
            .foregroundColor(.white)
            .bold()
            .padding()
            .multilineTextAlignment(.center)
    }
}

struct Step2: View {
    var body: some View {
        Text("Step 2")
            .font(.headline)
            .bold()
            .foregroundColor(.backGroundBlue)
            .padding()
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(30.0)
        Text("Check your setting in Data Collection tab")
            .font(.body)
            .foregroundColor(.white)
            .bold()
            .padding()
            .multilineTextAlignment(.center)
    }
}

struct Step3: View {
    var body: some View {
        Text("Step 3")
            .font(.headline)
            .bold()
            .foregroundColor(.backGroundBlue)
            .padding()
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(30.0)
        Text("Wait for your device ID to appear in your app")
            .font(.body)
            .foregroundColor(.white)
            .bold()
            .padding()
            .multilineTextAlignment(.center)
    }
}

struct Step4: View {
    var body: some View {
        Text("Step 4")
            .font(.headline)
            .bold()
            .foregroundColor(.backGroundBlue)
            .padding()
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(30.0)
        Text("Click 'Sync' to recognize the device ID")
            .font(.body)
            .foregroundColor(.white)
            .bold()
            .padding()
            .multilineTextAlignment(.center)
    }
}

struct Step5: View {
    var body: some View {
        Text("Step 5")
            .font(.headline)
            .bold()
            .foregroundColor(.backGroundBlue)
            .padding()
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(30.0)
        Text("Wait for your Water Wand's LED to turn blue")
            .font(.body)
            .foregroundColor(.white)
            .bold()
            .padding()
            .multilineTextAlignment(.center)
    }
}

struct Step6: View {
    var body: some View {
        Text("Step 6")
            .font(.headline)
            .bold()
            .foregroundColor(.backGroundBlue)
            .padding()
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(30.0)
        Text("Press button on Water Wand to collect Data and share with app")
            .font(.body)
            .foregroundColor(.white)
            .bold()
            .padding()
            .multilineTextAlignment(.center)
    }
}
