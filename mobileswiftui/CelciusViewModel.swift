//
//  CelciusView.swift
//  mobileswiftui
//
//  Created by ITIT on 17/02/25.
//

import SwiftUI

class CelciusViewModel: ObservableObject {
    @Published var celcius: String = ""
    @Published var farenheit: Double = 0.0

    func calculateFarenheit() {
        let cel = Double(celcius) ?? 0.0
        farenheit = (cel * 9/5) + 32
    }
}
