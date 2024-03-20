//
//  VideoModel.swift
//  Africa
//
//  Created by Kathiravan Murali on 05/01/24.
//

import Foundation

struct Video : Identifiable,Codable
{
    var id: String
    var name: String
    var headline: String
    
    var thumbnail: String
    {
        "video-\(id)"
    }
}
