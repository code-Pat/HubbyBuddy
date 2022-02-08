//
//  SUNickNameView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/20.
//

import UIKit
import SnapKit

class SUNickNameView: UIView {
    
    let welcomLabel = UILabel()
    let nicknameView = UIView()
    let nicknameTextField = UITextField()
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
        
        welcomLabel.text = "닉네임을 입력해 주세요"
        welcomLabel.font = .boldSystemFont(ofSize: 20)
        welcomLabel.textAlignment = .center
        welcomLabel.textColor = .black
        
        nicknameTextField.placeholder = "  10자 이내로 입력"
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: nicknameTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        nicknameTextField.font = .systemFont(ofSize: 15)
        nicknameTextField.textAlignment = .left
        
        nextButton.setTitle("다음", for: .normal)
        nextButton.setTitleColor(.systemBackground, for: .normal)
        nextButton.backgroundColor = .systemGray
        nextButton.layer.cornerRadius = 12
    }
    
    func setupConstraints() {
        
        addSubview(welcomLabel)
        addSubview(nicknameView)
        addSubview(nicknameTextField)
        addSubview(nextButton)
        
        welcomLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(185)
            make.centerX.equalToSuperview()
            make.width.equalTo(188)
            make.height.equalTo(32)
        }
        nicknameView.snp.makeConstraints { make in
            make.top.equalTo(welcomLabel.snp.bottom).offset(80)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(20)
            make.height.equalTo(48)
        }
        nicknameTextField.snp.makeConstraints { make in
            make.top.equalTo(nicknameView.snp.top)
            make.leading.equalTo(nicknameView.snp.leading)
        }
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(nicknameView.snp.bottom).offset(72)
            make.centerX.equalToSuperview()
            make.width.equalTo(343)
            make.height.equalTo(48)
        }
    }
}
