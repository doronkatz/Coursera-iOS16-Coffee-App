//
//  FirebaseRepository.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/19/25.
//

import Foundation

final class FirebaseRepository {
    
    func fetchDrinks() async throws -> [Drink] {
        DummyData.drinks
    }
    
    func placeOrder(_ order: Order) async {
        print("Place an order with id: \(order.id)" )
        for item in order.items {
            print("item name: \(item.name)")
        }
    }
}
