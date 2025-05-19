//
//  Order.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/17/25.
//

import Foundation

struct Order: Codable{
    let id: String
    let customerName: String
    let customerAddress: String
    let customerPhone: String
    let items: [Drink]
    let orderTotal: Double 
}
