//
//  AddToCartDetailView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 17/9/2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .foregroundColor(.white)
            Spacer()
        } //: BUTTON
        .padding(15)
        .background(Color(red: sampleProducts.red, green: sampleProducts.green, blue: sampleProducts.blue))
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView().previewLayout(.sizeThatFits).padding()
    }
}
