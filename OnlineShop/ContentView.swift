//
//  ContentView.swift
//  OnlineShop
//
//  Created by Alena Belova  on 2025-02-06.
//

import SwiftUI
import FirebaseFirestore

struct ContentView: View {
    
    // Properties
    @FirestoreQuery(collectionPath: "shop") var items: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    
    // Body
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(items) { item in
                        Text(item.name)
                    }
                }
            }
            
            // Navigation Bar
            .navigationTitle("Products")
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    NavigationLink(destination: FavoritesView()){
                        Image(systemName: "heart.fill")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    NavigationLink(destination: CartView()){
                        Image(systemName: "cart.fill")
                            .font(.title2)
                    }
                    .buttonStyle(.plain)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
