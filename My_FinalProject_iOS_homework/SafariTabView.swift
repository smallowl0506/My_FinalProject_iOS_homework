//
//  SafariTabView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/21.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct SafariTabView: View {
    @State private var showWebpage = false
    var body: some View {
        
        Button("BanG Dream!官方網站") {
            self.showWebpage = true
        }
        .sheet(isPresented: $showWebpage) {
            SafariView(url: URL(string: "https://bang-dream.com/")!)
//                .frame(width: 300, height: 300)
//                .clipShape(Circle())
        }
    }
}

struct SafariTabView_Previews: PreviewProvider {
    static var previews: some View {
        SafariTabView()
    }
}
