//
//  SUNickNameViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/20.
//

/*
 - 닉네임 textfield 10자 이내 조건 넣기
 - 닉네임이 한 글자 이상 작성되면 다음 버튼 활성화 되면서 생상 바뀌기
 */

import Foundation
import UIKit

class SUNickNameViewController: UIViewController, UITextFieldDelegate {
    
    let mainView = SUNickNameView()
    var nickname: String = ""
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.nicknameTextField.addTarget(self, action: #selector(nicknameTextFieldDidChange(_:)), for: .editingChanged)
        mainView.nextButton.addTarget(self, action: #selector(nextBtnClicked), for: .touchUpInside)
        
        mainView.nicknameTextField.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        let newLength = text.count + string.count - range.length
        if newLength == 10 {
            mainView.nextButton.backgroundColor = .orange
        }
        return newLength <= 10
    }
    
    @objc func nicknameTextFieldDidChange(_ textfield: UITextField) {
        nickname = textfield.text ?? ""
        print(nickname)
    }
    
    @objc func nextBtnClicked() {
        let vc = SUBirthViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
