//
//  ButtonWithImageView.swift
//  Assignment
//
//  Created by Priyabrat  Duarah on 23/06/22.
//

import SwiftUI

struct ButtonWithImageView: View {
    
    let imageName: String
    let width: Double
    let height: Double
    var body: some View {
        Button(action: {
        })
        {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
        }
    }
}
