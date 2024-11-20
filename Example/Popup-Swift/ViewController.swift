//
//  ViewController.swift
//  Popup-Swift
//
//  Created by galenu on 11/20/2024.
//  Copyright (c) 2024 galenu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func alert(_ sender: Any) {
        let alert = UIView()
        alert.backgroundColor = .red
        self.showAlert(alert, size: .size(width: 300, height: 300), offsetX: (UIScreen.main.bounds.width - 300) * 0.5)
    }
    
    @IBAction func actionsheet(_ sender: Any) {
        let actionsheet = UIView()
        actionsheet.backgroundColor = .red
        self.showActionSheet(actionsheet, size: .size(width: 300, height: 400), offsetX: (UIScreen.main.bounds.width - 300) * 0.5)
    }
    @IBAction func popopver(_ sender: Any) {
        let popopver = UIView()
        popopver.backgroundColor = .red
        self.pushPopover(popopver, size: .size(width: UIScreen.main.bounds.width, height: 400))
    }
}

