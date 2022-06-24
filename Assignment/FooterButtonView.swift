//
//  FooterButtonView.swift
//  Assignment
//
//  Created by Priyabrat  Duarah on 23/06/22.
//

import SwiftUI

struct FooterButtonView: View {
    let imageName: String
    let footNote: String
    var body: some View {
        VStack {
            ButtonWithImageView(imageName: imageName,width: 30,height: 30)
            
            Text(footNote)
                .font(.footnote)
        }
    }
}
