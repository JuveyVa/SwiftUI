//
//  Untitled.swift
//  mobiles2
//
//  Created by ITIT on 19/03/25.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var items: [ItemModel] = [
        ItemModel(name: "iPhone", description: "Apple phone"),
        ItemModel(name: "iPad", description: "Apple tablet")
    ]
    
    func refreshData() {
        let newItems = [
            ItemModel(name: "iPhone", description: "Apple phone")
        ]
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.items = newItems
        }
    }
}
