//
//  Extention+Text.swift
//  OnlineShop
//
//  Created by Alena Belova  on 2025-02-06.
//

import SwiftUI
extension Text {
    func titleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .opacity(0.8)
    }
    func subtitle() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 15, weight: .regular, design: .rounded))
            .opacity(0.8)
    }
}
struct FontView: View {
    var body: some View {
        Text ("Title Font")
            .titleFont()
        Text ("Subtitle Font")
            .subtitle()
    }
}
#Preview {
    FontView()
}
