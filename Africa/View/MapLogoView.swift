//
//  MapLogoView.swift
//  Africa
//
//  Created by Kathiravan Murali on 06/01/24.
//

import SwiftUI

struct MapLogoView: View {
    var body: some View {
        
        Image("logo")
            .resizable()
            .scaledToFill()
            .frame(width: 30,height: 30)
    }
}

#Preview {
    MapLogoView()
}
