//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Kathiravan Murali on 05/01/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoTitle : String
    var body: some View {
        
        VStack {
            VideoPlayer(player: playVideo(fileName: videoTitle, fileFormat: ".mp4"))
            {
                // Text("hello")
            }
            .overlay(alignment:.topLeading)
            {
                Image("logo")
                    .resizable()
                    .frame(width: 32,height: 32)
                    .padding(.top,8)
                    .padding(.horizontal,10)
            
            }
        }
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    VideoPlayerView(videoTitle: "cheetah")
}
