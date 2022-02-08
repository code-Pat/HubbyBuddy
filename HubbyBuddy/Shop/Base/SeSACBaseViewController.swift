//
//  SeSACBaseViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/07.
//

import Foundation
import UIKit

class SeSACBaseViewController: UIViewController {
    
    let mainView = SeSACBaseView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
}
