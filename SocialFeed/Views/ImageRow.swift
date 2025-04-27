//
//  ImageRow.swift
//  SwiftUI-Videos
//
//  Created by FEWA on 27/04/2025.
//

import SwiftUI

struct ImageRow: View {
    let imageItem: ImageItem

    var body: some View {
        VStack {
            Image(imageItem.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height * 0.75)
                .clipped()
                .cornerRadius(12)
        }
        .padding()
    }
}
