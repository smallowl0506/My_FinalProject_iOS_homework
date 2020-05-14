//
//  SongRow.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/14.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct SongRow: View {
 var song: Song

 var body: some View {
    HStack {
        NetworkImage(url: song.artworkUrl100)
        .scaledToFill()
        .frame(width: 100, height: 100)
        .clipped() 
        VStack(alignment: .leading) {
         Text(song.trackName)
         .bold()
         Text(song.artistName)
         Text(song.collectionName ?? "")
        }
    }
    }
}
