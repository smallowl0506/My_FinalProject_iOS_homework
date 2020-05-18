//
//  PostRow.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct PostRow: View {
 var post: Post
    
 var body: some View {
    HStack {
//        NetworkImage(url: post.mediaMeta[0])
//        .scaledToFill()
//        .frame(width: 100, height: 100)
//        .clipped()
        VStack(alignment: .leading) {
            Text(post.forumName)
                .bold()
            .padding()
            Text(post.gender)
            .padding()
            Text(post.title)
            .bold()
//            Text(post.excerpt)
//            Text(post.title)
//            Text(post.school!)
        }
    }
    }
}
