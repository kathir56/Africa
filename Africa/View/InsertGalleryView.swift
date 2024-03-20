//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Kathiravan Murali on 04/01/24.
//

import SwiftUI

struct InsertGalleryView: View {
    var animal : Animal
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false)
        {
            HStack {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(
                        RoundedRectangle(cornerSize: CGSize(width: 12, height: 10))
                    )
                }
            }
        }
    }
}




struct InsertGalleryView_Previews: PreviewProvider {
  //static let animals: [Animal] = Bundle.main.decode("animals")
  
  static var previews: some View {
    NavigationView {
        InsertGalleryView(animal: Animals[1])
        //Animals from Data Model
    }
    .previewDevice("iPhone 13")
  }
}
