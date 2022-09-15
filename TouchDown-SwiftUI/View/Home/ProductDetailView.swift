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
            
            //DETAIL BOTTOM PART
            
            //RATINGS + SIZES
            
            //DESCRIPTION
            
            //QUANTITY + FAVOURITE
            
            //ADD TO CART
            Spacer()
        } //: VSTACK
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
