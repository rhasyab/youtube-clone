//
//  Constants.swift
//  youtube clone
//
//  Created by Rhasya Bintang Rizqi on 27/06/20.
//  Copyright © 2020 Rhasya Bintang Rizqi. All rights reserved.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyBmUE8o2CMHC3fhAHhcwd35YuNCnn1VMR8"
    static var PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL =
    "https://www.googleapis.com/youtube/v3/playlistItems?playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}
