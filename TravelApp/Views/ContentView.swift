//
//  ContentView.swift
//  TravelApp
//
//  Created by Tekla Matcharashvili on 13.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(destinations, id: \.name) { destination in
                NavigationLink(destination: DestinationDetailScreen(destination: destination)) {
                    Text(destination.name)
                }
                
            }
            .navigationTitle("Travel Destinations")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

#Preview {
    ContentView()
}
