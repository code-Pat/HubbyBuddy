//
//  SUGenderViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/21.
//

import Foundation
import UIKit

class SUGenderViewController: UIViewController {
    
    let mainView = SUGenderView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        mainView.nextButton.addTarget(self, action: #selector(nextBtnClicked), for: .touchUpInside)
    }
    
//    @objc func nextBtnClicked() {
//        let vc = SUEmailViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
}
