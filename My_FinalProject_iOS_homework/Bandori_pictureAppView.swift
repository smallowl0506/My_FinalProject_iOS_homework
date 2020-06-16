//
//  Bandori_pictureAppView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI
import KingfisherSwiftUI

struct Bandori_pictureAppView: View {
    var body: some View {
        VStack{
            NavigationView {
                NavigationLink(destination: SafariTabView()) {
                   Text(NSLocalizedString("前往官方網站", comment: ""))
                }
            }
            KFImage(URL(string: "https://66.media.tumblr.com/7c77d2647256cabada779d7ab6291f95/tumblr_pb9zmzoder1x66p0co3_1280.png")!)
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 300)
            .clipped()
//            .padding(.bottom, 0)
            KFImage(URL(string: "https://66.media.tumblr.com/38e6b082149872c40e71de8c843c9529/tumblr_pde79cb1yT1x66p0co3_1280.png")!)
            .resizable()
            .scaledToFit()
            .frame(width: 400, height: 300)
            .clipped()
//            .padding(.bottom, 20)
//            TabView {
//                PageTabView()
//                    .tabItem{
//                    Image(systemName: "heart.fill")
//                    Text("觀看精美照片")
//                }
//                ImagePickerTabView()
//                    .tabItem{
//                    Image(systemName: "app.gift.fill")
//                    Text("選擇相簿照片")
//                }
//                QRcodeView()
//                    .tabItem{
//                    Image(systemName: "qrcode")
//                    Text("中文遊戲官網")
//                }
//            }
//            .accentColor(.red)
        }
    }
}

struct Bandori_pictureAppView_Previews: PreviewProvider {
    static var previews: some View {
        Bandori_pictureAppView()
    }
}
