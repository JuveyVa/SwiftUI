//
//  CelciusConverter.swift
//  mobileswiftui
//
//  Created by ITIT on 17/02/25.
//



import SwiftUI

struct CelciusConverterView: View {
    @StateObject private var viewModel = CelciusViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Temperature Converter")
                .font(.title2)
                .bold()
            
            TextField("Enter celcius temperature", text: $viewModel.celcius)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()
            
            Button("Calculate Farenheit") {
                viewModel.calculateFarenheit()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text("Farenheit: \(String(format: "%.1f", viewModel.farenheit))°F")
            
            
            if (viewModel.farenheit == 0){
                Image("default")
                    .resizable()
                    .frame(width: 200, height: 150)
            } else if (viewModel.farenheit > 0 && viewModel.farenheit < 50) {
                Image("cold")
                    .resizable()
                    .frame(width: 200, height: 150)
            } else if (viewModel.farenheit > 50 && viewModel.farenheit < 85) {
                Image("warm")
                    .resizable()
                    .frame(width: 200, height: 150)
            } else {
                Image("hot")
                    .resizable()
                    .frame(width: 200, height: 150)
            }

            
        }
        .padding()
    }
}

#Preview {
    CelciusConverterView()
}
