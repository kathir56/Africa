//
//  MapModel.swift
//  Africa
//
//  Created by Kathiravan Murali on 06/01/24.
//

import Foundation
import MapKit

struct NaionalParkView : Codable,Identifiable
{
    var id : String
    var name : String
    var image : String
    var latitude : Double
    var longitude : Double
    
    // computed property
    var location : CLLocationCoordinate2D
    {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
