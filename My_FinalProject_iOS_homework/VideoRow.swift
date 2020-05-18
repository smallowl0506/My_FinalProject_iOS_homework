//
//  VideoRow.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/14.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct VideoRow: View {
 var video: Video

     var body: some View {
        HStack {
            NetworkImage(url: video.url)
            .scaledToFill()
            .frame(width: 100, height: 100)
            .clipped()
            VStack(alignment: .leading) {
                 Text(video.title)
                 Text(video.description)
                 
            }
        }
    }
}

//struct VideoRow_Previews: PreviewProvider {
//    static var previews: some View {
//        VideoRow(video: Video)
//    }
//}

