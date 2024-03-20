//
//  Modifier.swift
//  Africa
//
//  Created by Kathiravan Murali on 08/01/24.
//

import SwiftUI

struct viewModifier : ViewModifier
{
    func body(content: Content) -> some View {
        
        HStack
        {
            Spacer()
            content
            Spacer()
        }
    }
    
}
