//
//  MyInfoView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import UIKit
import SnapKit

class MyInfoView: UIView {
    
    let mainImageView = UIImageView()
    let nicknameView = UIView()
    let nicknameLabel = UILabel()
    
    let genderView = UIView()
    let genderLabel = UILabel()
    let maleView = UIView()
    let maleLabel = UILabel()
    let femaleView = UIView()
    let femaleLabel = UILabel()
    
    let hobbyView = UIView()
    let hobbyLabel = UILabel()
    let hobbyTextField = UITextField()
    
    let phonenumberView = UIView()
    let phonenumberLabel = UILabel()
    let phonenumberSwitch = UISwitch()
    
    let ageView = UIView()
    let ageLabel = UILabel()
    let ageSliderLabel = UILabel()
    let ageSlider = UISlider()
    
    let withdrawlView = UIView()
    let withdrawlLabel = UILabel()
    
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
        
        mainImageView.image = UIImage(named: "sesac_bg_01")
        mainImageView.contentMode = .scaleAspectFill
        
        nicknameLabel.text = "김새싹"
        nicknameLabel.font = .boldSystemFont(ofSize: 16)
        nicknameLabel.textColor = .black
        nicknameLabel.textAlignment = .left
        
        genderLabel.text = "내 성별"
        genderLabel.font = .systemFont(ofSize: 14)
        genderLabel.textColor = .black
        genderLabel.textAlignment = .left
        
        maleLabel.text = "남자"
        maleLabel.font = .systemFont(ofSize: 14)
        maleLabel.textColor = .black
        maleLabel.textAlignment = .left
        
        femaleLabel.text = "여자"
        femaleLabel.font = .systemFont(ofSize: 14)
        femaleLabel.textColor = .black
        femaleLabel.textAlignment = .left
        
        hobbyLabel.text = "자주 하는 취미"
        hobbyLabel.font = .systemFont(ofSize: 14)
        hobbyLabel.textColor = .black
        hobbyLabel.textAlignment = .left
        
        hobbyTextField.placeholder = " 취미를 입력해 주세요"
        hobbyTextField.font = .systemFont(ofSize: 14)
        hobbyTextField.attributedPlaceholder = NSAttributedString(string: hobbyTextField.placeholder ?? "", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        
        phonenumberLabel.text = "내 번호 검색 허용"
        phonenumberLabel.font = .systemFont(ofSize: 14)
        phonenumberLabel.textColor = .black
        phonenumberLabel.textAlignment = .left
        
        ageLabel.text = "상대방 연령대"
        ageLabel.font = .systemFont(ofSize: 14)
        ageLabel.textColor = .black
        ageLabel.textAlignment = .left
        
        ageSliderLabel.text = "18 - 35"
        ageSliderLabel.font = .systemFont(ofSize: 14)
        ageSliderLabel.textColor = .black
        ageSliderLabel.textAlignment = .left
        
        withdrawlLabel.text = "회원탈퇴"
        withdrawlLabel.font = .systemFont(ofSize: 14)
        withdrawlLabel.textColor = .black
        withdrawlLabel.textAlignment = .left

    }
    
    func setupConstraints() {
        addSubview(mainImageView)
        addSubview(nicknameView)
        addSubview(nicknameLabel)
        addSubview(genderView)
        addSubview(genderLabel)
        addSubview(maleView)
        addSubview(maleLabel)
        addSubview(femaleView)
        addSubview(femaleLabel)
        addSubview(hobbyView)
        addSubview(hobbyLabel)
        addSubview(hobbyTextField)
        addSubview(phonenumberView)
        addSubview(phonenumberLabel)
        addSubview(phonenumberSwitch)
        addSubview(ageView)
        addSubview(ageLabel)
        addSubview(ageSliderLabel)
        addSubview(ageSlider)
        addSubview(withdrawlView)
        addSubview(withdrawlLabel)
        
        mainImageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide).offset(30)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(194)
        }
        
        nicknameView.snp.makeConstraints { make in
            make.top.equalTo(mainImageView.snp.bottom)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(58)
        }
        
        nicknameLabel.snp.makeConstraints { make in
            make.centerY.equalTo(nicknameView).offset(16)
            make.leading.equalTo(nicknameView.snp.leading).offset(16)
            make.width.equalTo(280)
        }
        
        genderView.snp.makeConstraints { make in
            make.top.equalTo(nicknameView.snp.bottom).offset(24)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(48)
        }
        
        genderLabel.snp.makeConstraints { make in
            make.centerY.equalTo(genderView)
            make.leading.equalTo(genderView.snp.leading)
            make.width.equalTo(100)
            make.height.equalTo(22)
        }
        
        maleView.snp.makeConstraints { make in
            make.top.equalTo(genderView.snp.top)
            make.bottom.equalTo(genderView.snp.bottom)
            make.trailing.equalTo(femaleView.snp.leading).offset(-10)
            make.width.equalTo(56)
        }
        
        maleLabel.snp.makeConstraints { make in
            make.centerY.equalTo(maleView).offset(12)
            make.centerX.equalTo(maleView).offset(15)
        }
        
        femaleView.snp.makeConstraints { make in
            make.top.equalTo(genderView.snp.top)
            make.bottom.equalTo(genderView.snp.bottom)
            make.trailing.equalTo(genderView.snp.trailing)
            make.width.equalTo(56)
        }
        
        femaleLabel.snp.makeConstraints { make in
            make.centerY.equalTo(femaleView).offset(12)
            make.centerX.equalTo(femaleView).offset(15)
        }
        
        hobbyView.snp.makeConstraints { make in
            make.top.equalTo(genderView.snp.bottom)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(48)
        }
        
        hobbyLabel.snp.makeConstraints { make in
            make.centerY.equalTo(hobbyView)
            make.leading.equalTo(hobbyView.snp.leading)
            make.width.equalTo(100)
            make.height.equalTo(22)
        }
        
        hobbyTextField.snp.makeConstraints { make in
            make.centerY.equalTo(hobbyView).offset(13)
            make.trailing.equalTo(hobbyView.snp.trailing)
            make.width.equalTo(120)
        }
        
        phonenumberView.snp.makeConstraints { make in
            make.top.equalTo(hobbyView.snp.bottom)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(48)
        }
        
        phonenumberLabel.snp.makeConstraints { make in
            make.centerY.equalTo(phonenumberView)
            make.leading.equalTo(phonenumberView.snp.leading)
            make.width.equalTo(100)
            make.height.equalTo(22)
        }
        
        phonenumberSwitch.snp.makeConstraints { make in
            make.top.equalTo(phonenumberView.snp.top).offset(10)
            make.bottom.equalTo(phonenumberView.snp.bottom).offset(10)
            make.trailing.equalTo(phonenumberView.snp.trailing)
            make.width.equalTo(52)
        }
        
        ageView.snp.makeConstraints { make in
            make.top.equalTo(phonenumberView.snp.bottom)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(80)
        }
        
        ageLabel.snp.makeConstraints { make in
            make.top.equalTo(ageView.snp.top).offset(13)
            make.leading.equalTo(ageView.snp.leading)
            make.width.equalTo(100)
            make.height.equalTo(22)
        }
        
        ageSliderLabel.snp.makeConstraints { make in
            make.top.equalTo(ageView.snp.top).offset(13)
            make.trailing.equalTo(ageView.snp.trailing)
            make.width.equalTo(50)
            make.height.equalTo(22)
        }
        
        ageSlider.snp.makeConstraints { make in
            make.bottom.equalTo(ageView.snp.bottom)
            make.leading.equalTo(ageView.snp.leading)
            make.trailing.equalTo(ageView.snp.trailing).offset(10)
            make.height.equalTo(24)
        }
        
        withdrawlView.snp.makeConstraints { make in
            make.top.equalTo(ageView.snp.bottom)
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(48)
        }
        
        withdrawlLabel.snp.makeConstraints { make in
            make.centerY.equalTo(withdrawlView).offset(13)
            make.leading.equalTo(withdrawlView.snp.leading)
            make.width.equalTo(100)
        }
    }
}
