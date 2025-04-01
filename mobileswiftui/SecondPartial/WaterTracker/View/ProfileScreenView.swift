//
//  ProfileScreenView.swift
//  mobileswiftui
//
//  Created by ITIT on 24/03/25.
//

import SwiftUI

struct ProfileScreenView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var weight: String = ""
    @AppStorage("appStorageName") var appStorageName: String = ""
    @AppStorage("appStorageAge") var appStorageAge: String = ""
    @AppStorage("appStorageWeight") var appStorageWeight: String = ""
    
    var body: some View {
            VStack (
                alignment: .center,
                spacing: 10
            ) {
            Text("Profile Screen")
                .font(.system(size: 30, weight: .bold))
            TextField("Name", text: $name)
                .padding()
            TextField("Age", text: $age)
                .padding()
            TextField("Weight", text: $weight)
                .padding()
            Button(action: {
                appStorageName = name
                appStorageAge = age
                appStorageWeight = weight
                print("Datos Guardados")
            }) {
                Text("Save")
            }
            .padding(10)
            .foregroundStyle(Color.white)
            .frame(maxWidth: 300)
            .background(Color.green)
            .clipShape(Capsule())
        }
            .onAppear{
                name = appStorageName
                age = appStorageAge
                weight = appStorageWeight
            }
        Spacer()
    }
}

#Preview {
    ProfileScreenView()
}
