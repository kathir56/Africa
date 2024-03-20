//
//  ContentView.swift
//  Africa
//
//  Created by Kathiravan Murali on 03/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isGridViewActive : Bool = false
    
    var animals : [Animal] = Animals
    
    var haptics = UIImpactFeedbackGenerator(style: .light)
    @State var gridLayout : [GridItem] = [GridItem(.flexible())]
    @State var gridColumn = 0
    @State var toolBarIcon = "square.grid.2x2"
    
    func gridSwtich()
    {
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        print(gridColumn)
        
        switch gridColumn {
        case 1:
            toolBarIcon = "rectangle.grid.1x2"
        case 2 :
            toolBarIcon = "square.grid.2x2"
        case 3 :
            toolBarIcon = "square.grid.3x2"
        default:
            toolBarIcon = "square.grid.2x2"
        }
        
        
    }
    //var gridLayout : [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    var body: some View {
        
        NavigationStack
        {
            Group
            {
                if !isGridViewActive 
                {
                    List // you can use List for navigation arrow
                    {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        AnimalsListView()
                        //.padding(.horizontal,5)
                        
                        CopyRightView()
                            .modifier(viewModifier())//custom Modifier
                    }// list
                    
                }//if
                else {
                    
                    ScrollView(.vertical) {
                        LazyVGrid(columns: gridLayout, content: {
                            
                            ForEach(animals) { item in
                                
                                NavigationLink(destination: AnimalDetailView(animal: item))
                                {
                                    GridView(animal: item)
                                }
                                
                                
                            }//loop
                            
                        })//grid
                        .padding()
                        .animation(.easeIn)
                    }
                    
                }
            }// group
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            //.listStyle(.plain)
            .listStyle(InsetListStyle())
            
            .toolbar
            {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(alignment: .center, content: {
                        
                        Button(action: {
                            isGridViewActive = false
                            haptics.impactOccurred()
                        }, label: {
                            
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accent)
                                
                        })
                        
                        Button(action: {
                            isGridViewActive = true
                            haptics.impactOccurred()
                            gridSwtich()
                        }, label: {
                            
                            Image(systemName: toolBarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accent : .primary)

                        })
                    })//hstack
                    
                }// toolbaritem
        }// toolbar
            
        }// navigation view
        
    }
}

#Preview {
    ContentView()
}
