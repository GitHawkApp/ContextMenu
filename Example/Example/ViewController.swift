//
//  ViewController.swift
//  ThingsUI
//
//  Created by Ryan Nystrom on 3/7/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import UIKit
import ContextMenu

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
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
            sourceView: nil
        )
    }

}

