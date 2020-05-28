//
//  QRcodeView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct QRcodeView: View {
    var body: some View {
        VStack{
            Image("QRcode")
            .scaledToFill()
//            .frame(width: 400, height: 400)
//            .clipped()
            Text("少女樂團派對手機遊戲中文官方網站")
            .bold()
        }
    }
}

struct QRcodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRcodeView()
    }
}
