//
//  ARHealthApp.swift
//  ARHealth
//
//  Created by Ariel Tyson on 4/11/24.
//

import SwiftUI

@main
struct ARHealthApp: App {
    private let coordinator = AppCoordinator()

    var body: some Scene {
        WindowGroup {
            coordinator.start()
        }
    }
}
