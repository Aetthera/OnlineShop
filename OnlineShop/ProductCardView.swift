//
//  ProductCardView.swift
//  OnlineShop
//
//  Created by Alena Belova  on 2025-02-06.
//

import SwiftUI

struct ProductCardView: View {
    
    // Properties
    @EnvironmentObject var vm: ViewModel
    let product: Product
    
    // Body
    var body: some View {
        GeometryReader { geo in
            let size = geo.size
            ZStack(alignment: .bottom){
                ZStack(alignment: .topTrailing){
                    if let url = URL(string: product.image){
                        CardImageView(url: url, width: size.width, height: size.height)
                        
                        
                        Button {
                            // Action
                        } label:{
                            Image(systemName: "heart.fill")
                                .padding(10)
                                .foregroundColor(product.isFavorite ? .red : .gray)
                                .clipShape(Circle())
                                .padding()
                        }
                    }
                }
                VStack(alignment: .leading){
                    Text(product.name)
                        .titleFont()
                    Text("$\(product.price)")
                        .subtitle()
                }
                .padding(10)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.background.opacity(0.9))
                .cornerRadius(10)
                .padding(10)
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
        .background(.background.opacity(0.5))
        .padding(10)
        .cornerRadius(10)
    }
}


#Preview {
    ProductCardView(
        product: Product(
            name: "Trip to Space",
            description: "DD",
            image: "https://firebasestorage.googleapis.com/v0/b/onlineshopuiassgn.firebasestorage.app/o/products%2Fspace2.png?alt=media&token=f462ce79-24b1-4689-91f3-d343acf8a535",
            price: 43,
            isFavorite: false)
    )
}
