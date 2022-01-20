//
//  SMSCodeViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/19.
//

/*
 - 재전송 버튼 기능 구현하기
 - 인증번호 6자리가 입력되면 시작 버튼 활성화되면서 색상 바뀌기
 - 번호 입력칸 옆 타이머 기능 구현하기
 */

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
                let vc = SUNickNameViewController()
                self?.navigationController?.pushViewController(vc, animated: true)
//                vc.modalPresentationStyle = .fullScreen
//                self?.present(vc, animated: true)
            }
        }
    }
}
