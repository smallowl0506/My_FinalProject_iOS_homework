//
//  PlayerView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/21.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI
import AVKit
struct PlayerView: UIViewControllerRepresentable {
    
    var urlString = ""
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = AVPlayer()
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        if let url = URL(string: urlString) {
            let item = AVPlayerItem(url: url)
            uiViewController.player?.replaceCurrentItem(with: item)
        }
        
    }
    
    typealias UIViewControllerType = AVPlayerViewController
    
    
}
