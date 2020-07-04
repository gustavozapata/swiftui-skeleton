//
//  ContentView.swift
//  swiftUIApp
//
//  Created by Gustavo Zapata on 03/07/2020.
//  Copyright © 2020 Gustavo Zapata. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView().tabItem{
                VStack{
                    Image("IconHome")
                    Text("Home")
                }
            }.tag(1)
            
            CardsView().tabItem{
                VStack{
                    Image("IconCards")
                    Text("Cards")
                }
            }.tag(2)
            
            SettingsView().tabItem{
                VStack{
                    Image("IconSettings")
                    Text("Settings")
                }
            }.tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
