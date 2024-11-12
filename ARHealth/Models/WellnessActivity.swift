//
//  WellnessActivity.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//

import Foundation

struct WellnessActivity: Identifiable {
    let id: UUID
    let name: String
    let description: String
    let activityType: ActivityType
}

enum ActivityType {
    case meditation
    case exercise
    case stretching
}
