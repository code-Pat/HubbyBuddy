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

class LogInViewController: UIViewController, UITextFieldDelegate {
    
    let mainView = LogInView()
    var phonenumber: String = ""
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.pnTextField.addTarget(self, action: #selector(pnTextFieldDidchange(_:)), for: .editingChanged)
        mainView.verificationButton.addTarget(self, action: #selector(verifyBtnClicked), for: .touchUpInside)
        
        mainView.pnTextField.delegate = self
        
    }
    
    
    private func textLimit(existingText: String?, newText: String, limit: Int) -> Bool {
        let text = existingText ?? ""
        let isAtLimit = text.count + newText.count <= limit
        return isAtLimit
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
//        guard let text = textField.text else { return false }
//
//        if text.count >= maxLength && range.length == 0 && range.location < maxLength {
//            print("text length: \(text.count)")
//            return false
//        }
//        print("text length: \(text.count)")
//        return true
        
        let counter = textLimit(existingText: textField.text, newText: string, limit: 11)
        let btnCounter = textLimit(existingText: textField.text, newText: string, limit: 10)
        if btnCounter == false {
            mainView.verificationButton.backgroundColor = .orange
        }
        return counter
        
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

