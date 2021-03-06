//
//  Bandori_cardView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_cardView: View {

 @State private var bandori_cards = [Bandori_card]()
 @State private var page = 1
 @State private var thisPage = 1
 @State private var firstPageLoad = false
    
 func fetchBandori_cards(page: Int) {
     let urlStr = "https://bandori.party/api/cards/?page="+String(page)
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
            self.bandori_cards+=bandori_cardResults.results
               } catch {
                   print(error)
               }
             }
           }.resume()
         }
   
 }
    
    var body: some View {

        VStack {
            NavigationView {
                 List(bandori_cards.indices, id: \.self, rowContent: { (index) in
                 NavigationLink(destination: Bandori_cardDetail(bandori_card:
                self.bandori_cards[index])) {
                 Bandori_cardRow(bandori_card: self.bandori_cards[index])
                 }
                 })
                 .onAppear {
                    if(self.firstPageLoad != true || self.thisPage != self.page){
                        self.fetchBandori_cards(page: self.page)
                    }
                    self.firstPageLoad = true
                 }
            }
            Spacer()
            Button(NSLocalizedString("觀看下一頁", comment: "")) {
               if(self.page<84){
                   self.page+=1
                   self.thisPage+=1
                   self.fetchBandori_cards(page: self.page)
               }
            }
            .padding(.vertical, 20)
        }
        

    }
    
}

struct Bandori_cardView_Previews: PreviewProvider {
    static var previews: some View {
        Bandori_cardView()
    }
}
