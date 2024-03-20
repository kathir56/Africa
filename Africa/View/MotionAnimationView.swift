//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Kathiravan Murali on 06/01/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 6...12)
    @State private var isAnimate = false
    
    func randomCordinate(max : CGFloat)-> CGFloat
    {
        return CGFloat.random(in: 0...max)
    }
    func randomSize()-> CGFloat
    {
        return CGFloat.random(in: 4...300)
    }
    func scaleEffect()->CGFloat
    {
        return CGFloat.random(in: 0.1...2.0)
    }
    func randomSpeed()->Double
    {
        return Double.random(in: 0.025...1.0)
    }
    func randomDelay()-> Double
    {
        return Double.random(in: 0...2)
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack
            {
                ForEach(0...randomCircle , id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.25)
                        .frame(width: randomSize(),alignment: .center)
                        .position(CGPoint(x: randomCordinate(max: geometry.size.height) , y: randomCordinate(max: geometry.size.width)))
                        .scaleEffect(isAnimate ? scaleEffect() : 1)
                        .onAppear(perform: {
                            withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                                .speed(randomSpeed())
                                .delay(randomDelay())
                                .repeatForever()
                            ) {
                                isAnimate = true
                            }
                        })
                }
            }
            //.frame(width: 256,height: 256)
            //.mask(Circle())
        .drawingGroup()
        }// metal rendering which faster
        
    }
}

#Preview {
    MotionAnimationView()
}
