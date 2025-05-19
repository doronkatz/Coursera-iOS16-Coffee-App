//
//  DummyData.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/13/25.
//

import Foundation

struct DummyData {
    static let basket = Basket(id: UUID().uuidString, items: [])
    static let user = User(
        id: UUID().uuidString,
        name: "Doron",
        address: "723 Nordoor street",
        phone: "718 795 8873"
    )
    static let drinks: [Drink] = [
        Drink(
            id: UUID().uuidString,
            name: "Cappuchino",
            description: "A cappuccino is a popular Italian coffee beverage made with equal parts of espresso, steamed milk, and milk foam. It has a rich, bold coffee flavor balanced by the creamy texture of the steamed milk and the light, airy foam on top. Often served in a small cup, it's typically garnished with a sprinkle of cocoa powder or cinnamon for added flavor and visual appeal.",
            imageLink: "https://cdn1.iconfinder.com/data/icons/smallicons-food/32/coffee2-512.png",
            price: 4.25,
            category: .hot
        ),
        Drink(
                id: UUID().uuidString,
                name: "Iced Latte",
                description: "An iced latte is a refreshing blend of espresso and cold milk poured over ice. It’s a cool and creamy beverage perfect for hot days, delivering the bold flavor of espresso mellowed by the chill of cold milk.",
                imageLink: "https://cdn-icons-png.flaticon.com/512/2965/2965567.png",
                price: 4.75,
                category: .cold
            ),
            Drink(
                id: UUID().uuidString,
                name: "Hot Chocolate",
                description: "Hot chocolate is a comforting beverage made from melted chocolate or cocoa powder, milk, and sugar. Served warm, it's rich, sweet, and often topped with whipped cream or marshmallows for an extra indulgent treat.",
                imageLink: "https://cdn-icons-png.flaticon.com/512/415/415733.png",
                price: 3.50,
                category: .hot
            ),
            Drink(
                id: UUID().uuidString,
                name: "Lemonade",
                description: "Lemonade is a classic, refreshing soft drink made with freshly squeezed lemons, water, and sugar. Perfectly sweet and tangy, it's a go-to drink on sunny days and often served with ice and lemon slices.",
                imageLink: "https://cdn-icons-png.flaticon.com/512/135/135620.png",
                price: 2.95,
                category: .softDrinks
            ),
            Drink(
                id: UUID().uuidString,
                name: "Espresso",
                description: "Espresso is a strong, concentrated coffee served in small shots. Made by forcing hot water through finely ground coffee beans, it has an intense flavor and is the base for many other coffee drinks.",
                imageLink: "https://cdn-icons-png.flaticon.com/512/684/684908.png",
                price: 2.50,
                category: .hot
            ),
            Drink(
                id: UUID().uuidString,
                name: "Iced Matcha Latte",
                description: "The iced matcha latte is a vibrant green drink made from finely ground matcha powder, cold milk, and sweetener. Earthy and smooth, it’s served over ice and is both energizing and visually striking.",
                imageLink: "https://cdn-icons-png.flaticon.com/512/590/590831.png",
                price: 5.00,
                category: .cold
            ),
            Drink(
                id: UUID().uuidString,
                name: "Cola",
                description: "A fizzy and flavorful soft drink, cola is a popular carbonated beverage enjoyed worldwide. Often served chilled with ice, it’s a sweet, caffeinated drink perfect for pairing with meals or enjoying solo.",
                imageLink: "https://cdn-icons-png.flaticon.com/512/934/934616.png",
                price: 1.99,
                category: .softDrinks
            )
        
    ]
    
}
