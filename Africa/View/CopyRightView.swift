//
//  CopyRightView.swift
//  Africa
//
//  Created by Kathiravan Murali on 07/01/24.
//

import SwiftUI

struct CopyRightView: View {
    var body: some View {
        
        VStack
        {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128,height: 128)
            
            Text("""
Copyright © Kathir
All Rights Reserved
Better Apps ❤️ Less Code
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
    
        }//vstack
        .padding()
        .foregroundStyle(.gray)
        .opacity(0.4)
    }
}

#Preview {
    CopyRightView()
}
