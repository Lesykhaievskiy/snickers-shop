//
//  CartManager.swift
//  Shop
//
//  Created by Олексій Гаєвський on 18.08.2023.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        if !products.contains(where: {$0.id == product.id}){
            products.append(product)
            total += product.price
        }
        
    }
    
    func removeFromCart(product: Product, numOfItem: Int){
        products = products.filter{ $0.id != product.id }
        total = total - product.price * numOfItem
    }
    
    func Incremenet(product: Product){
        total += product.price
    }
    func Decrease(product: Product){
        total -= product.price
    }
}
