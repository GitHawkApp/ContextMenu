//
//  ModalNavigationViewController.swift
//  ContextMenu
//
//  Created by Bas Broek on 01/04/2019.
//

import UIKit

class ModalNavigationViewController: UINavigationController {
    override var accessibilityViewIsModal: Bool {
        get { return true }
        set {}
    }

    override func accessibilityPerformEscape() -> Bool {
        dismiss(animated: UIAccessibility.isReduceMotionEnabled == false)
        return true
    }
}
