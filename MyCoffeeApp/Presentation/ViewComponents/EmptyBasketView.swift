//
//  EmptyBasketView.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/23/25.
//

import SwiftUI

struct EmptyBasketView: View {
    private let message: String
    
    init(message: String) {
        self.message = message
    }
    
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            
            VStack{
                Image(systemName: "list.bullet.clipboard")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.gray, .red, .green)
                    .foregroundColor(.secondary)
                    .font(.system(size: 160))
                
                Text(message)
                    .padding(.top )
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            .offset(y: -50)
        }
    }
}

#Preview {
    EmptyBasketView(message: "Empty View Message")
}
