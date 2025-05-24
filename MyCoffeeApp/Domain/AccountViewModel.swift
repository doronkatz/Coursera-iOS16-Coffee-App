//
//  AccountViewModel.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/23/25.
//

import Foundation

final class AccountViewModel: ObservableObject{
    @Published var name: String = ""
    @Published var address: String = ""
    @Published var mobile: String = ""
    
    func isInvalidForm() -> Bool {
        name.isEmpty || address.isEmpty || mobile.isEmpty
    }
    
    func setUser(user: User?){
        name = user?.name ?? ""
        address = user?.address ?? ""
        mobile = user?.phone ?? ""
    }
    
}
