//
//  Drink.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/13/25.
//

import Foundation

enum Category: String, Codable, Hashable {
    case hot
    case cold
    case softDrinks
}

struct Drink: Codable, Identifiable {
    let id: String
    let name: String
    let description: String
    let imageLink: String
    let price: Double
    let category: Category
    
    var imageURL: URL? {
        URL(string: imageLink)
    }
    
}
