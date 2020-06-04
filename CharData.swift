//
//  CharData.swift
//  My_FinalProject_iOS_homework
//
//  Created by User11 on 2020/6/4.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import Combine

class CharData: ObservableObject {
    var cancellable: AnyCancellable?
    @Published var chars = [Char]()
    var number = 0
    
    init(){
        
        if let data = UserDefaults.standard.data(forKey: "chars") {
            let decoder = JSONDecoder()
            if let decodedData = try? decoder.decode([Char].self, from: data) {
                chars = decodedData
            }
        }
        
        cancellable = $chars
            .sink { (value) in
                let encoder = JSONEncoder()
                do {
                    let data = try encoder.encode(value)
                    UserDefaults.standard.set(data, forKey: "chars")
                } catch {
                    
                }
        }
    }
}
