//
//  InsertFactView.swift
//  Africa
//
//  Created by Kathiravan Murali on 05/01/24.
//

import SwiftUI

struct InsertFactView: View {
    var animal:Animal
    var body: some View {
        
        GroupBox
        {
            TabView
            {
                ForEach(animal.fact,id: \.self) { item in
                    Text(item)
                        .fontWeight(.medium)
                }

            }
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 158,idealHeight: 168,maxHeight: 180)
            
                        
        }
        .padding(.horizontal)
  
    }
}

#Preview {
    InsertFactView(animal: Animals[0])
}
