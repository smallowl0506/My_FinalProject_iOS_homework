//
//  Bandori_card.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation

struct Bandori_card: Codable {
 var id: Int
 var name: String?
 var japanese_name: String
 var image: URL
 var i_rarity: Int
 var i_attribute: String
 var release_date: String
    
 var image_trained: URL?
 var art: URL
 var art_trained: URL?
 var transparent: URL
 var transparent_trained: URL?
 var japanese_skill_name: String
 var i_skill_type: String
 var i_side_skill_type: String?
 var full_skill: String
    
 var performance_min: Int
 var performance_max: Int
 var performance_trained_max: Int
 var technique_min: Int
 var technique_max: Int
 var technique_trained_max: Int
 var visual_min: Int
 var visual_max: Int
 var visual_trained_max: Int
 
}
struct Bandori_cardResults: Codable {
// var resultCount: Int
 var results: [Bandori_card]
}
