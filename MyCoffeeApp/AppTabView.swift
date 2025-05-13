//
//  AppTabView.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/13/25.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            BasketView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Basket")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
        }
        
    }
}

#Preview {
    AppTabView()
}
