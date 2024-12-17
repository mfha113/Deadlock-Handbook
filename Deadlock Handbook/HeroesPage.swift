//
//  HeroesPage.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  Lists currently playable heroes, lets users click to see details of each hero

import SwiftUI

struct HeroesPage: View {
    @StateObject private var viewModel = HeroesViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading {
                    ProgressView("Loading Heroes...")
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .padding()
                } else {
                    List(viewModel.heroes, id: \.id) { hero in
                        if let iconHeroCard = hero.images.iconHeroCard, let heroName = hero.name {
                            // calls hero detail view here
                            NavigationLink(destination: HeroDetailView(hero: hero)) {
                                HStack {
                                    AsyncImage(url: URL(string: iconHeroCard)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 50, height: 50)
                                    .cornerRadius(8)

                                    Text(heroName)
                                        .font(.headline)
                                        .padding(.leading, 8)
                                }
                            }
                        } else {
                            // incase data is missing
                            Text("Hero data missing")
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Heroes")
            .onAppear {
                viewModel.fetchHeroes()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
