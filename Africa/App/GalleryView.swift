//
//  GalleryView.swift
//  Africa
//
//  Created by Kathiravan Murali on 03/01/24.
//

import SwiftUI

struct GalleryView: View {
    
    var animal : [Animal] = Bundle.main.decode("animals")
    @State var selectedAnimal = "lion"
    
    @State var gridLayout : [GridItem] = [GridItem(.flexible())]
    @State var gridColumn : Double = 3.0
    
    var haptics = UIImpactFeedbackGenerator(style: .medium)
    
    func gridSwtich()
    {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    var body: some View {
        
        
        
        
        ScrollView(.vertical,showsIndicators: false)
        {
            VStack(alignment:.center,spacing: 30)
            {
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.accent,lineWidth: 4))
                    .animation(.interpolatingSpring(duration: 2))
                
                Slider(value: $gridColumn, in: 2...4,step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { oldValue, newValue in
                        gridSwtich()
                    }
                    .animation(.linear)
                
                LazyVGrid(columns: gridLayout,spacing:20 , content: {
                    ForEach(animal) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        //.frame(width: 100)
                        .overlay(Circle().stroke(Color.white,lineWidth: 3))
                        .onTapGesture {
                            selectedAnimal = item.image
                            haptics.impactOccurred()
                        }
                    }
                })
                .animation(.easeIn)
                .padding(.horizontal,8)
                
            }
            .padding(.vertical,50)
            .onAppear(perform: {
                gridSwtich()
            })
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

#Preview {
    GalleryView(animal: Animals)
}
