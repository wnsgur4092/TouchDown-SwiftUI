//
//  ProductGridView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 14/9/2022.
//

import SwiftUI

struct ProductGridView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15) {
            ForEach(products) { product in
                ProductItemView(product: product).onTapGesture {
                    feedback.impactOccurred()
                    withAnimation(.easeOut) {
                        shop.selectedProduct = product
                        shop.showingProduct = true
                    }
                }
            } //: LOOP
        } //: GRID
        .padding(15)
    }
}

//MARK: - PREVIEW
struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
    }
}
