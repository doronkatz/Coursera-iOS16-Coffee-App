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
    
    //used to upload menu
    func saveDrinks(){
        for drink in DummyData.drinks {
            do{
                try FirebaseReference(FCollectionReference.Drinks).document(drink.id).setData(from: drink.self)
            }catch{
                print(
                    "Error saving drink to Firebase \(error.localizedDescription)"
                )
            }
        }
    }
    
    func placeOrder(_ order: Order) async {
        print("Place an order with: \(order.customerName)" )
        for item in order.items {
            print("item name: \(item.name)")
        }
    }
}
