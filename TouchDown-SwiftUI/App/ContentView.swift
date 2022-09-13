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
                    .padding()
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing:0) {
                        FeaturedTabView()
                            .padding(.vertical,20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        FooterView()
                            .padding(.horizontal)
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
