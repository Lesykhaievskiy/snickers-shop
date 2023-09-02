//
//  product.swift
//  Shop
//
//  Created by Олексій Гаєвський on 17.08.2023.
//

import Foundation
struct Product: Identifiable {
    var id = UUID()
    var name: String
    var price: Int
    var image: String
}

var ProductList = [
           Product(name: "Blue&Black", price: 99, image: "sneaker1"),
                   Product(name: "Pink&Blue", price: 105, image: "sneaker2"),
                   Product(name: "White&Black", price: 68, image: "sneaker3"),
                   Product(name: "Pink&Yellow", price: 130, image: "sneaker4"),
                   Product(name: "Black&Red", price: 74, image: "sneaker5"),
                   Product(name: "Orange&Black", price: 200, image: "sneaker6"),
                   Product(name: "White", price: 93, image: "sneaker7")
]
