//
//  VideoListView.swift
//  Africa
//
//  Created by Kathiravan Murali on 03/01/24.
//

import SwiftUI

struct VideoListView: View {
    @State var video : [Video] = Bundle.main.decode("videos")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    var body: some View {
        NavigationStack {
            
            List {
                
                ForEach(video) { item in
                    NavigationLink(destination: VideoPlayerView(videoTitle: item.id)) {
                        
                        VideoListViews(video: item)
                    }
                }// loop
                
            }// list
            .listStyle(InsetListStyle())
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar
            {
                ToolbarItem(placement: .topBarTrailing)
                {
                    Button(action: {
                        video.shuffle()
                        hapticImpact.impactOccurred(intensity: .greatestFiniteMagnitude)
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                    })
                    
                }
            }
        }// navigation
    }
}

#Preview {
    VideoListView()
}
