//
//  KeyboardMenuViewController.swift
//  Example
//
//  Created by Ryan Nystrom on 8/4/18.
//  Copyright © 2018 Ryan Nystrom. All rights reserved.
//

import UIKit

class KeyboardMenuViewController: UIViewController {

    let textView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Keyboard"
        preferredContentSize = CGSize(width: 300, height: 200)
        view.addSubview(textView)
        textView.textContainerInset = UIEdgeInsets(top: 8, left: 15, bottom: 8, right: 15)
        textView.font = UIFont.systemFont(ofSize: 18)
        textView.text = "Lorem ipsum"

        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(onDone)
        )
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            title: "Dismiss",
            style: .plain,
            target: self,
            action: #selector(onDismiss)
        )
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textView.frame = view.bounds
    }

    @objc func onDone() {
        dismiss(animated: true)
    }

    @objc func onDismiss() {
        textView.resignFirstResponder()
    }

}
