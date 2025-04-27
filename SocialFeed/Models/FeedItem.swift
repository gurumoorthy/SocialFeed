//
//  Untitled.swift
//  SwiftUI-Videos
//
//  Created by Gurumoorthy on 26/04/2025.
//

import Foundation

enum FeedItem: Identifiable {
    case video(VideoItem)
    case image(ImageItem)

    var id: UUID {
        switch self {
        case .video(let video):
            return video.id
        case .image(let image):
            return image.id
        }
    }
}

struct VideoItem: Identifiable {
    let id = UUID()
    let title: String
    let url: URL
}

struct ImageItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}
