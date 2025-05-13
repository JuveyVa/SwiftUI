//
//  MainView.swift
//  mobileswiftui
//
//  Created by ITIT on 27/03/25.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewmodel = AuthenticationViewModel()
    @State private var navigateToWaterTracker = false
    

    var body: some View {
        NavigationView {
            VStack(alignment: .center,
                   spacing: 10) {
            
                Button(action: {
                    viewmodel.authenticateWithFaceID()
                }) {
                    Text("Water Tracker (Protected)")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        }

                    // Navegación oculta controlada por el estado
                NavigationLink(destination: WaterConsumeView(),
                    isActive: $navigateToWaterTracker,
                    label: { EmptyView() }
                    )

            NavigationLink(destination: WaterConsumeView()) {
                Text("Water Consume")
            }
            .navigationTitle(Text("Main"))
            .padding()
            Spacer()
                    .onAppear{
                        viewmodel.isAuthenticated = false
                    }
                    .onChange(of: viewmodel.isAuthenticated) { isAuthenticated in
                    if isAuthenticated {
                        navigateToWaterTracker = true
                    }
                }
        }
        
    }
        
    }
}

#Preview {
    MainView()
}
