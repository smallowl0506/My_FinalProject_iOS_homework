//
//  PostDetail.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI
//import AVKit

struct PostDetail: View {
     var post: Post
//     @State private var player: AVPlayer?

     var body: some View {
         VStack {
//            Text(post.school!)
            Text(post.excerpt)
//             Button(action: {
//             self.player = AVPlayer(url: self.song.previewUrl)
//             self.player?.play()
//             }) {
//             Image(systemName: "play.circle.fill")
//             .resizable()
//             .scaledToFit()
//             .frame(width: 100, height: 100)
//             }
         }
//         .onDisappear {
//         self.player?.pause()
//         }
     }
}
