//
//  VideoPlayerViewModel.swift
//  SwiftUI-Videos
//
//  Created by FEWA on 27/04/2025.
//

import AVKit
import SwiftUI

class VideoPlayerViewModel: ObservableObject {
    @Published var player: AVPlayer

    init(url: URL) {
        self.player = AVPlayer(url: url)
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
