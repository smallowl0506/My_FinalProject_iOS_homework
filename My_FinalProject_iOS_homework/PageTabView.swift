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
      "https://pbs.twimg.com/media/Dmc_mAxW0AIXPQY.jpg",
      "http://bang-dream-news.com/wp-content/uploads/2019/03/7JXmW03-1.png",
      "http://bangdream-love.xyz/wp-content/uploads/2019/03/4d8f385a2c42231003e709bae598426f-1-1024x578.jpg",
      "https://i.ytimg.com/vi/IfEg9spKTiI/maxresdefault.jpg",
      "https://pbs.twimg.com/media/DJmmVtrUQAI33sO.jpg",
      "https://i.redd.it/oqvgwmspyam21.jpg",
      "https://pbs.twimg.com/media/DotjdiPU4AAnyLU.jpg",
      "https://vignette.wikia.nocookie.net/bandori/images/b/bb/Pastel*Palettes_3rd_Single_Cover.jpg/revision/latest?cb=20180816064242"
    ]
    
    @State private var urlString = ""
    
    var body: some View {
        VStack {
            WebView(urlString: urlString)
            Button("精美圖片抽一張!!!") {
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
