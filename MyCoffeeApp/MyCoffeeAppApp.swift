//
//  MyCoffeeAppApp.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/13/25.
//

import SwiftUI
import FirebaseCore

@main
struct MyCoffeeAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            AppTabView()
                .environmentObject(BasketViewModel())
                .environmentObject(UserRepository())
        }
    }
}
