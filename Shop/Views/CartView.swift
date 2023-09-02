//
//  CartView.swift
//  Shop
//
//  Created by Олексій Гаєвський on 18.08.2023.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){
                    product in
                    ProductRow(product: product)
                }
                HStack{
                    Text("Your cart total is: $\(cartManager.total)")
                }
            }else{
                Text("The cart is empty")            }
        }
        .navigationTitle(Text("My cart"))
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
