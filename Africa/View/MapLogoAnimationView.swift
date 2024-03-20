//
//  MapLogoAnimationView.swift
//  Africa
//
//  Created by Kathiravan Murali on 06/01/24.
//

import SwiftUI

struct MapLogoAnimationView: View {
    var location : NaionalParkView
    @State var animationEffect : Double = 0.0
    var body: some View {
        
        ZStack
        {
            Circle()
                .fill()
                .frame(width: 45,alignment: .center)
                .foregroundStyle(.accent)
            
            Circle()
                .stroke(Color.accentColor,lineWidth: 2)
                .frame(width: 38,alignment: .center)
                .scaleEffect(1+animationEffect)
                .opacity(1-animationEffect)
            
            Image(location.image)
                .resizable()
                .scaledToFill()
                .frame(width: 39,height: 39,alignment: .center)
                .clipShape(Circle())
        }
        .onAppear(perform: {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: false))
            {
                animationEffect = 1
            }
        })
    }
}

#Preview {
    MapLogoAnimationView(location: locations[0])
}
