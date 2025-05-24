//
//  UserRepository.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/23/25.
//

import Foundation

final class UserRepository: ObservableObject {
    private let secureStorage = SecureStorage()
    @Published var user: User?
    
    init(){
        Task{
            user = await fetchUser()
        }
    }
    
    func saveChanges(name: String, address: String, phone: String) async{
        if user != nil{
            await updateUser(name: name, address: address, phone: phone)
        }else{
            await createUser(name: name, address: address, phone: phone)
        }
    }
    
    private func createUser(name: String, address: String, phone: String) async {
        do{
            user = User(
                id: UUID().uuidString,
                name: name,
                address: address,
                phone: phone
            )
            
            let userData = try JSONEncoder().encode(user)
            Task{
                await secureStorage.save(data: userData, with: userKey)
            }
        }catch{
            print("Error: couldn't create user \(error.localizedDescription)")
        }
    }
    
    private func updateUser(name: String, address: String, phone: String) async {
        do{
            user?.name = name
            user?.address = address
            user?.phone = phone
            
            let userData = try JSONEncoder().encode(user)
            Task{
                await secureStorage.save(data: userData, with: userKey)
            }
        }catch{
            print("Error: couldn't update user \(error.localizedDescription)")
        }
    }
    
    private func fetchUser() async -> User? {
        guard let userData = await secureStorage.get(with: userKey) else {
            return nil
        }
        
        do {
            return try JSONDecoder().decode(User.self, from: userData) //from keychain
        } catch {
            print("Error: couldn't get user \(error.localizedDescription)")
        }
        return nil
        
    }
    
    //run on main thread
    @MainActor
    func removeUser(){
        Task{
            await secureStorage.delete(with: userKey)
            user = nil
        }
    }
    
}
