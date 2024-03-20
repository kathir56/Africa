//
//  HeadingView.swift
//  Africa
//
//  Created by Kathiravan Murali on 04/01/24.
//

import SwiftUI

struct HeadingView: View {
    var headingImage: String
    var headingText : String
    var body: some View {
        HStack
        {
            Image(systemName: headingImage)
                .imageScale(.large)
                .foregroundStyle(.accent)
            Text(headingText)
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
}
