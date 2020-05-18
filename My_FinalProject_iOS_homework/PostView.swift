//
//  PostView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct PostView: View {

 @State private var posts = [Post]()

 func fetchPosts() {
     let urlStr = "https://dcard.tw/_api/posts?limit=100"
     if let url = URL(string: urlStr) {
       URLSession.shared.dataTask(with: url) { (data, response, error) in
       let decoder = JSONDecoder()
         if let data = data {
           do {
             let posts = try decoder.decode([Post].self, from: data)
                 self.posts = posts
//                 DispatchQueue.main.async {
//                    self.tableView.reloadData()
//                }
               } catch {
                   print(error)
               }
             }
           }.resume()
         }
   
 }
    
    var body: some View {

        NavigationView {
         List(posts.indices, id: \.self, rowContent: { (index) in
         NavigationLink(destination: PostDetail(post:
        self.posts[index])) {
         PostRow(post: self.posts[index])
         }
         })
         .onAppear {
         self.fetchPosts()
         }
         }

    }
    
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
