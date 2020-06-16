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
    @State private var scale: CGFloat = 1
    @State private var selectedName = "QRcode_臺灣"
    @State private var show = false
    var QRcodes = ["QRcode_臺灣", "QRcode_日本", "QRcode_中國"]
    var body: some View {
        VStack{
            ImagePickerTabView()
//            .padding(.bottom, 50)
            Image("cover")
                       .resizable()
                       .scaledToFit()
                       .frame(width: 400, height: 300)
                       .clipped()
            if show{
                Image(selectedName)
                .scaledToFill()
                .scaleEffect(scale)
                .onLongPressGesture {
                    self.scale *= 1.3
                }
                .transition(
                    AnyTransition.scale(scale: 3)
                        .combined(with: .opacity)
//                    .asymmetric(insertion: .scale(scale: 3), removal: .slide)
                )
            }else{
                Image(selectedName)
                .scaledToFill()
                .scaleEffect(scale)
                .onLongPressGesture {
                    self.scale *= 1.3
                }
                .hidden()
            }
//            .frame(width: 400, height: 400)
//            .clipped()
            Picker(selection: self.$selectedName, label: Text("選擇官方網站")) {
                ForEach(self.QRcodes, id: \.self) { (QRcode) in
                    Text(QRcode)
                }
            }
//            .pickerStyle(WheelPickerStyle())
            .pickerStyle(SegmentedPickerStyle())
            Text(NSLocalizedString("少女樂團派對手機遊戲官方網站", comment: ""))
            .bold()
            Text(NSLocalizedString("(長按可放大)", comment: ""))
            .bold()
        }
        .animation(.easeInOut(duration: 2))
        .onAppear {
         self.show = true
        }
    }
}

struct QRcodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRcodeView()
    }
}
