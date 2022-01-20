//
//  SUBirthViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/20.
//

import Foundation
import UIKit

class SUBirthViewController: UIViewController {
    let mainView = SUBirthView()
    
    override func loadView() {
        self.view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
