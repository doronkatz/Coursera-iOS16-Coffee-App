//
//  AccountView.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/13/25.
//

import SwiftUI

struct AccountView: View {
    @StateObject private var viewModel = AccountViewModel()
    @EnvironmentObject var userRepository: UserRepository
    
    @ViewBuilder private func logoutButton() -> some View {
        Button{
            userRepository.removeUser()
            viewModel.setUser(user: nil)
        }label: {
            Text("Log out")
        }
    }

    var body: some View {
        NavigationStack {
            Form {
                Section("Personal Info") {
                    TextField("Name", text: $viewModel.name)
                    TextField("Address", text: $viewModel.address)
                    TextField("Mobile", text: $viewModel.mobile)
                }
                Section {
                    Button {
                        Task {
                            await userRepository
                                .saveChanges(
                                    name: viewModel.name,
                                    address: viewModel.address,
                                    phone: viewModel.mobile
                                )
                        }

                    } label: {
                        Text(userRepository.user != nil ?
                             "Update": "Create")
                    }
                }.disabled(viewModel.isInvalidForm())
            }
            .navigationTitle("🧒🏽 My Account")
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    if userRepository.user != nil {
                        logoutButton()
                    }
                }
            }
            .onAppear{
                viewModel.setUser(user: userRepository.user)
            }
        }
    }
}

#Preview {
    AccountView()
}
