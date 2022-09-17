//
//  Shop.swift
//  TouchDown-SwiftUI
//
//  Created by JunHyuk Lim on 17/9/2022.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct : Bool = false
    @Published var selectedProduct : Product? = nil
}
