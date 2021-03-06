//
//  Bandori_memberDetail.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI
//import AVKit

struct Bandori_memberDetail: View {
     var bandori_member: Bandori_member
//     @State private var player: AVPlayer?

     var body: some View {
         VStack {
//            Text(post.school!)
            NetworkImage(url: bandori_member.square_image)
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipped()
            Text(NSLocalizedString("角色生日：  ", comment: "")+bandori_member.birthday)
                .bold()
                .padding()
            if(bandori_member.school != nil){
                Text(NSLocalizedString("所屬學校：  ", comment: "")+(bandori_member.school ?? "沒有資料"))
                .bold()
                .padding()
            }
            if(bandori_member.food_like != nil){
                Text(NSLocalizedString("喜歡的食物：  ", comment: "")+(bandori_member.food_like ?? "沒有資料"))
                .bold()
                .padding()
            }
            if(bandori_member.food_dislike != nil){
                Text(NSLocalizedString("不喜歡的食物：  ", comment: "")+(bandori_member.food_dislike ?? "沒有資料"))
                .bold()
                .padding()
            }
            Text(NSLocalizedString("角色介紹：  ", comment: "")+bandori_member.description)
                .bold()
                .padding()
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
