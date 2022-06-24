//
//  CartView.swift
//  Assignment
//
//  Created by Priyabrat  Duarah on 23/06/22.
//

import SwiftUI

struct CartView: View {
    let category: String
    let totalAmount: Int
    let totalItems: Int
    var body: some View {
        ZStack {
            Rectangle()
                .frame(height: 300)
                .foregroundColor(Color("darkTheme"))
            
            VStack {
                ZStack {
                    Rectangle()
                        .frame(height: 30)
                        .foregroundColor(Color("darkTheme"))
                    
                    HStack {
                        Text(category)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                            .underline()
                        
                        Spacer()
                        
                        if(totalItems>1)
                        {
                            Text("(\(totalItems) Products)")
                        }
                        
                        else
                        {
                            Text("(\(totalItems) Product)")
                        }
                    }
                    .padding(.horizontal)
                        
                    
                }
                ScrollView(.horizontal)
                {
                    HStack{
                        if(totalItems==1)
                        {
                            ItemInCartView(color: Color.cyan, itemName: "Kurti", originalPrice: 800, itemPrice: 400, quantity: "6")
                        }
                        
                        else if(totalItems==2)
                        {
                            ItemInCartView(color: Color.cyan, itemName: "Apple", originalPrice: 199, itemPrice: 159, quantity: "1 kg")
                            
                            ItemInCartView(color: Color.cyan, itemName: "Guava", originalPrice: 119, itemPrice: 100, quantity: "1 kg")
                        }
                        
                        else if(totalItems==3)
                        {
                            ItemInCartView(color: Color.cyan, itemName: "Apple", originalPrice: 199, itemPrice: 159, quantity: "1 kg")
                            
                            ItemInCartView(color: Color.cyan, itemName: "Guava", originalPrice: 119, itemPrice: 100, quantity: "1 kg")
                            
                            ItemInCartView(color: Color.cyan, itemName: "Kiwi", originalPrice: 50, itemPrice: 45, quantity: "1 pcs")
                        }
                        
                        else
                        {
                            ItemInCartView(color: Color.cyan, itemName: "Kinnaur Apple", originalPrice: 199, itemPrice: 159, quantity: "1 kg")
                            
                            ItemInCartView(color: Color.cyan, itemName: "Small Tindey", originalPrice: 119, itemPrice: 110, quantity: "1 kg")
                            
                            ItemInCartView(color: Color.cyan, itemName: "Kiwi", originalPrice: 50, itemPrice: 45, quantity: "1 pcs")
                            
                            ItemInCartView(color: Color.cyan, itemName: "Yellow Pumpkin", originalPrice: 44, itemPrice: 40, quantity: "1")
                        }
                    }
                }
                .padding(.horizontal)
                
                
                Spacer()
                
                HStack
                {
                    Text("₹\(totalAmount)")
                        .foregroundColor(.red)
                    
                    Spacer()
                    
                    Button(action: {})
                    {
                        Text("Delete Cart")
                            .padding(10)
                            .foregroundColor(.white)
                    }
                    .background(Color.red)
                    .cornerRadius(10)

                    
                    Button(action: {})
                    {
                        Text("Checkout")
                            .padding(10)
                            .foregroundColor(.white)
                    }
                    .background(Color.red)
                    .cornerRadius(10)
                }
                .padding(.horizontal)
                Spacer()
            }
        }
    }
}
