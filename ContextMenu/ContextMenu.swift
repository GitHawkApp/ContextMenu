//
//  ContextMenu.swift
//  ThingsUI
//
//  Created by Ryan Nystrom on 3/7/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import UIKit

public class ContextMenu: NSObject {

    public static let shared = ContextMenu()

    var item: Item?
    let haptics = UISelectionFeedbackGenerator()

    public func show(
        sourceViewController: UIViewController,
        viewController: UIViewController,
        options: Options = Options(),
        sourceView: UIView? = nil
        ) {
        if let previous = self.item {
            previous.viewController.dismiss(animated: false)
        }

        if options.haptics {
            haptics.selectionChanged()
        }

        let item = Item(
            viewController: viewController,
            options: options,
            sourceView: sourceView
        )
        self.item = item

        item.viewController.transitioningDelegate = self
        item.viewController.modalPresentationStyle = .custom
        sourceViewController.present(item.viewController, animated: true)
    }

}
