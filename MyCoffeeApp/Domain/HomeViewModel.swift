//
//  HomeViewModel.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/19/25.
//

import Foundation

final class HomeViewModel: ObservableObject {
    
    private let firebaseRepository = FirebaseRepository()
    
    
    
    @Published private(set) var drinks: [Drink] = []
    @Published private(set) var selectedDrink: Drink?
    
    @MainActor
    @Sendable func fetchDrinks() async { //background thread
        do {
            drinks = try await firebaseRepository.fetchDrinks()
        }catch{
            print("Error fetching drinks ", error.localizedDescription)
        }
    }
    
    func selectDrink(_ drink: Drink) {
        selectedDrink = drink
    }
    
    func saveMenu(){
        firebaseRepository.saveDrinks()
    }
}
