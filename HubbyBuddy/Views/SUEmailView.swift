//
//  SUEmailView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/21.
//

import Foundation
import UIKit

class SUEmailView: UIView {
    
    let topView = UIView()
    let welcomLabel = UILabel()
    let descriptionLabel = UILabel()
    
    let midView = UIView()
    let emailTextField = UITextField()
    
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
        
        welcomLabel.text = "이메일을 입력해 주세요"
        welcomLabel.font = .boldSystemFont(ofSize: 20)
        welcomLabel.textAlignment = .center
        welcomLabel.textColor = .black
        
        descriptionLabel.text = "휴대폰 번호 변경 시 인증을 위해 사용해요"
        descriptionLabel.textColor = .lightGray
        descriptionLabel.font = .systemFont(ofSize: 16)
        descriptionLabel.textAlignment = .center
        
        emailTextField.placeholder = " SeSAC@email.com"
        emailTextField.attributedPlaceholder = NSAttributedString(string: emailTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        emailTextField.font = .systemFont(ofSize: 15)
        emailTextField.textAlignment = .left
        
        nextButton.setTitle("다음", for: .normal)
        nextButton.setTitleColor(.systemBackground, for: .normal)
        nextButton.backgroundColor = .systemGray
        nextButton.layer.cornerRadius = 12
    }
    
    func setupConstraints() {
        
        addSubview(topView)
        addSubview(welcomLabel)
        addSubview(descriptionLabel)
        addSubview(midView)
        addSubview(emailTextField)
        addSubview(nextButton)
        
        topView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(185)
            make.centerX.equalToSuperview()
            make.width.equalTo(272)
            make.height.equalTo(66)
        }
        
        welcomLabel.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.top)
            make.leading.equalTo(topView.snp.leading)
            make.trailing.equalTo(topView.snp.trailing)
            make.height.equalTo(33)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(welcomLabel.snp.bottom)
            make.leading.equalTo(topView.snp.leading)
            make.trailing.equalTo(topView.snp.trailing)
            make.height.equalTo(33)
        }
        
        midView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(63)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(20)
            make.height.equalTo(48)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.centerY.equalTo(midView)
            make.leading.equalTo(midView.snp.leading)
        }
        
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(midView.snp.bottom).offset(72)
            make.centerX.equalToSuperview()
            make.width.equalTo(343)
            make.height.equalTo(48)
        }
    }
}
