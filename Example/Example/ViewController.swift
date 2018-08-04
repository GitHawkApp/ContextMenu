//
//  ViewController.swift
//  ThingsUI
//
//  Created by Ryan Nystrom on 3/7/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import UIKit
import ContextMenu

class ViewController: UIViewController, ContextMenuDelegate {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var keyboardButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        button.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(onPan(gesture:))))
    }

    @objc func onPan(gesture: UIPanGestureRecognizer) {
        guard gesture.state == .changed else { return }
        button.center = gesture.location(in: view)
    }

    @IBAction func onButton(_ sender: Any) {
        ContextMenu.shared.show(
            sourceViewController: self,
            viewController: MenuViewController(),
            options: ContextMenu.Options(containerStyle: ContextMenu.ContainerStyle(backgroundColor: UIColor(red: 41/255.0, green: 45/255.0, blue: 53/255.0, alpha: 1)), menuStyle: .default, hapticsStyle: .medium),
            sourceView: button,
            delegate: self
        )
    }

    @IBAction func onKeyboardButton(_ sender: Any) {
        ContextMenu.shared.show(
            sourceViewController: self,
            viewController: KeyboardMenuViewController(),
            options: ContextMenu.Options(menuStyle: .default, hapticsStyle: .medium)
        )
    }

    //MARK: ContextMenuDelegate

    func contextMenuWillDismiss(viewController: UIViewController, animated: Bool) {
        print("will dismiss")
    }

    func contextMenuDidDismiss(viewController: UIViewController, animated: Bool) {
        print("did dismiss")
    }

}

