//
//  PostView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct ForumView: View {

 @State private var forums = [Forum]()

 func fetchForums() {
     let urlStr = "https://www.dcard.tw/_api/forums"
     if let url = URL(string: urlStr) {
       URLSession.shared.dataTask(with: url) { (data, response, error) in
       let decoder = JSONDecoder()
         if let data = data {
           do {
             let forums = try decoder.decode([Forum].self, from: data)
                 self.forums = forums
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
         List(forums.indices, id: \.self, rowContent: { (index) in
         NavigationLink(destination: ForumDetail(forum:
        self.forums[index])) {
         ForumRow(forum: self.forums[index])
         }
         })
         .onAppear {
         self.fetchForums()
         }
         }

    }
    
}

struct ForumView_Previews: PreviewProvider {
    static var previews: some View {
        ForumView()
    }
}
