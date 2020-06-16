//
//  Bandori_cardDetail.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI
//import AVKit

struct Bandori_cardDetail: View {
     var bandori_card: Bandori_card
//     @State private var player: AVPlayer?

     var body: some View {
         VStack {
            NetworkImage(url: bandori_card.art)
            .scaledToFill()
            .frame(width: 400, height: 220)
            .clipped()
            Text(NSLocalizedString("技能名稱：  ", comment: "")+bandori_card.japanese_skill_name)
                .bold()
            .padding()
            Text(NSLocalizedString("技能效果：  ", comment: "")+bandori_card.full_skill)
                .bold()
            .padding()
            Text("performance_min：  "+String(bandori_card.performance_min))
                .bold()
            .padding()
            Text("performance_max：  "+String(bandori_card.performance_max))
                .bold()
            .padding()
            Text("technique_min：  "+String(bandori_card.technique_min))
                .bold()
            .padding()
            Text("technique_max：  "+String(bandori_card.technique_max))
                .bold()
            .padding()
            Text("visual_min：  "+String(bandori_card.visual_min))
                .bold()
            .padding()
            Text("visual_max：  "+String(bandori_card.visual_max))
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
