//
//  TravelTipsScreen.swift
//  TravelApp
//
//  Created by Tekla Matcharashvili on 14.12.23.
//

import SwiftUI

struct TravelTipsScreen: View {
    @State private var showAlert = false
    let travelTips: [TravelTip]
    
    var body: some View {
        Button("Show Random Travel Tip") {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert) {
            let randomTip = travelTips.randomElement()!
            return Alert(title: Text("Travel Tip"), message: Text(randomTip.tip), dismissButton: .default(Text("OK")))
        }
        .padding()
        .navigationTitle("Travel Tips")
        .navigationBarTitleDisplayMode(.inline)
    }
}
