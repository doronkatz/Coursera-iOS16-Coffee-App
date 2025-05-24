//
//  FCollectionReference.swift
//  MyCoffeeApp
//
//  Created by Doron Katz on 5/23/25.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

enum FCollectionReference: String {
    case Orders, Drinks
}

func FirebaseReference(_ collectionReference: FCollectionReference) -> CollectionReference {
    
    Firestore.firestore().collection(collectionReference.rawValue)
}
