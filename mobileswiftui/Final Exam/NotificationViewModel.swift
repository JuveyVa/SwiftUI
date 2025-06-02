//
//  NotificationViewModel.swift
//  mobileswiftui
//
//  Created by ITIT on 02/06/25.
//

import Foundation
import UserNotifications

class NotificationViewModel: ObservableObject {
    func requestPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, _ in
            print(granted ? "Permiso concedido" : "Permiso denegado")
        }
    }

    func scheduleNotification() {
        print("se dio click en el boton")
        let content = UNMutableNotificationContent()
        content.title = "¡Toma Agua!"
        content.body = "Recuerda que debes de tomar agua cada cierto tiempo."
        content.sound = .default

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request)
    }
}
