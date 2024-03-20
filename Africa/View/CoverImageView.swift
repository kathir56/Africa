//
//  CoverImageView.swift
//  Africa
//
//  Created by Kathiravan Murali on 03/01/24.
//

import SwiftUI

struct CoverImageView: View {
    
    var coverImages : [CoverImage] = Bundle.main.decode("covers")
    
    var body: some View {
        TabView()
        {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CoverImageView()
}
