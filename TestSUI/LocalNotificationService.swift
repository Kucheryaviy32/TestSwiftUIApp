//
//  LocalNotificationService.swift
//  TestSUI
//
//  Created by Игорь Скворцов on 16.05.2023.
//

import Foundation
import UserNotifications

class LocalNotificationService {
    
    func registerNotification () {
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .badge, .sound]) {success, error in
            if let error = error {
                print(error)
            }
        }
    }
    
    func sheduleNotification () {
        let center = UNUserNotificationCenter.current()
        let content = UNMutableNotificationContent()
        content.title = "SwiftUI ждет"
        content.body = "Пришло время учиться, учиться, и еще раз...(посмотрите последние уведомления)"
        content.sound = .default
        var dateNot = DateComponents()
        dateNot.hour = 19
        dateNot.minute = 0
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateNot, repeats: false)
        let request = UNNotificationRequest(identifier: "1", content: content, trigger: trigger)
        center.add(request)
    }
    
}
