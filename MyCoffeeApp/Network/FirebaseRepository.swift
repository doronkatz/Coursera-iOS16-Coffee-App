//
//  FirebaseRepository.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/19/25.
//

import Foundation

final class FirebaseRepository {
    
    func fetchDrinks() async throws -> [Drink] {
        try await withCheckedThrowingContinuation{ continuation in
            FirebaseReference(.Drinks).getDocuments{ querySnapshot, error in
                if let error = error {
                    continuation.resume(throwing: error)
                    return
                }
                guard let documents = querySnapshot?.documents else {
                    continuation.resume(returning: [])
                    return
                }
                let result = documents.compactMap{ queryDocumentSnapshot -> Drink? in
                    return try? queryDocumentSnapshot.data(as: Drink.self)
                }
                continuation.resume(returning: result)

            }
        }
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
        
        do{
            try FirebaseReference(FCollectionReference.Orders).document(order.id).setData(from: order.self)
        }catch{
            print(
                "Error sending orders to Firebase \(error.localizedDescription)"
            )
        }

    }
}
