//
//  DrinkRow.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/19/25.
//

import SwiftUI

struct DrinkRow: View {
    private let drink: Drink
    var didSelectRow: () -> Void
    
    
    init(_ drink: Drink, _ didSelectRow: @escaping() -> Void) {
        self.drink = drink
        self.didSelectRow = didSelectRow
    }
    
    var body: some View {
        Button {
            didSelectRow()
        }
        label: {
            HStack {
                //Image
                RemoteImageView(url: drink.imageURL)
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(8)
                    .clipped()
                VStack(alignment: .leading, spacing: 5) {
                    Text(drink.name)
                        .font(.title2)
                        .fontWeight(.medium)
                    Text("\(drink.price, format: .currency(code: "USD"))")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                }
                .padding(.leading)
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .tint(.black)
    }
}

#Preview {
    DrinkRow(DummyData.drinks[0]) {
        
    }
}
