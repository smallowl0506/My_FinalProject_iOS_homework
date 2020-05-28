//
//  Bandori_member.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation


struct Bandori_member: Codable {
 var id: Int
 var name: String
 var japanese_name: String
 var image: URL
 var square_image: URL
 var i_band: String
 var school: String?
 var CV: String?
 var birthday: String
 var food_like: String?
 var food_dislike: String?
 var instrument: String
 var description: String
}
struct Bandori_memberResults: Codable {
// var resultCount: Int
 var results: [Bandori_member]
}
