//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Kathiravan Murali on 04/01/24.
//

import SwiftUI

struct AnimalDetailView: View {
    var animal : Animal
    var body: some View {
        
        ScrollView(.vertical)
        {
            VStack(alignment:.center,spacing: 20) {
                //image
                Image(animal.image)
                    .resizable()
                .scaledToFit()
                
                //Name
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                // Head Line
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                Group
                {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsertGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                //Fact
                Group
                {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsertFactView(animal: animal)
                }
                
                // Description
                Group
                {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    
                }
                .padding(.horizontal)
                
                // Map
                Group
                {
                    HeadingView(headingImage: "map", headingText: "National Paks")
                    
                    InsertMapView()
                }
                
                // Link
                Group
                {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    LinkView(animal: animal)
                }
                
                
            }//vstack
            .padding(.vertical)
        }//scrollview
        .navigationTitle("Learn about \(animal.name)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
  static let animals: [Animal] = Bundle.main.decode("animals")
  
  static var previews: some View {
      NavigationStack
      {
          AnimalDetailView(animal: animals[0])
          
      }
      
  }
}

