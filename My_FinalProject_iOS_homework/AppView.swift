//
//  AppView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct AppView: View {

 @State private var videos = [Video]()

 func fetchVideos() {
     let urlStr = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet,contentDetails,status&playlistId=UUzjNxGvrqfxL9KGkObbzrmg&key=AIzaSyCmeIGJotEPH4FYdtyiX-fwI8CxbF0nJ6Q&maxResults=50"
     if let url = URL(string: urlStr) {
     URLSession.shared.dataTask(with: url) { (data,
    response , error) in
     let decoder = JSONDecoder()
    if let data = data, let videoResults = try?
    decoder.decode(VideoResults.self, from: data) {
     self.videos = videoResults.items
     }
     }.resume()

     }

 }
    
    var body: some View {

        NavigationView {
         List(videos.indices, id: \.self, rowContent: { (index) in
         NavigationLink(destination: VideoDetail(video:
        self.videos[index])) {
         VideoRow(video: self.videos[index])
         }
         })
         .onAppear {
         self.fetchVideos()
         }
         }

    }
    
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
