//
//  ListDetailExampleView.swift
//  mobiles2
//
//  Created by ITIT on 19/03/25.
//

import SwiftUI

struct ListDetailExampleView: View {
    
    let item: ItemModel
    
    var body: some View {
        VStack {
            Text(item.name)
                .font(.largeTitle)
                .bold()
            Text(item.description)
                .font(.body)
                .padding()
            Spacer()
        }
        .navigationTitle("Detail")
    }
}

#Preview {
    ListDetailExampleView(item: ItemModel(name: "example", description: "example"))
}
