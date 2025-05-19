//
//  ContentView.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/13/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()
    @State private var isShowingDetail = false
    
    var categories: [String: [Drink]] {
        .init(
            grouping: viewModel.drinks,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        ZStack  {
            NavigationStack {
                List(categories.keys.sorted(), id: \String.self) { key in
                    Section {
                        if let drinks = categories[key] {
                            ForEach(drinks) { drink in
                                DrinkRow(drink){
                                    viewModel.selectDrink(drink)
                                    isShowingDetail = true
                                }
                            }
                        }
                    } header: {
                        Text(key)
                            .font(.subheadline)
                    }
                }
                .navigationBarTitle("Home")
                .task(viewModel.fetchDrinks)
                .blur(radius: isShowingDetail ? 5 : 0)
                .disabled(isShowingDetail)
            }
            if isShowingDetail {
                Text("This is the Detail View")
            }
        }
     
    }
}

#Preview {
    HomeView()
}
