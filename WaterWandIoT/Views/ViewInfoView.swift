//
//  ViewInfoView.swift
//  WaterWandIoT
//
//  Created by Alvaro Palacios on 3/22/21.
//

import SwiftUI

struct ViewInfoView: View {
    
    let devices = Bundle.main.decode("DummyData.json")
    
    var body: some View {
        
            List {
                ForEach(devices) { item in
                    Text("hi")
                }
            }
            
    }
//        List {
//            ForEach(devices) { item in
//                Text("WW: \(item)")
//            }
//        }
    
}

struct ViewInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ViewInfoView()
    }
}
