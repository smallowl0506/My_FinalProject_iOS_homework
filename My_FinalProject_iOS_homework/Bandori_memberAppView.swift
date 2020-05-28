//
//  Bandori_memberAppView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_memberAppView: View {
    var body: some View {
        VStack{
            TabView {
                Bandori_memberView()
                    .tabItem {
                    Text("角色選單1")
                    Image(systemName: "star.fill")
                }
                Bandori_memberView2()
                    .tabItem{
                    Image(systemName: "moon.stars.fill")
                    Text("角色選單2")
                }
                Bandori_memberView3()
                    .tabItem{
                    Image(systemName: "star.circle.fill")
                    Text("角色選單3")
                }
                Bandori_memberView4()
                    .tabItem{
                    Image(systemName: "star.slash.fill")
                    Text("角色選單4")
                }
            }
            .accentColor(.red)
        }
    }
}

struct Bandori_memberAppView_Previews: PreviewProvider {
    static var previews: some View {
        Bandori_memberAppView()
    }
}
