//
//  ProductCardView.swift
//  OnlineShop
//
//  Created by Alena Belova  on 2025-02-06.
//

import SwiftUI

struct ProductCardView: View {
    
    // Properties
    let product: Product
    
    // Body
    var body: some View {
        GeometryReader { geo in
            let size = geo.size
            
            if let url = URL(string: product.image){
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: size.width, height: size.height)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                } placeholder: {
                    ProgressView()
                }
            }
            
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
        .background(.green)
    }
}

#Preview {
    ProductCardView(
        product: Product(name: "DD", description: "DD", image: "https://firebasestorage.googleapis.com/v0/b/onlineshopuiassgn.firebasestorage.app/o/products%2Fchristmas.svg?alt=media&token=81896f8e-d5b5-4727-b421-be731c28440b", price: 43, isFavorite: false)
    )
}
