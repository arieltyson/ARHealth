//
//  ARSessionView.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//

import RealityKit
import SwiftUI

struct ARSessionView: View {
    let activity: WellnessActivity
    @StateObject private var viewModel = ARSessionViewModel()
    @State private var showShareSheet = false

    var body: some View {
        ZStack {
            RealityView { content in
                if let arEntity = try? await loadAREntity(for: activity) {
                    content.add(arEntity)
                }
            }
            VStack {
                Spacer()
                HStack {
                    Button("End Session") {
                        viewModel.endSession()
                    }
                    .padding()

                    Button("Share with Friends") {
                        showShareSheet = true
                    }
                    .padding()
                }
            }
        }
        .sheet(isPresented: $showShareSheet) {
            ShareSheet(activity: activity)
        }
        .onAppear {
            viewModel.startSession(with: activity)
        }
        .navigationTitle(activity.name)
        .navigationBarTitleDisplayMode(.inline)
    }

    private func loadAREntity(for activity: WellnessActivity) async throws
        -> Entity
    {
        // Load AR content based on the activity
        Entity()
    }
}

// MARK: - Preview

struct ARSessionView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleActivity = WellnessActivity(
            id: UUID(), name: "Evening Yoga",
            description: "Relax and unwind with yoga.", activityType: .exercise)

        ARSessionView(activity: sampleActivity)
            .previewDevice("iPhone 16 Pro")
    }
}
