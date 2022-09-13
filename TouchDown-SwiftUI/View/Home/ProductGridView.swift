//
//  ProductGridView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 14/9/2022.
//

import SwiftUI

struct ProductGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing: 15) {
            ForEach(products) { product in
                ProductItemView(product: product)
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
