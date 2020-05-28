//
//  Bandori_pictureAppView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_pictureAppView: View {
    var body: some View {
        VStack{
            NavigationView {
                NavigationLink(destination: SafariTabView()) {
                   Text("前往官方網站")
                }
            }
            TabView {
                PageTabView()
                    .tabItem{
                    Image(systemName: "heart.fill")
                    Text("觀看精美照片")
                }
                ImagePickerTabView()
                    .tabItem{
                    Image(systemName: "app.gift.fill")
                    Text("選擇相簿照片")
                }
            }
            .accentColor(.red)
        }
    }
}

struct Bandori_pictureAppView_Previews: PreviewProvider {
    static var previews: some View {
        Bandori_pictureAppView()
    }
}
