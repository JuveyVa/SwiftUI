//
//  NotificationViewModel.swift
//  mobileswiftui
//
//  Created by ITIT on 02/06/25.
//

import Foundation
import UserNotifications

class NotificationViewModel: ObservableObject {
    private var timer: Timer?

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
        content.sound = UNNotificationSound(named: UNNotificationSoundName("How the Balatro Negative Card Sound Was Made.wav"))

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request)
    }

    func startRepeatingNotification() {
        print("se dio click en el boton")
        stopRepeatingNotification()

        timer = Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { [weak self] _ in
            self?.sendNotification()
        }

        print("Se inicio la notificacion repetitiva")
    }

    func stopRepeatingNotification() {
        timer?.invalidate()
        timer = nil
        print("Se detuvo la notificacion repetitiva")
    }

    private func sendNotification() {
        let content = UNMutableNotificationContent()
        content.title = "¡Toma Agua!"
        content.body = "Toma agua, ya pasaron 10 segundos."
        content.sound = UNNotificationSound(named: UNNotificationSoundName("How the Balatro Negative Card Sound Was Made.wav"))

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request)
    }
}

