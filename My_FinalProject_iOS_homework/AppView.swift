//
//  AppView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct AppView: View {
    var body: some View {
        VStack{
            TabView {
                PostView()
                    .tabItem {
                        Text("不分區文章列表")
                        Image(systemName: "star.fill")
                }
                ForumView()
                    .tabItem{
                    Image(systemName: "star")
                    Text("各校看板話題")
                }
                PageTabView()
                    .tabItem{
                    Image(systemName: "heart.fill")
                    Text("帥哥美女抽一個")
                }
                SafariTabView()
                    .tabItem{
                    Image(systemName: "heart")
                    Text("大學生選美大賽")
                }
                ImagePickerTabView()
                    .tabItem{
                    Image(systemName: "app.gift.fill")
                    Text("選擇照片")
                }
            }
            .accentColor(.red)
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
