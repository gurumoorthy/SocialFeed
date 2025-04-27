//
//  VideoRow.swift
//  SwiftUI-Videos
//
//  Created by Gurumoorthy Arumugam on 27/04/2025.
//

import SwiftUI
import AVKit

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
            ZStack {
                // Show the loading spinner while the video is loading
                if viewModel.isLoading {
                    Color.black.opacity(0.5)
                        .cornerRadius(12)
                        .frame(height: UIScreen.main.bounds.height * 0.75)
                        .overlay(
                            ProgressView("Loading...")
                                .progressViewStyle(CircularProgressViewStyle())
                                .scaleEffect(2)
                                .frame(width: 100, height: 100)
                        )
                } else {
                    VStack {
                    
                        Text(video.title)
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding([.top, .horizontal])
                        
                        VideoPlayer(player: viewModel.player)
                            .frame(height: UIScreen.main.bounds.height * 0.75)
                            .cornerRadius(12)
                    }.frame(height: UIScreen.main.bounds.height * 0.75)
                    
                }
            }
            .onAppear {
                viewModel.play() // Start playing the video when it appears
            }
            .onDisappear {
                viewModel.pause() // Pause the video when it disappears
            }
        }
        .padding()
    }
}
