//
//  VideoPlayerViewModel.swift
//  SwiftUI-Videos
//
//  Created by Gurumoorthy Arumugam on 27/04/2025.
//

import AVKit
import SwiftUI
import Combine

class VideoPlayerViewModel: ObservableObject {
    @Published var player: AVPlayer
    @Published var isLoading: Bool = true // Track loading state

    private var playerObserver: AnyCancellable?

    init(url: URL) {
        self.player = AVPlayer(url: url)

        // Observe the player's status to update loading state
        playerObserver = player.publisher(for: \.status)
            .sink { [weak self] status in
                switch status {
                case .readyToPlay:
                    self?.isLoading = false // Video is ready to play
                case .failed, .unknown:
                    self?.isLoading = true // Handle failure or unknown state
                @unknown default:
                    self?.isLoading = true
                }
            }
    }

    func play() {
        player.play()
    }

    func pause() {
        player.pause()
    }

    func stop() {
        player.pause()
        player.replaceCurrentItem(with: nil)
    }
}
