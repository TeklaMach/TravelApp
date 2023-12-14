//
//  DestinationDetailScreen.swift
//  TravelApp
//
//  Created by Tekla Matcharashvili on 14.12.23.
//
import SwiftUI

struct DestinationDetailScreen: View {
    let destination: Destination
    
    var body: some View {
        VStack {
            Text(destination.name)
                .font(.largeTitle)
            
            Image(destination.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text(destination.info)
                .padding()
            
            NavigationLink(destination: TipsScreen(tips: transportTips)) {
                Text("Transport")
            }
            
            NavigationLink(destination: TipsScreen(tips: mustSeeTips)) {
                Text("Must See")
            }
            
            NavigationLink(destination: TipsScreen(tips: hotelsTips)) {
                Text("Hotels")
            }
        }
        .padding()
        .navigationTitle(destination.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
