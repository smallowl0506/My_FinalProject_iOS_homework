//
//  ContentView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/14.
//  Copyright © 2020 steven. All rights reserved.
//

import SwiftUI

struct ContentView: View {

 @State private var songs = [Song]()

 func fetchSongs() {
     let urlStr = "https://itunes.apple.com/search?term=swift&media=music"
     if let url = URL(string: urlStr) {
     URLSession.shared.dataTask(with: url) { (data,
    response , error) in
     let decoder = JSONDecoder()
    if let data = data, let songResults = try?
    decoder.decode(SongResults.self, from: data) {
     self.songs = songResults.results
     }
     }.resume()

     }

 }
    
    var body: some View {

        NavigationView {
         List(songs.indices, id: \.self, rowContent: { (index) in
         NavigationLink(destination: SongDetail(song:
        self.songs[index])) {
         SongRow(song: self.songs[index])
         }
         })
         .onAppear {
         self.fetchSongs()
         }
         } 

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
