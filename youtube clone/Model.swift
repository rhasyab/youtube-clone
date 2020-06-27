//
//  Model.swift
//  youtube clone
//
//  Created by Rhasya Bintang Rizqi on 27/06/20.
//  Copyright © 2020 Rhasya Bintang Rizqi. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        // Create a URL object
        let url = URL(string: Constants.API_URL)
        guard url != nil else {
            return
        }
        
        // Get a URLSession object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            
            do {
                
                // Parsing the data object
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
                
            }
            catch {
                
            }
            
        }
        
        // Kick-off the data task
        dataTask.resume()
    }
    
    
}
