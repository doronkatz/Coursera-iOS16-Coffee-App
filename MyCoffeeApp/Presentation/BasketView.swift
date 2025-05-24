//
//  BasketView.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/13/25.
//

import SwiftUI

struct BasketView: View {
    @EnvironmentObject var basket: BasketViewModel
    @EnvironmentObject var userRepository: UserRepository
    @ViewBuilder private func placeOrderButton() -> some View {
        Button{
            Task{ //fire synchronously
                await basket.createOrder(for: userRepository.user)
            }
        } label:{
            Text("\(basket.totalPrice, format: .currency(code: "USD")) - Place Order")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom, 30)
    }
     
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    List{
                        ForEach(basket.items){ drink in
                            DrinkRow(drink, {})
                        }
                        .onDelete(perform: basket.deleteItems)
                    }
                    .listStyle(.grouped)
                    .safeAreaInset(edge: .bottom) {
                        
                    }
                }
                if basket.items.isEmpty {
                    EmptyBasketView(message: "Basket is Empty")
                        
                }
            }
            .navigationTitle("🛒 Basket")
        }
    }
}

#Preview {
    BasketView()
        .environmentObject(BasketViewModel())
}
