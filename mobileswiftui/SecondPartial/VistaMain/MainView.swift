//
//  MainView.swift
//  mobileswiftui
//
//  Created by ITIT on 27/03/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center,
                   spacing: 10) {
            
            NavigationLink(destination: ProfileScreenView()) {
                Text("Profile Screen")
            }

            NavigationLink(destination: WaterConsumeView()) {
                Text("Water Consume")
            }
            .navigationTitle(Text("Main"))
            .padding()
            Spacer()
        }
        
    }
        
    }
}

#Preview {
    MainView()
}
