//
//  BasketViewModel.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/23/25.
//

import Foundation

final class BasketViewModel: ObservableObject {
    @Published var items: [Drink] = []
    @Published var basketError: AppError?
    @Published var showError = false
    
    private let firebaseRepository = FirebaseRepository()
    
    func add(drink: Drink){
        items.append(drink)
        print("We have items \(items.count) drinks in our basket")
    }
    
    func deleteItems(at offsets: IndexSet){
        items.remove(atOffsets: offsets)
    }
    
    //add each item's price until we get to zero
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func createOrder(for user: User?) async{
        guard items.isEmpty == false else {
            basketError = .EmptyBasketError
            showError = true
            return
        }
        guard let user = user else {
            basketError = .NoUserError
            showError = true
            return
        }
        
        let order = Order(
            id: UUID().uuidString,
            customerName:  user.name,
            customerAddress: user.address,
            customerPhone: user.phone,
            items: items,
            orderTotal: totalPrice
        )
        
        await firebaseRepository.placeOrder(order)
        items = []
    }
}
