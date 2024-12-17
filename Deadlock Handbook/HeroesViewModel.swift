//
//  HeroesViewModel.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  Logic for the HeroesPage view.
//  calls the APIService fetchheroes and stores it in a [Hero] array for
//  HeroesPage.swift to use

import SwiftUI

class HeroesViewModel: ObservableObject {
    @Published var heroes: [Hero] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    func fetchHeroes() {
//        print("In HeroesViewModel fetchHeroes()")
        isLoading = true
        errorMessage = nil

        APIService.shared.fetchHeroes { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let heroes):
                    self?.heroes = heroes
                case .failure(let error):
                    self?.errorMessage = "Failed to load heroes: \(error.localizedDescription)"
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
}
