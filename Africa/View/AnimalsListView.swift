//
//  AnimalsListView.swift
//  Africa
//
//  Created by Kathiravan Murali on 04/01/24.
//

import SwiftUI

struct AnimalsListView: View {
    let animals : [Animal] = Bundle.main.decode("animals")
    var body: some View {
        
        ForEach(animals) { animal in
            NavigationLink(destination:AnimalDetailView(animal: animal))
            {
                HStack(alignment:.center,spacing: 16)
                {
                    // Image
                    Image(animal.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90,height: 90 )
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                    
                    VStack(alignment: .leading,spacing: 8)
                    {
                        // Name
                        Text(animal.name)
                            .font(.title2)
                            .fontWeight(.heavy)
                            .foregroundStyle(.accent)
                        // Description
                        Text(animal.headline)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                            .padding(.trailing,8)
                            .foregroundStyle(.gray)
                        
                        
                    
                    }
                    
                }
            }
            
        }
    }
}

#Preview {
    ScrollView
    {
        AnimalsListView()
            .padding(.horizontal,8)
    }
}
