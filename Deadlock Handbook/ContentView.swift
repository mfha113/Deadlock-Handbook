//
//  ContentView.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680


import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HeroesPage()
                .tabItem {
                    Label("Heroes", systemImage: "person.3.fill")
                }

            ItemsPage()
                .tabItem {
                    Label("Items", systemImage: "bag.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
