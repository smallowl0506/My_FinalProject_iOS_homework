//
//  Bandori_cardRow.swift
//  My_FinalProject_iOS_homework
//
//  Created by User08 on 2020/5/28.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct Bandori_cardRow: View {
 var bandori_card: Bandori_card
    
 var body: some View {
    HStack {
        NetworkImage(url: bandori_card.image)
        .scaledToFill()
        .frame(width: 100, height: 100)
        .clipped()
        VStack(alignment: .leading) {
            Text(NSLocalizedString("卡片名稱：  ", comment: "")+bandori_card.japanese_name)
                .bold()
            .padding()
            Text(NSLocalizedString("屬性：  ", comment: "")+bandori_card.i_attribute)
                .bold()
            .padding()
            Text(NSLocalizedString("稀有度：  ", comment: "")+String(bandori_card.i_rarity))
                .bold()
            .padding()
            Text(NSLocalizedString("公開日期：  ", comment: "")+bandori_card.release_date)
                .bold()
            .padding()
//            Text(post.gender)
//            .padding()
//            Text(post.title)
//            .bold()
//            Text(post.excerpt)
//            Text(post.title)
//            Text(post.school!)
        }
    }
    }
}
