//
//  ItemInCartView.swift
//  Assignment
//
//  Created by Priyabrat  Duarah on 23/06/22.
//

import SwiftUI

struct ItemInCartView: View {
    
    let color: Color?
    let itemName: String
    let originalPrice: Int
    let itemPrice: Int
    let quantity: String
    var body: some View {
        
        Button(action: {})
        {
            ZStack {
                Rectangle()
                    .frame(width: 150, height: 180)
                    .foregroundColor(color)
                    .cornerRadius(7)
                    .shadow(color: .gray, radius: 5, x: 0, y: 7)
                
                ZStack {
                    Rectangle()
                        .frame(width: 130, height: 163)
                        .foregroundColor(.white)
                        .cornerRadius(7)
                    
                    VStack
                    {
                        Image(itemName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 90, height: 90)
                        
                        HStack {
                            Spacer()
                            Text("₹\(itemPrice)")
                                .foregroundColor(.black)
                            Spacer()
                            
                            Text("₹\(originalPrice)")
                                .strikethrough()
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        
                        Text(itemName)
                            .foregroundColor(.black)
                        
                        Text(quantity)
                            .font(.footnote)
                            .foregroundColor(.gray)
                        
                    }
                }
            }
        }
        
    }
}
