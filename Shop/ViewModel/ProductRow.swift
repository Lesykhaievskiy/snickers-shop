//
//  ProductRow.swift
//  Shop
//
//  Created by Олексій Гаєвський on 21.08.2023.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    @State var numberOfItem: Int
    var product: Product
    init(product: Product) {
           self.product = product
           self._numberOfItem = State(initialValue: 1)
       }
    var body: some View {
        HStack{
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 20){
                Text(product.name)
                    .bold()
                Text("$\(product.price)")
                    .bold()
            }
            Spacer()
            Image(systemName: "minus")
                .frame(width: 20.0, height: 20.0)
                .onTapGesture {
                    if numberOfItem > 1{
                        cartManager.Decrease(product: product)
                        numberOfItem -= 1
                    }
                }
            Spacer()
            Text("\(numberOfItem)")
               Spacer()
            Image(systemName: "plus")
                .frame(width: 20.0, height: 20.0)
                .onTapGesture {
                    cartManager.Incremenet(product: product)
                    numberOfItem += 1
                }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product, numOfItem: numberOfItem)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: ProductList[2])
            .environmentObject(CartManager())
    }
}
