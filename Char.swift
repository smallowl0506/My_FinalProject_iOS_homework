//
//  Char.swift
//  My_FinalProject_iOS_homework
//
//  Created by User11 on 2020/6/4.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation

struct Char : Identifiable,Codable {
 let id = UUID()
 var name: String
 var CV: String
 var height: Int
}
