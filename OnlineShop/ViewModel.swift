//
//  ViewModel.swift
//  OnlineShop
//
//  Created by Alena Belova  on 2025-02-06.
//

import Foundation
import FirebaseFirestore

final class ViewModel: ObservableObject {
    
    // Properties
    private let db = Firestore.firestore().collection ("shop")
    // Methods
    func toggleFavorite(product: Product) {
        guard let id = product.id else { return }
        db.document(id).updateData(["isFavorite" : !product.isFavorite])
    }
}
