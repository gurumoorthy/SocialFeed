import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = VideoListViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.feedItems) { item in
                switch item {
                case .video(let video):
                    VideoRow(video: video)
                case .image(let image):
                    ImageRow(imageItem: image)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Auto Play Feed")
        }
    }
}
