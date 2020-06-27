//
//  Response.swift
//  youtube clone
//
//  Created by Rhasya Bintang Rizqi on 27/06/20.
//  Copyright © 2020 Rhasya Bintang Rizqi. All rights reserved.
//

import Foundation

struct Response : Decodable  {
    
    var items:[Video]
    
    enum CodingKeys: String, CodingKey {
        
        case items
    
    }
    
    init (from decoder:Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
        
    }
    
}
