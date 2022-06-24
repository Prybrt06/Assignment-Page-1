//
//  ContentView.swift
//  Assignment
//
//  Created by Priyabrat  Duarah on 23/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack
        {
            Color(.systemGray)
            VStack {
                ZStack {
                    Rectangle()
                        .frame(width: 391, height: 60)
                        .foregroundColor(Color("darkTheme"))
                        .shadow(color: .gray, radius: 5, x: 0, y: 7)
                    
                    HStack {
                        ButtonWithImageView(imageName: "chevron.backward",width: 20,height: 20)
                            .frame(width: 10, height: 20)
                            .aspectRatio(contentMode: .fill)
                        Spacer()
                        Text("    Cart")
                            .font(.title)
                            .bold()
                        Spacer()
                        ButtonWithImageView(imageName: "house",width: 35,height: 35)
                    }
                    .padding(.horizontal)
                    
                }
                
                CartView(category: "MINI BASKET", totalAmount: 354, totalItems: 4)
                    
                Spacer()
                
                CartView(category: "Designer Hub", totalAmount: 400, totalItems: 1)
                Spacer()
                Spacer()
                Spacer()
                
                ZStack {
                    Rectangle()
                        .frame(width: 391, height: 69)
                        .foregroundColor(Color("darkTheme"))
                        .edgesIgnoringSafeArea(.vertical)
                    
                    HStack
                    {
                        FooterButtonView(imageName: "house.fill", footNote: "Home")
                            .foregroundColor(.gray)
                        Spacer()
                            
                        FooterButtonView(imageName: "heart.fill", footNote: "Liked")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        FooterButtonView(imageName: "bell.fill", footNote: "Notification")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        FooterButtonView(imageName: "person.fill", footNote: "Profile")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        FooterButtonView(imageName: "cart.fill", footNote: "Cart")
                            .foregroundColor(.red)
                    }
                    .padding([.top, .leading, .trailing])
                }
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
