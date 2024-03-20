//
//  InsertMapView.swift
//  Africa
//
//  Created by Kathiravan Murali on 05/01/24.
//

import SwiftUI
import MapKit

struct InsertMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(6.600286, 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    var body: some View {
        
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(destination : MapView())
                {
                    HStack
                    {
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.accent)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .font(.title3)
                            .fontWeight(.bold)
                    }// hstack
                    .padding(.vertical,10)
                    .padding(.horizontal,14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    )
                }// navigation
                    .padding(12)
                ,alignment: .topTrailing
            )
            .frame(height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal)
    }
}

#Preview {
    InsertMapView()
}
