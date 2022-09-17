//
//  AddToCartDetailView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 17/9/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        Button {
            feedback.impactOccurred()
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .foregroundColor(.white)
            Spacer()
        } //: BUTTON
        .padding(15)
        .background(Color(red: shop.selectedProduct?.red ?? sampleProducts.red, green: shop.selectedProduct?.green ?? sampleProducts.green, blue: shop.selectedProduct?.blue ?? sampleProducts.blue))
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView().environmentObject(Shop()).previewLayout(.sizeThatFits).padding()
    }
}
