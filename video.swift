//
//  video.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/14.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation

struct Video: Codable {
 var title: String
 var description: String
 var thumbnails: String
}
struct VideoResults: Codable {
 var resultCount: Int
 var results: [Video]
}
