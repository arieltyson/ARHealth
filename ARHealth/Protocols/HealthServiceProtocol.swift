//
//  HealthServiceProtocol.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//
import HealthKit

protocol HealthServiceProtocol {
    func startTracking(activity: WellnessActivity)
    func endTracking(activity: WellnessActivity)
}
