//
//  ContentView.swift
//  mobileswiftui
//
//  Created by ITIT on 07/05/25.
//

import SwiftUI

struct WebPage: View {
    var body: some View {
        NavigationView {
            VStack {
                WebView(url : URL(string: "https://www.youtube.com")!)
                    .navigationTitle(Text("Una Pagina Web XD"))
                    .navigationBarTitleDisplayMode(.inline)
                WebView(url : URL(string: "https://www.google.com")!)
                    .navigationTitle(Text("Una Pagina Web 2 XD"))
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
