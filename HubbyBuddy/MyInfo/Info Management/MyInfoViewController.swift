//
//  MyInfoViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import UIKit

class MyInfoViewController: UIViewController {
    
    let mainView = MyInfoView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "정보 관리"
        self.navigationItem.rightBarButtonItem?.title = "저장"
    }
}

