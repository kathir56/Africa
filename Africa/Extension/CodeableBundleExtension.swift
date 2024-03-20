//
//  CodeableBundleExtension.swift
//  Africa
//
//  Created by Kathiravan Murali on 04/01/24.
//

import Foundation

extension Bundle
{
    func decode<T:Codable> (_ file : String) -> T
    {
        // step 1 Locate the JSON file
        // it will identify whether the file is present in the app bundle or not
        guard let url = self.url(forResource: file, withExtension: "json")
        else
        {
            fatalError("Failed to loacate the \(file) in bundle")
        }
        
        // step 2 Create a property for a data
        // it is confirm that whether given file is proper json file or corrupt
        
        guard let data = try? Data(contentsOf: url)
        else
        {
            fatalError("Failed to load the data")
        }
        
        // step 3 Create a Decoder
        
        let decoder = JSONDecoder()
        
        // step 4 Create property for the decoded data
        // it will decode the data
        // it needs two specifications 1. the type that we need to decode, in this array of cover images. Before mentioning confirm that, the type must confirm decodable protocol
        // 2. from which data we want to decode
        
        guard let loaded = try? decoder.decode(T.self, from: data)
        else
        {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        print(loaded)
        
        // step 5 Return the ready-to-use data
        
        return loaded
    }
}


