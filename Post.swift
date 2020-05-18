//
//  Post.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation

struct Post: Codable {
    let id: Int
    let title: String
    let excerpt: String
    let commentCount: Int
    let likeCount: Int
    let forumName: String
    let gender: String
    var school: String?
    var mediaMeta: [MediaMeta]
}
struct MediaMeta: Codable {
    var url: URL
    
}
