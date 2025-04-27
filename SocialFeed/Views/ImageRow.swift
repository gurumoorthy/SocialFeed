//
//  ImageRow.swift
//  SwiftUI-Videos
//
//  Created by Gurumoorthy Arumugam on 27/04/2025.
//

import SwiftUI

struct ImageRow: View {
    let imageItem: ImageItem

    var body: some View {
        VStack {
          
            Text(imageItem.title)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.top, 8)
                .padding([.top, .horizontal])
            
            // Image
            Image(imageItem.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height * 0.6)
                .clipped()
                .cornerRadius(12)

            
        }
        .padding()
    }
}
