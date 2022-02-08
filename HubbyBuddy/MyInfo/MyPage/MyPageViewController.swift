//
//  MyPageViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import Foundation
import UIKit

class MyPageViewController: UIViewController {
    
    let mainView = MyPageView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "내정보"
    }
    
}

