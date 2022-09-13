//
//  CategoryGridView.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 14/9/2022.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columSpacing, pinnedViews: []) {
                Section(header: SectionView(rotateClockwise: false),footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } //: LOOP
            } //: GRID
            .frame(height:140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } //: SCROLL
    }
}

//MARK: - BODY
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView().previewLayout(.sizeThatFits).padding()
    }
}
