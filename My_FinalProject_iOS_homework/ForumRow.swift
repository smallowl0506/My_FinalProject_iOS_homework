//
//  PostRow.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct ForumRow: View {
 var forum: Forum
    
 var body: some View {
    HStack {
//        NetworkImage(url: post.mediaMeta[0])
//        .scaledToFill()
//        .frame(width: 100, height: 100)
//        .clipped()
        VStack(alignment: .leading) {
            Text(forum.name)
                .bold()
            .padding()
            Text(forum.alias)
            .padding()
//            Text(forum.description)
//            .bold()
//            Text(post.excerpt)
//            Text(post.title)
//            Text(post.school!)
        }
    }
    }
}
