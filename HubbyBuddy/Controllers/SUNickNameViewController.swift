//
//  SUNickNameViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/20.
//

/*
 - 닉네임이 한 글자 이상 작성되면 다음 버튼 활성화 되면서 생상 바뀌기
 */

import Foundation
import UIKit

class SUNickNameViewController: UIViewController {
    let mainView = SUNickNameView()
    
    override func loadView() {
        self.view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
