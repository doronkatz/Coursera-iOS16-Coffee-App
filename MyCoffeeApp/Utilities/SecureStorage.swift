//
//  SecureStorage.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/23/25.
//

import Foundation
import KeychainAccess

let userKey = "userSecureKey"

final class SecureStorage {
    private static let keychain = Keychain(service: "com.doronkatz.MyCoffeeApp")
    
    func save(data: Data, with key: String) async {
        SecureStorage.keychain[data: key] = data
    }
    
    func get(with key: String) async -> Data?{
        SecureStorage.keychain[data: key]
    }
    
    func delete(with key: String) async {
        SecureStorage.keychain[key] = nil
    }
    
}
