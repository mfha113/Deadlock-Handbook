//
//  ItemsViewModel.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  Logic for the ItemsView, calls API fetchservice,
//  filters items, and stores the items in ugradeItems


import SwiftUI

class ItemsViewModel: ObservableObject {
    @Published var upgradeItems: [UpgradeItemElement] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    func fetchItems() {
//        print("In ItemsViewModel fetchItems()")
        isLoading = true
        errorMessage = nil

        APIService.shared.fetchItems { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let upgradeItems):
                    // api has a lot of junk data and depreciated items that are disabled
                    // need to filter out and only display usable ingame items
                    let filteredItems = upgradeItems.filter { $0.shopable == true }
                    self?.upgradeItems = filteredItems
//                    print("Got \(self?.upgradeItems.count ?? 0) items")
//                    upgradeItems.forEach{ upgItem in
//                        print("Image URL: \(upgItem.image ?? "nil")")
//                    }
                case .failure(let error):
                    self?.errorMessage = "Failed to load items: \(error.localizedDescription)"
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
}
