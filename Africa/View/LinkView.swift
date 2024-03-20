//
//  LinkView.swift
//  Africa
//
//  Created by Kathiravan Murali on 05/01/24.
//

import SwiftUI

struct LinkView: View {
    
    var animal : Animal
    
    var body: some View {
        GroupBox
        {
            HStack {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                
                Text("Wikipedia")
                    .font(.title3)
                
                Spacer()
                
                Link(destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!,
                     label: {
                    
                    Group
                    {
                        
                        Text(animal.name)
                        
                        Image(systemName: "arrow.up.right.square")
                        
                    }
                    
                })
            }
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    LinkView(animal: Animals[0])
}
