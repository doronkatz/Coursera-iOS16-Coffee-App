//
//  DrinkDetailView.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/20/25.
//

import SwiftUI

struct DrinkDetailView: View {
    let drink: Drink
    @Binding var isShowingDetail: Bool
    
    @ViewBuilder
    private func dismissButton () -> some View {
        Button {
            isShowingDetail = false
        } label: {
            Image(systemName: "xmark.circle.fill")
                .scaleEffect(1.5)
                .padding()
                .foregroundColor(.gray)
        }
    }
    
    @ViewBuilder
    private func addToBasketButton () -> some View {
        Button {
            isShowingDetail = false
        } label: {
            Text("\(drink.price, format: .currency(code: "USD")) - Add to basket")
        }
        .buttonStyle(.borderedProminent)
        .padding(.bottom, 30)
    }
    
    var body: some View {
        
        VStack(spacing: 10){
            RemoteImageView(url: drink.imageURL)
                .frame(width: 300, height: 225)
                .aspectRatio(contentMode:  .fit)
            
            VStack{
                Text(drink.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(drink.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            Spacer()
            
            addToBasketButton()
            
            
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            dismissButton()
        }
        
    }
}

#Preview {
    DrinkDetailView(drink: DummyData.drinks[0], isShowingDetail: .constant(true))
}
