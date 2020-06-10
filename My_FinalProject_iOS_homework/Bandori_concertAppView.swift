//
//  Bandori_concertAppView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User12 on 2020/6/10.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit
import WebKit

//class ViewController: UIViewController {
//    @IBOutlet weak var webView: WKWebView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let url = URL(string: "https://www.youtube.com/embed/T-8ybSLCRF4?loop=1&playlist=T-8ybSLCRF4")!
//        let request = URLRequest(url: url)
//        webView.load(request)
//    }
//}

struct Bandori_concertAppView: View {
    @State private var urlString = "https://www.youtube.com/embed/T-8ybSLCRF4?loop=1&playlist=T-8ybSLCRF4"
    var body: some View {
        VStack {
            WebView(urlString: urlString)
        }
    }
}

struct Bandori_concertAppView_Previews: PreviewProvider {
    static var previews: some View {
        Bandori_concertAppView()
    }
}
