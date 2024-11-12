//
//  ShareSheet.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//

import SwiftUI
import UIKit

struct ShareSheet: UIViewControllerRepresentable {
    let activity: WellnessActivity

    func makeUIViewController(context: Context) -> UIActivityViewController {
        let text = "Check out this wellness activity: \(activity.name)"
        let activityVC = UIActivityViewController(
            activityItems: [text], applicationActivities: nil)
        return activityVC
    }

    func updateUIViewController(
        _ uiViewController: UIActivityViewController, context: Context
    ) {}
}

struct ShareSheet_Previews: PreviewProvider {
    static var previews: some View {
        ShareSheet(
            activity: WellnessActivity(
                id: UUID(), name: "Morning Yoga",
                description: "Start your day with yoga.",
                activityType: .exercise))
    }
}
