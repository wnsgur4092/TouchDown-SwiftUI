//
//  ProductDetailView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 15/9/2022.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROEPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication
                    .shared
                    .connectedScenes
                    .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }?.safeAreaInsets.top)
                
            
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            //DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                //RATINGS + SIZES
                RatingSizeDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProducts.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                } //: SCROLL
                //QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                //ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
            } //: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
                
            Spacer()
        } //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProducts.red, green: sampleProducts.green, blue: sampleProducts.blue)
        ).ignoresSafeArea(.all,edges: .all)
    }
}

//MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView().previewLayout(.fixed(width: 375, height: 812))
    }
}
