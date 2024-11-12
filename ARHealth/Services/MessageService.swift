//
//  MessageService.swift
//  ARHealth
//
//  Created by Ariel Tyson on 10/11/24.
//

import MessageUI
import SwiftUI

class MessageService: NSObject, MFMessageComposeViewControllerDelegate {

    func sendMessage(
        activity: WellnessActivity, from viewController: UIViewController
    ) {
        // Check if the device can send text messages
        guard MFMessageComposeViewController.canSendText() else {
            print("Cannot send messages.")
            return
        }

        let messageVC = MFMessageComposeViewController()
        messageVC.body = "Check out this wellness activity: \(activity.name)"

        messageVC.messageComposeDelegate = self

        viewController.present(messageVC, animated: true, completion: nil)
    }

    // Delegate method to handle the result of the message composition
    func messageComposeViewController(
        _ controller: MFMessageComposeViewController,
        didFinishWith result: MessageComposeResult
    ) {
        controller.dismiss(animated: true, completion: nil)

        switch result {
        case .cancelled:
            print("Message composition cancelled.")
        case .sent:
            print("Message sent successfully.")
        case .failed:
            print("Message sending failed.")
        @unknown default:
            print("Unknown result.")
        }
    }
}
