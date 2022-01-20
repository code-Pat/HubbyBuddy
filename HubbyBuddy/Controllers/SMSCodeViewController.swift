//
//  SMSCodeViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/19.
//

import Foundation
import UIKit

class SMSCodeViewController: UIViewController {
    
    let mainView = SMSCodeView()
    var code: String = ""
    
    override func loadView() {
        self.view = mainView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.codeTextField.addTarget(self, action: #selector(codeTextFieldDidChange(_:)), for: .editingChanged)
        mainView.nextButton.addTarget(self, action: #selector(nextBtnClicked), for: .touchUpInside)
    }
    
    @objc func codeTextFieldDidChange(_ textfield: UITextField) {
        code = textfield.text ?? ""
        print(code)
    }
    
    @objc func nextBtnClicked() {
        let number = code
        print(number)
        AuthManager.shared.verifyCode(smsCode: number) { [weak self] success in
            guard success else { return }
            DispatchQueue.main.async {
                let vc = SignUpViewController()
                vc.modalPresentationStyle = .fullScreen
                self?.present(vc, animated: true)
            }
        }
    }
}
