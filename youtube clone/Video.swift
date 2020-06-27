//
//  Video.swift
//  youtube clone
//
//  Created by Rhasya Bintang Rizqi on 27/06/20.
//  Copyright © 2020 Rhasya Bintang Rizqi. All rights reserved.
//

import Foundation

struct Video : Decodable {
    
    var videoID = ""
    var title = ""
    var description = ""
    var thumbnail = ""
    var published = Date()
    
    enum CodingKeys: String, CodingKey {
        
        case snippet
        case thumbnails
        case high
        case resourceID
        
        case published = "publishedAt"
        case title
        case description
        case thumbnail = "url"
        case videoID
        
    }
    
    init (from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        
        // Parse Title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        
        // Parse Desc
        
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        
        // Parse Date
        self.published = try snippetContainer.decode(Date.self, forKey: .published)
        
        // Parse Thumbnail
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnail)
        
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        
        // Parse Video ID
        let resourceIdContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .resourceID)
        
        self.videoID = try resourceIdContainer.decode(String.self, forKey: .videoID)
    
    }
        
}
