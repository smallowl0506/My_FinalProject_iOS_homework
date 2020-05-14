//
//  song.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/14.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation

struct Song: Codable {
 var artistName: String
 var trackName: String
 var previewUrl: URL
 var artworkUrl100: URL
 var trackPrice: Double?
 var collectionName: String?
}
struct SongResults: Codable {
 var resultCount: Int
 var results: [Song]
}
