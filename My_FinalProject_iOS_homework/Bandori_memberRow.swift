//
//  Bandori_memberRow.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_memberRow: View {
 var bandori_member: Bandori_member
 
 var body: some View {
    HStack {
        NetworkImage(url: bandori_member.image)
        .scaledToFill()
        .frame(width: 100, height: 100)
        .clipped()
        VStack(alignment: .leading) {
            Text(NSLocalizedString("角色名稱：  ", comment: "")+bandori_member.japanese_name)
                .bold()
            .padding()
            if(bandori_member.CV != nil){
                Text("CV：  "+(bandori_member.CV ?? "沒有聲優資料"))
                .bold()
                .padding()
            }
            Text(NSLocalizedString("所屬樂團：  ", comment: "")+bandori_member.i_band)
            .bold()
            .padding()
            Text(NSLocalizedString("樂團擔當：  ", comment: "")+bandori_member.instrument)
            .bold()
            .padding()
//            Text(post.excerpt)
//            Text(post.title)
//            Text(post.school!)
        }
    }
    }
}
