//
//  Bandori_memberView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_memberView: View {

 @State private var bandori_members = [Bandori_member]()
 @State private var page = 1
 @State private var thisPage = 1
 @State private var firstPageLoad = false
// @State private var showSecondView = false

    func fetchBandori_members(page: Int) {
     let urlStr = "https://bandori.party/api/members/?page="+String(page)
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
            self.bandori_members+=bandori_memberResults.results
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
                 List(bandori_members.indices, id: \.self, rowContent: { (index) in
                 NavigationLink(destination: Bandori_memberDetail(bandori_member:
                self.bandori_members[index])) {
                 Bandori_memberRow(bandori_member: self.bandori_members[index])
                 }
                 })
                 .onAppear {
                    if(self.firstPageLoad != true || self.thisPage != self.page){
                        self.fetchBandori_members(page: self.page)
                    }
                    self.firstPageLoad = true
                 }
            }
            Spacer()
            Button("觀看下一頁") {
               if(self.page<4){
                   self.page+=1
                   self.thisPage+=1
                   self.fetchBandori_members(page: self.page)
               }
            }
            .padding([.top, .bottom], 20)
//            .sheet(isPresented: $showSecondView) {
//                NavigationView {
//                    List(self.bandori_members.indices, id: \.self, rowContent: { (index) in
//                     NavigationLink(destination: Bandori_memberDetail(bandori_member:
//                    self.bandori_members[index])) {
//                     Bandori_memberRow(bandori_member: self.bandori_members[index])
//                     }
//                     })
//                     .onAppear {
//                        self.fetchBandori_members(page: self.page)
//                     }
//                }
//            }
        }
        
         
    }
    
}

//struct Bandori_memberView_Previews: PreviewProvider {
//    static var previews: some View {
//        Bandori_memberView()
//    }
//}
