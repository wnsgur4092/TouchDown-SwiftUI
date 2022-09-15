//
//  HeaderDetailView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 15/9/2022.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(sampleProducts.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VSTACK
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
    }
}
