//
//  SUEmailViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/21.
//

import Foundation
import UIKit

class SUEmailViewController: UIViewController {
    
    let mainView = SUEmailView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.nextButton.addTarget(self, action: #selector(nextBtnClicked), for: .touchUpInside)
    }
    
    @objc func nextBtnClicked() {
        let vc = SUGenderViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
 
