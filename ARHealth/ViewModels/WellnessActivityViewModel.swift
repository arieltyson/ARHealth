//
//  WellnessActivityViewModel.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//


import Combine

class WellnessActivityViewModel: ObservableObject {
    @Published var activities: [WellnessActivity] = []
    private let activityService: ActivityServiceProtocol

    init(activityService: ActivityServiceProtocol = ActivityService()) {
        self.activityService = activityService
        fetchActivities()
    }

    func fetchActivities() {
        activities = activityService.getActivities()
    }
}
