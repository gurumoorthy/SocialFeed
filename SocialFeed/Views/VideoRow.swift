//
//  VideoRow.swift
//  SwiftUI-Videos
//
//  Created by FEWA on 27/04/2025.
//

import SwiftUI
import AVKit

struct VideoRow: View {
    let video: VideoItem
    @StateObject private var viewModel: VideoPlayerViewModel

    init(video: VideoItem) {
        self.video = video
        _viewModel = StateObject(wrappedValue: VideoPlayerViewModel(url: video.url))
    }

    var body: some View {
        VStack {
            VideoPlayer(player: viewModel.player)
                .frame(height: UIScreen.main.bounds.height * 0.75)
                .cornerRadius(12)
                .onAppear {
                    viewModel.play()
                }
                .onDisappear {
                    viewModel.pause()
                }
        }
        .padding()
    }
}
