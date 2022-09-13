//
//  FeaturedTabView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 13/9/2022.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView{
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .padding(.vertical,20)
        .frame(height: UIScreen.main.bounds.width / 1.475)
    }

}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
    }
}
