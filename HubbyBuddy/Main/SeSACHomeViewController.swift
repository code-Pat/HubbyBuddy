//
//  SeSACHomeViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import UIKit
import SnapKit

class SeSACHomeViewController: UIViewController {
    
    let mainView = SeSACHomeView()
    
    override func loadView() {
        self.view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
