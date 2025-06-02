//
//  NotificationView.swift
//  mobileswiftui
//
//  Created by ITIT on 02/06/25.
//

import SwiftUI

struct NotificationView: View {
    @StateObject private var viewModel = NotificationViewModel()

    var body: some View {
        VStack {
            Text("Aplicacion de Notificaciones")
                .font(.title)
                .padding(.top, 40)

            Spacer()

            VStack(spacing: 20) {
                Button("Pedir Permiso") {
                    viewModel.requestPermission()
                }

                Button("Empezar tiempo para tomar agua") {
                    viewModel.scheduleNotification()
                }
            }
            .padding()

            Spacer()
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
    }
}
