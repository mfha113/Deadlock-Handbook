//
//  ItemsPage.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  Displays all the current usable ingame items in an adaptive view
//  usually 3 per row but in landscape or ipad it can be more

import SwiftUI

struct ItemsPage: View {
    @StateObject private var viewModel = ItemsViewModel()

    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading {
                    ProgressView("Loading Items...")
                        .padding()
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .multilineTextAlignment(.center)
                        .padding()
                } else {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], spacing: 20) {
                            ForEach(viewModel.upgradeItems) { upgradeItem in
                                NavigationLink(destination: ItemDetailView(item: upgradeItem)) {
                                    VStack {
                                        if let upgradeItemImage = upgradeItem.image, let upgradeItemName = upgradeItem.name{
                                            AsyncImage(url: URL(string: upgradeItemImage)) { image in
                                                image
                                                    .resizable()
                                                    .scaledToFit()
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .frame(width: 80, height: 80) // Fixed image size
                                            .cornerRadius(8)
                                            
                                            // tried to make text and textbox fit in container
                                            Text(upgradeItemName)
                                                .font(.subheadline)
                                                .foregroundColor(Color.white)
                                                .frame(width: 100, height: 40, alignment: .center)
                                                .lineLimit(2)
                                                .multilineTextAlignment(.center)
                                                .truncationMode(.tail)
                                        } else {
                                            Text("No Data")
                                                .foregroundColor(.gray)
                                                .frame(width: 100, height: 40)
                                                .multilineTextAlignment(.center)
                                        }
                                    }
                                    .frame(width: 120, height: 150)
                                    .background(getItemColor(for: upgradeItem.itemSlotType ?? ItemSlotType.weapon))
                                    .cornerRadius(12)
                                    .shadow(radius: 5)
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Items") 
            .onAppear {
                viewModel.fetchItems()
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


// Items are stored as white transparant images
// Need to figure out what type the item is to determine
// the background to actually give the item its iconic color
func getItemColor(for anItemSlotType: ItemSlotType) -> Color {
    switch anItemSlotType {
        case ItemSlotType.spirit:
            return Color.purple
        case ItemSlotType.vitality:
            return Color.green
        case ItemSlotType.weapon:
            return Color.orange
    }
}
