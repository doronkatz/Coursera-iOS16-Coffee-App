//
//  AppError.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/24/25.
//

import Foundation

enum AppError: Error {
    case EmptyBasketError, NoUserError
}

extension AppError: CustomStringConvertible{
    public var description: String {
        switch self{
        case .EmptyBasketError:
            return "You have no items in your basket"
        case .NoUserError:
            return "You need to login first"
        }

    }
}
