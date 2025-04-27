//
//  VideoListViewModel.swift
//  SwiftUI-Videos
//
//  Created by Gurumoorthy Arumugam on 27/04/2025.
//

import Foundation

class VideoListViewModel: ObservableObject {
    @Published var feedItems: [FeedItem] = []

    init() {
        loadFeed()
    }

    private func loadFeed() {
        feedItems = [
            .video(VideoItem(title: "Big Buck Bunny",
                             url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!)),
            .image(ImageItem(imageName: "Image1", title: "Nature")),
            .image(ImageItem(imageName: "Image2", title: "Boy")),
            .video(VideoItem(title: "Sintel", url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4")!)),
            .image(ImageItem(imageName: "Image3", title: "Moon")),
            .image(ImageItem(imageName: "Image4", title: "Flower")),
            .video(VideoItem(title: "Elephant Dream", url: URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!)),
            .image(ImageItem(imageName: "Image5", title: "Giraffe")),
            .image(ImageItem(imageName: "Image6", title: "Lion Cub"))
        ]
    }
}
