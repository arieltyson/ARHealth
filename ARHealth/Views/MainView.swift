//
//  ContentView.swift
//  ARHealth
//
//  Created by Ariel Tyson on 4/11/24.
//

import SwiftUI

struct MainView: View {
    @StateObject private var viewModel = WellnessActivityViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.activities) { activity in
                NavigationLink(destination: ARSessionView(activity: activity)) {
                    Text(activity.name)
                }
            }
            .navigationTitle("Wellness Activities")
        }
    }
}
