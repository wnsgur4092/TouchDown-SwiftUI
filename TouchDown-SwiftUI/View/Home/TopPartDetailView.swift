//
//  TopPartDetailView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 15/9/2022.
//

import SwiftUI

struct TopPartDetailView: View {
    @EnvironmentObject var shop: Shop
    @State var isAnimated : Bool = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            //PRICE
            VStack(alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProducts.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimated ? -50 : -75)
            
            Spacer()
            //PHOTO
            Image(shop.selectedProduct?.image ?? sampleProducts.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0 : -35)
        } //: HSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimated.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView().environmentObject(Shop())
    }
}
