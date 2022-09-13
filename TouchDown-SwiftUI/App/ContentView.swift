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
                Spacer()
                FooterView()
                    .padding(.horizontal)
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges:.all))
        } //: ZSTACK
//        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
