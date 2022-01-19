//
//  SMSCodeView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/19.
//

import UIKit
import SnapKit

class SMSCodeView: UIView {
    
    let topView = UIView()
    let mainLabel = UILabel()
    let descriptionLabel = UILabel()
    
    let midview = UIView()
    let codeTextField = UITextField()
    let timeLabel = UILabel()
    
    let resendButton = UIButton()
    let nextButoon = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup() {
        
        self.backgroundColor = .systemBackground
     
        mainLabel.text = "인증번호가 문자로 전송되었어요"
        mainLabel.font = .boldSystemFont(ofSize: 20)
        mainLabel.textAlignment = .center
        mainLabel.textColor = .black
        
        descriptionLabel.text = "(최대 소모 20초)"
        descriptionLabel.textColor = .lightGray
        descriptionLabel.font = .systemFont(ofSize: 16)
        descriptionLabel.textAlignment = .center
        
        codeTextField.placeholder = "인증번호 입력"
        codeTextField.attributedPlaceholder = NSAttributedString(string: codeTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        codeTextField.font = .systemFont(ofSize: 14)
        codeTextField.textAlignment = .left
        codeTextField.keyboardType = .numberPad
        
        timeLabel
    }
}
