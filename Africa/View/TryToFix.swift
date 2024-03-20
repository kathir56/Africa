//
//  AnimalListView.swift
//  Africa
//
//  Created by Kathiravan Murali on 04/01/24.
//

import SwiftUI

struct AnimalListView: View {
    let animals : [Animal]
    var body: some View {
        
        ForEach(animals) { animal in
            HStack(alignment:.center,spacing: 16)
            {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90,height: 90)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                VStack
                {
                    Text(animal.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(.accent)
                    
                    Text(animal.description)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.trailing,8)
                }
                
            }
        }
        
        
    }
}

struct AnimalListView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals")
  
  static var previews: some View {
    NavigationView {
      AnimalListView(animals: animals)
    }
    .previewDevice("iPhone 13")
  }
}
