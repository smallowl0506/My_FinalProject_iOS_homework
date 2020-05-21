//
//  ViedoTabView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/21.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct VideoTabView: View {
    
      let urls = [
         "https://video-ssl.itunes.apple.com/itunes-assets/Video111/v4/a8/17/ad/a817adba-e586-ef27-95ff-5039b67b5709/mzvf_8830173944917680013.640x354.h264lc.U.p.m4v",
         "https://video-ssl.itunes.apple.com/itunes-assets/Video118/v4/e5/e4/9a/e5e49a1e-4c65-48b8-bd46-633daa976710/mzvf_2765762855115952106.640x458.h264lc.U.p.m4v"
      ]
      
      @State private var urlString = ""
      
      var body: some View {
         VStack {
              PlayerView(urlString: urlString)
            
              Button("給我一部約會電影") {
                  self.urlString = self.urls.randomElement()!
              }
          }
      }
      
      struct VideoTabView_Previews: PreviewProvider {
          static var previews: some View {
              VideoTabView()
          }
      }
}
