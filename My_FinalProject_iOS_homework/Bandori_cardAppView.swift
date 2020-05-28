//
//  Bandori_cardAppView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_cardAppView: View {
    var body: some View {
        VStack{
            TabView {
                Bandori_cardView()
                    .tabItem {
                    Text("卡片選單1")
                    Image(systemName: "star.fill")
                }
                Bandori_cardView2()
                    .tabItem{
                    Image(systemName: "moon.stars.fill")
                    Text("卡片選單2")
                }
                Bandori_cardView3()
                    .tabItem{
                    Image(systemName: "star.circle.fill")
                    Text("卡片選單3")
                }
                Bandori_cardView4()
                    .tabItem{
                    Image(systemName: "star.slash.fill")
                    Text("卡片選單4")
                }
            }
            .accentColor(.red)
        }
    }
}

struct Bandori_cardAppView_Previews: PreviewProvider {
    static var previews: some View {
        Bandori_cardAppView()
    }
}
