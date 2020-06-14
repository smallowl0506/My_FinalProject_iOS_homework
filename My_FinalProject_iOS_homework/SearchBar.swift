//
//  SearchBar.swift
//  My_FinalProject_iOS_homework
//
//  Created by User16 on 2020/6/14.
//  Copyright © 2020 steven. All rights reserved.
//

import Foundation
import SwiftUI

struct SearchBar: UIViewRepresentable
{
    @Binding var text: String
    class Coordinator: NSObject, UISearchBarDelegate
    {
        @Binding var text: String
        init(text: Binding<String>)
        {
            _text = text
        }
        func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String)
        {
            text = searchText
        }
        func searchBarTextDidBeginEditing(_ searchBar: UISearchBar)
        {
            searchBar.showsCancelButton = true
        }

        func searchBarCancelButtonClicked(_ searchBar: UISearchBar)
        {
            searchBar.text = nil
            text = ""
            searchBar.showsCancelButton = false
            searchBar.endEditing(true)
        }
    }
    func makeCoordinator() -> SearchBar.Coordinator
    {
        return Coordinator(text: $text)
    }
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar
    {
        let searchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator
        return searchBar
    }
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>)
    {
        uiView.text = text
    }
}
