//
//  VideoListViews.swift
//  Africa
//
//  Created by Kathiravan Murali on 05/01/24.
//

import SwiftUI

struct VideoListViews: View {
    var video: Video
    var body: some View {
        
        HStack(spacing:16) {
            ZStack
            {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Image(systemName: "play.circle")
                    .imageScale(.large)
                    .fontWeight(.bold)
            }
            
            VStack(alignment:.leading,spacing: 10)
            {
                Text(video.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.accent)
                
                Text(video.headline)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    VideoListViews(video: Videos[0])
}
