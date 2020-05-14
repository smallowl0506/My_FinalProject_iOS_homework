//
//  NetworkImage.swift
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
         VStack(alignment: .leading) {
             Text(video.title)
             Text(video.description)
        }
    }
}

