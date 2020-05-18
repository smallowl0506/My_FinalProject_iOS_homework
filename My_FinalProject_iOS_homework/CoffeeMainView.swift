//
//  CoffeeMainView.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/5/18.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct CoffeeMainView: View {

 @State private var coffees = [Coffee]()

 func fetchCoffees() {
     let urlStr = "https://cafenomad.tw/api/v1.2/cafes/hsinchu"
     if let url = URL(string: urlStr) {
        URLSession.shared.dataTask(with: url) { (data, response , error) in
           let decoder = JSONDecoder()
           if let data = data, let coffeeResults = try? decoder.decode([Coffee].self, from: data) {
              self.coffees = coffeeResults
           }
        }.resume()
     }

 }
    
    var body: some View {

        NavigationView {
         List(coffees.indices, id: \.self, rowContent: { (index) in
         NavigationLink(destination: CoffeeDetail(coffee:
        self.coffees[index])) {
         CoffeeRow(coffee: self.coffees[index])
         }
         })
         .onAppear {
         self.fetchCoffees()
         }
         }

    }
    
}

struct CoffeeMainView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeMainView()
    }
}
