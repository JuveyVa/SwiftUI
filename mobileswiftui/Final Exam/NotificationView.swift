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
                Button(action: {
                    viewModel.requestPermission()
                }) {
                    Text("Pedir Permiso")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }

                Button(action: {
                    viewModel.scheduleNotification()
                }) {
                    Text("Empezar tiempo para tomar agua")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(10)
                }

                Button(action: {
                    viewModel.startRepeatingNotification()
                }) {
                    Text("Empezar notificacion cada 10 segundos")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(10)
                }

                Button(action: {
                    viewModel.stopRepeatingNotification()
                }) {
                    Text("Detener notificación repetitiva")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)

            Spacer()
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .padding()
    }
}
