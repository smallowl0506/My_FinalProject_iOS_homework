//
//  BandoriAppView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct BandoriAppView: View {
    var body: some View {
        let charData = CharData()
        return VStack{
//            NavigationView {
//                NavigationLink(destination: Bandori_memberAppView()) {
//                   Text("角色介紹")
//                }
//            }
//
            TabView {
                Bandori_memberAppView()
                    .tabItem{
                    Image(systemName: "book.fill")
                    Text("角色選單")
                }
                Bandori_cardAppView()
                    .tabItem{
                    Image(systemName: "creditcard.fill")
                    Text("卡片選單")
                }
                Bandori_pictureAppView()
                    .tabItem{
                    Image(systemName: "camera.fill")
                    Text("照片&官網")
                }
                Bandori_concertAppView()
                    .tabItem{
                    Image(systemName: "music.note")
                    Text("演唱會影片")
                }
            }
            .environmentObject(charData)
            .accentColor(.red)
        }
    }
}

struct BandoriAppView_Previews: PreviewProvider {
    static var previews: some View {
        BandoriAppView()
    }
}
