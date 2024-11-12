//
//  ARSessionViewModel.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//


import Combine

class ARSessionViewModel: ObservableObject {
    @Published var currentActivity: WellnessActivity?
    private let healthService: HealthServiceProtocol

    init(healthService: HealthServiceProtocol = HealthService()) {
        self.healthService = healthService
    }

    func startSession(with activity: WellnessActivity) {
        currentActivity = activity
        healthService.startTracking(activity: activity)
    }

    func endSession() {
        if let activity = currentActivity {
            healthService.endTracking(activity: activity)
            currentActivity = nil
        }
    }
}
