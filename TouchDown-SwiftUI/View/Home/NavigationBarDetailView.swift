//
//  NavigationBarDetailView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 15/9/2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - PROPETIES
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    var body: some View {
        HStack{
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        } //: HSTACK
    }
}

//MARK: - PREVIEW
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop()).previewLayout(.sizeThatFits).padding().background(Color.gray)
    }
}
