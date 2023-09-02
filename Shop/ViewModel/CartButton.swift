//
//  CartButton.swift
//  Shop
//
//  Created by Олексій Гаєвський on 17.08.2023.
//

import SwiftUI

struct CartButton: View {
    var numberOfItems: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfItems > 0{
                Text("\(numberOfItems)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.898, brightness: 0.792))
                    .cornerRadius(50)
                    
               
                 
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfItems: 1)
    }
}
