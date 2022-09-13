//
//  Constant.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 13/9/2022.
//

import SwiftUI

//DATA
let players : [Player] = Bundle.main.decode("player.json")
let categories : [Category] = Bundle.main.decode("category.json")
let products : [Product] = Bundle.main.decode("product.json")

//COLOR

let colorBackground : Color = Color("ColorBackground")
let colorGray : Color = Color(UIColor.systemGray4)

//LAYOUT
let columSpacing : CGFloat = 10
let rowSpacing : CGFloat = 10
var gridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}

//UX
//API
//IMAGE
//FONT
//STRING
//MISC
