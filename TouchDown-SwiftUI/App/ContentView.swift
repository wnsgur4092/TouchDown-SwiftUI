//
//  ContentView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 12/9/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPETIES
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing:0) {
                        FeaturedTabView()
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmet")
                        
                        ProductGridView()
                        
                        TitleView(title : "Brands")
                        
                        BrandGridView()

                        FooterView()
//                            .padding(.horizontal)
                    } //: VSTACK
                } //: SCROLL
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges:.all))
        } //: ZSTACK

    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
