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
    let nextButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        setupConstraints()
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
        
        codeTextField.placeholder = "  인증번호 입력"
        codeTextField.attributedPlaceholder = NSAttributedString(string: codeTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        codeTextField.font = .systemFont(ofSize: 14)
        codeTextField.textAlignment = .left
        codeTextField.keyboardType = .numberPad
        
        timeLabel.text = "5:00"
        timeLabel.font = .systemFont(ofSize: 16)
        timeLabel.textAlignment = .center
        timeLabel.textColor = .systemGreen
        
        resendButton.setTitle("재전송", for: .normal)
        resendButton.setTitleColor(.systemBackground, for: .normal)
        resendButton.backgroundColor = .systemGreen
        resendButton.layer.cornerRadius = 15
        
        nextButton.setTitle("인증하고 시작하기", for: .normal)
        nextButton.setTitleColor(.systemBackground, for: .normal)
        nextButton.backgroundColor = .systemGray
        nextButton.layer.cornerRadius = 12
    }
    
    func setupConstraints() {
        
        addSubview(topView)
        addSubview(mainLabel)
        addSubview(descriptionLabel)
        addSubview(midview)
        addSubview(codeTextField)
        addSubview(timeLabel)
        addSubview(resendButton)
        addSubview(nextButton)
        
        topView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(163)
            make.centerX.equalToSuperview()
            make.width.equalTo(260)
            make.height.equalTo(66)
        }
        
        mainLabel.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.top)
            make.leading.equalTo(topView.snp.leading)
            make.trailing.equalTo(topView.snp.trailing)
            make.height.equalTo(32)
        }
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(mainLabel.snp.bottom)
            make.leading.equalTo(topView.snp.leading)
            make.trailing.equalTo(topView.snp.trailing)
            make.height.equalTo(34)
        }
        midview.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(60)
            make.leading.equalToSuperview().offset(20)
            make.width.equalTo(263)
            make.height.equalTo(48)
        }
        codeTextField.snp.makeConstraints { make in
            make.top.equalTo(midview.snp.top)
            make.leading.equalTo(midview.snp.leading)
            make.width.equalTo(200)
        }
        timeLabel.snp.makeConstraints { make in
            make.top.equalTo(midview.snp.top).offset(13)
            make.leading.equalTo(codeTextField.snp.trailing).offset(15)
            make.trailing.equalTo(midview.snp.trailing)
            make.height.equalTo(22)
        }
        resendButton.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(60)
            make.leading.equalTo(midview.snp.trailing).offset(15)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(40)
        }
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(midview.snp.bottom).offset(72)
            make.centerX.equalToSuperview()
            make.width.equalTo(343)
            make.height.equalTo(48)
        }
        
    }
}
