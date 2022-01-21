//
//  LogInViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/18.
//
/*
 - 휴대폰 번호 입력 완료 시, 인증문자받기 버튼 초록색으로 바뀌게
 - 휴대폰 번호 입력 시, 자동으로 "-" 처리 해주기 
 */

import UIKit
import SnapKit

class LogInViewController: UIViewController {
    
    let mainView = LogInView()
    var phonenumber: String = ""
    let maxLength = 11
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.pnTextField.addTarget(self, action: #selector(pnTextFieldDidchange(_:)), for: .editingChanged)
        mainView.verificationButton.addTarget(self, action: #selector(verifyBtnClicked), for: .touchUpInside)
    }
    
    func editTextField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard let text = textField.text else { return false }
        
        if text.count >= maxLength && range.length == 0 && range.location < maxLength {
            return false
        }
        
        return true
    }
    
    @objc func pnTextFieldDidchange(_ textfield: UITextField) {
        phonenumber = textfield.text ?? ""
        print(phonenumber)
    }
    
    @objc func verifyBtnClicked() {
        let number = "+82\(phonenumber)"
        print(number)
        AuthManager.shared.startAuth(phoneNumber: number) { [weak self] success in
            guard success else { return }
            DispatchQueue.main.async {
                let vc = SMSCodeViewController()
                vc.title = ""
                self?.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
    
    
}

