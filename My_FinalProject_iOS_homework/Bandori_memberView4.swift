//
//  Bandori_memberView4.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_memberView4: View {

 @State private var bandori_members = [Bandori_member]()

 func fetchBandori_members() {
     let urlStr = "https://bandori.party/api/members/?page=4"
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
             let bandori_memberResults = try decoder.decode(Bandori_memberResults.self, from: data)
            self.bandori_members=bandori_memberResults.results
               } catch {
                   print(error)
               }
             }
           }.resume()
         }
   
 }
    
    var body: some View {

        NavigationView {
         List(bandori_members.indices, id: \.self, rowContent: { (index) in
         NavigationLink(destination: Bandori_memberDetail(bandori_member:
        self.bandori_members[index])) {
         Bandori_memberRow(bandori_member: self.bandori_members[index])
         }
         })
         .onAppear {
         self.fetchBandori_members()
         }
         }

    }
    
}

struct Bandori_memberView4_Previews: PreviewProvider {
    static var previews: some View {
        Bandori_memberView4()
    }
}
