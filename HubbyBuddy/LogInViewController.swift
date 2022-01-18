//
//  LogInViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/18.
//

import UIKit
import SnapKit

class LogInViewController: UIViewController {
    
    let mainView = LogInView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

