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
    var emailAddress: String = ""
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.emailTextField.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
        mainView.nextButton.addTarget(self, action: #selector(nextBtnClicked), for: .touchUpInside)
    }
    
    @objc func emailTextFieldDidChange(_ textfield: UITextField) {
        emailAddress = textfield.text ?? ""
        print(emailAddress)
        mainView.nextButton.backgroundColor = .orange
    }
    
    @objc func nextBtnClicked() {
        let vc = SUGenderViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
 
