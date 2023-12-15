//
//  TipsScreen.swift
//  TravelApp
//
//  Created by Tekla Matcharashvili on 14.12.23.
//

import SwiftUI

struct TipsScreen: View {
    let tips: [TravelTip]
    
    var body: some View {
        VStack {
            List(tips, id: \.tip) { tip in
                Text(tip.tip)
            }
            
            NavigationLink(destination: ContentView()) {
                Text("Go to Main Screen")
            }
            NavigationLink(destination: TravelTipsScreen(travelTips: travelTips)) {
                Text("Travel Tips")
            }
        }
        .padding()
        .navigationTitle("Travel Tips")
        .navigationBarTitleDisplayMode(.inline)
    }
}
