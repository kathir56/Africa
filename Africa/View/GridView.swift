//
//  GridView.swift
//  Africa
//
//  Created by Kathiravan Murali on 07/01/24.
//

import SwiftUI

struct GridView: View {
    var animal : Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    GridView(animal: Animals[0])
}
