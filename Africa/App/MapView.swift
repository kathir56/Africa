//
//  MapView.swift
//  Africa
//
//  Created by Kathiravan Murali on 03/01/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State var region : MKCoordinateRegion =
    {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapScale = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapScale)
        
        return mapRegion
    }()
    
    var parkLocations : [NaionalParkView] = locations
    var body: some View {
        
        Map(coordinateRegion: $region,annotationItems: parkLocations, annotationContent: { item in
            // opiton A
            //MapPin(coordinate: item.location,tint: .accent)
            
            // option B
            //MapMarker(coordinate: item.location, tint: .accent)
            
            // Custom map marker
            MapAnnotation(coordinate: item.location)
            {
                //option a
                //MapLogoView()
                MapLogoAnimationView(location: item)
            }
        })
        .overlay(alignment: .top) {
            HStack {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48,alignment: .center)
                
                VStack(alignment:.leading,spacing: 5)
                {
                    HStack {
                        Text("Latitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                        .foregroundStyle(.white)
                        
                        Spacer()
                        
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Longitude")
                            .font(.footnote)
                            .fontWeight(.bold)
                        .foregroundStyle(.white)
                        
                        Spacer()
                        
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                }
            }//hstack
            .padding(.vertical,12)
            .padding(.horizontal,16)
            .background(
                Color.black
                    .opacity(0.5)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            )
            .padding()
        }
        
    }
}

#Preview {
    MapView()
}
