//
//  MyCoffeeAppApp.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/13/25.
//

import SwiftUI

@main
struct MyCoffeeAppApp: App {
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(BasketViewModel())
        }
    }
}
