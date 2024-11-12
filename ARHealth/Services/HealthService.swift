//
//  HealthService.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//

import HealthKit

class HealthService: HealthServiceProtocol {
    private let healthStore = HKHealthStore()

    func startTracking(activity: WellnessActivity) {
        // Request authorization and start tracking
    }

    func endTracking(activity: WellnessActivity) {
        // End tracking and save data
    }
}
