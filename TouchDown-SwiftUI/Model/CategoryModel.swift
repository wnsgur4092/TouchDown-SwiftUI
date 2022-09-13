//
//  CategoryModel.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 14/9/2022.
//

import Foundation

struct Category : Codable, Identifiable {
    let id : Int
    let name : String
    let image : String
}
