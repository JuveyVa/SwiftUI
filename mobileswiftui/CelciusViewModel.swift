//
//  CelciusView.swift
//  mobileswiftui
//
//  Created by ITIT on 17/02/25.
//

import SwiftUI

class CelciusViewModel: ObservableObject {
    @Published var celcius: String = ""
    @Published var farenheit: Int = 0

    func calculateFarenheit() {
        let cel = Int(celcius) ?? 0
        farenheit = (cel * 9/5) + 32
    }
}
