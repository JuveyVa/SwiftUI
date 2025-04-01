//
//  ProfileScreenView.swift
//  mobileswiftui
//
//  Created by ITIT on 24/03/25.
//

import SwiftUI

struct WaterConsumeView: View {
    @StateObject private var viewModel = WaterConsumeViewModel()
    
    var body: some View {
            VStack (
                alignment: .center,
                spacing: 10
            ) {
                Text("Water Consume")
                    .font(.system(size: 30, weight: .bold))
                HStack {
                        Button(action: {
                            viewModel.addWater(amount: 355)
                        }) {
                            VStack {
                                Image("water1")
                                    .resizable()
                                    .frame(width: 100, height: 250)
                                Text("355 ML")
                            }
                        }
                        Button(action: {
                            viewModel.addWater(amount: 500)
                        }) {
                            VStack {
                                Image("water2")
                                    .resizable()
                                    .frame(width: 200, height: 250)
                                Text("500 ML")
                            }
                        }
                        
                        Button(action: {
                            viewModel.addWater(amount: 1000)
                        }) {
                            VStack {
                                Image("water3")
                                    .resizable()
                                    .frame(width: 100, height: 250)
                                Text("1 L")
                            }
                        }
                        
                }
                .padding()
                VStack {
                    Text("Total Water Consume")
                        .font(.system(size: 15, weight: .bold))
                    Text("\(viewModel.waterConsumed) ML")
                        .font(.system(size: 15, weight: .bold))
                }
            }
        Spacer()
            .onShake {
                viewModel.resetWater()
             }
        }
    }

#Preview {
    WaterConsumeView()
}

// The notification we'll send when a shake gesture happens.
extension UIDevice {
    static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
}

//  Override the default behavior of shake gestures to send our notification instead.
extension UIWindow {
     open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
        }
     }
}

// A view modifier that detects shaking and calls a function of our choosing.
struct DeviceShakeViewModifier: ViewModifier {
    let action: () -> Void

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
                action()
            }
    }
}

// A View extension to make the modifier easier to use.
extension View {
    func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(DeviceShakeViewModifier(action: action))
    }
}
