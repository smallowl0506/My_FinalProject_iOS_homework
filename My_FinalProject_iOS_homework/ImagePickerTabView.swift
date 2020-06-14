//
//  ImagePickerTabView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/21.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI


struct ImagePickerTabView: View {
 @State private var selectImage = Image(systemName: "photo")
 @State private var showSelectPhoto = false

     var body: some View {

         Button(action: {
         self.showSelectPhoto = true
         }) {
         selectImage
         .resizable()
         .scaledToFit()
         .frame(width: 400, height: 400)
         .clipped()

         }
         .buttonStyle(PlainButtonStyle())
         .sheet(isPresented: $showSelectPhoto) {
         ImagePickerController(showSelectPhoto: self.$showSelectPhoto, selectImage: self.$selectImage)
         }
     }
}

struct ImagePickerTabView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerTabView()
    }
}

