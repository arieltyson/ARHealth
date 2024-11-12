//
//  ActivityService.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//

import Foundation

class ActivityService: ActivityServiceProtocol {
    func getActivities() -> [WellnessActivity] {
        // Will create local JSON to fetch activities
        return [
            WellnessActivity(
                id: UUID(), name: "Morning Meditation",
                description: "Start your day...", activityType: .meditation)
        ]
    }
}
