//
//  HeroDetailView.swift
//  Deadlock Handbook
//
//  Michael Ha
//  CSC 680
//
//  After user clicks a specific hero, switch to this view and display
//  more detailed data about that specific hero

import SwiftUI

struct HeroDetailView: View {
    let hero: Hero
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Hero image
                let selectionImage = hero.images.selectionImage!
                if let imageURL = URL(string: selectionImage) {
                    AsyncImage(url: imageURL) { image in
                        image.resizable().scaledToFit()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(maxHeight: 200)
                    .cornerRadius(12)
                    .padding(.horizontal)
                } else {
                    // incase hero image unavail
                    Color.gray.frame(maxHeight: 200)
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
                
                // name
                Text(hero.name ?? "Name unavailable")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                
                // in the api role is like a one line abstract of the hero
                Text(hero.description.role ?? "")
                    .font(.body)
                    .padding(.horizontal)
                
                HeroTabsView(hero: hero)
            }
            .padding(.vertical)
        }
        .navigationTitle(hero.name ?? "null")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HeroTabsView: View {
    let hero: Hero
    @State private var selectedTab: HeroTab = .stats
    
    var body: some View {
        VStack(alignment: .leading) {
            Picker("Tab", selection: $selectedTab) {
                ForEach(HeroTab.allCases, id: \.self) { tab in
                    Text(tab.rawValue).tag(tab)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)
            
            Group {
                switch selectedTab {
                    case .stats:
                        HeroStatsView(hero: hero)
                    case .abilities:
                        HeroAbilitiesView(items: hero.items)
                    case .lore:
                        HeroRolesView(lore: hero.description.lore ?? "No lore")
                }
            }
            .padding()
        }
    }
}

enum HeroTab: String, CaseIterable {
    case stats = "Stats"
    case abilities = "Abilities"
    case lore = "Lore"
}

struct HeroStatsView: View {
    let hero: Hero
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(hero.startingStats.keys.sorted(), id: \.self) { key in
                if let stat = hero.startingStats[key] {
                    HStack {
                        Text(stat.displayStatName ?? "null")
                        Spacer()
                        if let statValue = stat.value {
                            Text("\(statValue, specifier: "%.2f")")
                        }
                        else {
                            Text("null")
                        }
                    }
                    Divider()
                }
            }
        }
    }
}

struct HeroAbilitiesView: View {
    let items: Items
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Abilities:")
                .font(.headline)
            
            // api stores character abilities in items
            ForEach([items.signature1, items.signature2, items.signature3, items.signature4], id: \.self) { ability in

                Text(ability ?? "No ability available")
                    .font(.body)
            }
        }
    }
}

struct HeroRolesView: View {
    let lore: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Lore:")
                .font(.headline)
            Text(lore)
                .font(.body)
        }
    }
}
