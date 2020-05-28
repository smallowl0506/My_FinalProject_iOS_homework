//
//  Bandori_cardView2.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_cardView2: View {

 @State private var bandori_cards = [Bandori_card]()

 func fetchBandori_cards() {
     let urlStr = "https://bandori.party/api/cards/?page=2"
     if let url = URL(string: urlStr) {
       URLSession.shared.dataTask(with: url) { (data, response, error) in
       let decoder = JSONDecoder()
//        if let data = data, let songResults = try?
//           decoder.decode(SongResults.self, from: data) {
//            self.songs = songResults.results
//            }
//            }.resume()
         if let data = data {
           do {
             let bandori_cardResults = try decoder.decode(Bandori_cardResults.self, from: data)
            self.bandori_cards=bandori_cardResults.results
               } catch {
                   print(error)
               }
             }
           }.resume()
         }
   
 }
    
    var body: some View {

        NavigationView {
         List(bandori_cards.indices, id: \.self, rowContent: { (index) in
         NavigationLink(destination: Bandori_cardDetail(bandori_card:
        self.bandori_cards[index])) {
         Bandori_cardRow(bandori_card: self.bandori_cards[index])
         }
         })
         .onAppear {
         self.fetchBandori_cards()
         }
         }

    }
    
}

struct Bandori_cardView2_Previews: PreviewProvider {
    static var previews: some View {
        Bandori_cardView2()
    }
}
