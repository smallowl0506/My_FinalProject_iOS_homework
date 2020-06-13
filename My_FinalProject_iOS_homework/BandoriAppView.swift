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
            TabView {
                Bandori_memberView()
                    .tabItem{
                    Image(systemName: "book.fill")
                    Text("角色選單")
                }
                Bandori_cardView()
                    .tabItem{
                    Image(systemName: "creditcard.fill")
                    Text("卡片選單")
                }
                QRcodeView()
                    .tabItem{
                    Image(systemName: "qrcode")
                    Text("遊戲官網")
            }
                Bandori_concertAppView()
                    .tabItem{
                    Image(systemName: "music.note")
                    Text("演唱會影片")
                }
                Bandori_pictureAppView()
                    .tabItem{
                    Image(systemName: "link")
                    Text("企劃官網")
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
