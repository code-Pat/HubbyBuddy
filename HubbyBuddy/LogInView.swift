//
//  LogInView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/18.
//

import UIKit
import SnapKit

class LogInView: UIView {
    
    let welcomLabel = UILabel()
    let pnView = UIView()
    let pnTextField = UITextField()
    let verificationButton = UIButton()
    
    
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
        
        welcomLabel.text = "새싹 서비스 이용을 위해 \n 휴대폰 번호를 입력해 주세요"
        welcomLabel.font = .systemFont(ofSize: 20)
        welcomLabel.setTextWithLineHeight(text: welcomLabel.text, lineHeight: 32)
        welcomLabel.textColor = .black
        welcomLabel.textAlignment = .center
        welcomLabel.numberOfLines = 2
        
        pnView.layer.addBorder([.top], color: .systemGray, width: 1.0)
        //pnView.backgroundColor = .systemGray
        
        pnTextField.placeholder = "휴대폰 번호 (-없이 숫자만 입력)"
        pnTextField.font = .boldSystemFont(ofSize: 14)
        pnTextField.attributedPlaceholder = NSAttributedString(string: pnTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        pnTextField.textAlignment = .left
        pnTextField.keyboardType = .numberPad
        
        verificationButton.setTitle("인증 문자 받기", for: .normal)
        verificationButton.setTitleColor(.systemBackground, for: .normal)
        verificationButton.backgroundColor = .systemGray
        verificationButton.layer.cornerRadius = 12
        
    }
    
    func setupConstraints() {
        
        addSubview(welcomLabel)
        addSubview(pnView)
        addSubview(pnTextField)
        addSubview(verificationButton)
        
        welcomLabel.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(169)
            make.centerX.equalToSuperview()
            make.width.equalTo(228)
            make.height.equalTo(64)
        }
        
        pnView.snp.makeConstraints { make in
            make.top.equalTo(welcomLabel.snp.bottom).offset(64)
            make.centerX.equalToSuperview()
            make.width.equalTo(343)
            make.height.equalTo(48)
        }
        
        pnTextField.snp.makeConstraints { make in
            make.top.equalTo(pnView.snp.top).offset(13)
            make.leading.equalTo(pnView.snp.leading).offset(12)
        }
        
        verificationButton.snp.makeConstraints { make in
            make.top.equalTo(pnTextField.snp.bottom).offset(72)
            make.centerX.equalToSuperview()
            make.width.equalTo(343)
            make.height.equalTo(48)
        }
    }
}


