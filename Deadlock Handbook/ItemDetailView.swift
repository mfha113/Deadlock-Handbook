//
//  ItemDetailView.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  For each individual item, when the user clicks on it, it will expand
//  into this view that will give more specific statistics about an item

import SwiftUI

struct ItemDetailView: View {
    let item: UpgradeItemElement
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                if let imageURL = item.image {
                    AsyncImage(url: URL(string: imageURL)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    // getItemColor defined in itemspage.swift, need to do this since images aren't colored
                    // like they are in game
                    .background(getItemColor(for: item.itemSlotType ?? ItemSlotType.weapon))
                    .frame(maxHeight: 200)
                    .cornerRadius(12)
                    .padding(.horizontal)
                } else {
                    // Fallback placeholder if no image
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(maxHeight: 200)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                
                // Item name
                Text(item.name ?? "Name unavailable")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                // Item cost
                Text("Cost: \(item.cost ?? 0) Gold")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                
                // Item description for some reason API gives it with html tags
                // we need to clean it using cleanHTML to remove tags
                if let itemDescription = item.description?.desc {
                    Text(cleanHTML(itemDescription))
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal)
                } else {
                    Text("No description available.")
                        .font(.body)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                }
            }
            .padding(.vertical)
        }
        .navigationTitle(item.name ?? "Invalid name")
        .navigationBarTitleDisplayMode(.inline)
    }
}


// removes html tags then returns the string
func cleanHTML(_ htmlString: String) -> String {
    guard let data = htmlString.data(using: .utf8) else { return htmlString }
    do {
        let attributedString = try NSAttributedString(
            data: data,
            options: [.documentType: NSAttributedString.DocumentType.html,
                      .characterEncoding: String.Encoding.utf8.rawValue],
            documentAttributes: nil
        )
        return attributedString.string
    } catch {
        print("Failed to convert HTML: \(error)")
        return htmlString
    }
}
