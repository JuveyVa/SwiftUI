//
//  ConsumeWaterViewModel.swift
//  mobileswiftui
//
//  Created by ITIT on 26/03/25.
//

import Foundation
import SwiftUI

class WaterConsumeViewModel: ObservableObject {
    @Published var waterConsumed: Int = 0
    
    func addWater(amount: Int){
        waterConsumed += amount
    }
    
    func resetWater(){
        waterConsumed = 0
    }
}
