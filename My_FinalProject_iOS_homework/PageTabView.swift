//
//  PageTabView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/21.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct PageTabView: View {
    let urls = [
      "https://i1.kknews.cc/SIG=h9o5ph/ctp-vzntr/80p7579q7p324qs2or28177o9n8q55o8.jpg",
      "https://i2.kknews.cc/SIG=2qq3t1g/ctp-vzntr/pp6n36pq998646sr9o3340695os3oo37.jpg"
    ]
    
    @State private var urlString = ""
    
    var body: some View {
        VStack {
            WebView(urlString: urlString)
            Button("2019日本投票最帥大學生OR最美大學生抽一個") {
                self.urlString = self.urls.randomElement()!
            }
        }
    }
}

struct PageTabView_Previews: PreviewProvider {
    static var previews: some View {
        PageTabView()
    }
}
