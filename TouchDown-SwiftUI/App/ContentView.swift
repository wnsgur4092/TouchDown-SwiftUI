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
        FooterView()
            .padding(.horizontal)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
