//
//  NetworkImage.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/14.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct NetworkImage: View {
 var url: URL
  @State private var image = Image(systemName: "photo")
  @State private var downloadImageOk = false
  func downLoad() {
  if let data = try? Data(contentsOf: url), let uiImage =
 UIImage(data: data) {
  self.image = Image(uiImage: uiImage)
  self.downloadImageOk = true
  }
  }
     var body: some View {
     image
     .resizable()
     .onAppear {
     if self.downloadImageOk == false {
     self.downLoad()
     }
     }
     }
}

//struct NetworkImage_Previews: PreviewProvider {
// static var previews: some View {
// NetworkImage(urlString: "https://wakelandtheatre.files.wordpress.com/2013/11/final-poster.jpg")
// }
//}
