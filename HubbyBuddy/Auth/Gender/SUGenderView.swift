//
//  SUGenderView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/21.
//

import Foundation
import UIKit

class SUGenderView: UIView {
    
    let topView = UIView()
    let welcomLabel = UILabel()
    let descriptionLabel = UILabel()
    
    let maleView = UIView()
    let maleImage = UIImageView()
    let maleLabel = UILabel()
    
    let femaleView = UIView()
    let femaleImage = UIImageView()
    let femaleLabel = UILabel()
    
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
        
        welcomLabel.text = "성별을 선택해 주세요"
        welcomLabel.font = .boldSystemFont(ofSize: 20)
        welcomLabel.textAlignment = .center
        welcomLabel.textColor = .black
        
        descriptionLabel.text = "새싹 찾기 기능을 이용하기 위해서 필요해요!"
        descriptionLabel.textColor = .lightGray
        descriptionLabel.font = .systemFont(ofSize: 16)
        descriptionLabel.textAlignment = .center
        
        maleImage.image = UIImage(named: "man")
        maleImage.backgroundColor = .systemBackground
        maleImage.contentMode = .scaleAspectFill
        
        maleLabel.text = "남자"
        maleLabel.font = .systemFont(ofSize: 18)
        maleLabel.textAlignment = .center
        maleLabel.textColor = .black
        
        femaleImage.image = UIImage(named: "woman")
        femaleImage.backgroundColor = .systemBackground
        femaleImage.contentMode = .scaleAspectFill
        
        femaleLabel.text = "여자"
        femaleLabel.font = .systemFont(ofSize: 18)
        femaleLabel.textAlignment = .center
        femaleLabel.textColor = .black
        
        nextButton.setTitle("다음", for: .normal)
        nextButton.setTitleColor(.systemBackground, for: .normal)
        nextButton.backgroundColor = .systemGray
        nextButton.layer.cornerRadius = 12
    }
    
    func setupConstraints() {
        
        addSubview(topView)
        addSubview(welcomLabel)
        addSubview(descriptionLabel)
        addSubview(maleView)
        addSubview(maleImage)
        addSubview(maleLabel)
        addSubview(femaleView)
        addSubview(femaleImage)
        addSubview(femaleLabel)
        addSubview(nextButton)
        
        topView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(185)
            make.centerX.equalToSuperview()
            make.width.equalTo(288)
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
        maleView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(32)
            make.leading.equalToSuperview().offset(20)
            make.width.equalTo(160)
            make.height.equalTo(120)
        }
        maleImage.snp.makeConstraints { make in
            make.top.equalTo(maleView.snp.top).offset(10)
            make.centerX.equalTo(maleView)
            make.width.equalTo(64)
            make.height.equalTo(64)
        }
        maleLabel.snp.makeConstraints { make in
            make.top.equalTo(maleImage.snp.bottom).offset(12)
            make.centerX.equalTo(maleView)
            make.width.equalTo(40)
            make.height.equalTo(26)
        }
        femaleView.snp.makeConstraints { make in
            make.top.equalTo(topView.snp.bottom).offset(32)
            make.trailing.equalToSuperview().offset(-20)
            make.width.equalTo(160)
            make.height.equalTo(120)
        }
        femaleImage.snp.makeConstraints { make in
            make.top.equalTo(femaleView.snp.top).offset(10)
            make.centerX.equalTo(femaleView)
            make.width.equalTo(64)
            make.height.equalTo(64)
        }
        femaleLabel.snp.makeConstraints { make in
            make.top.equalTo(femaleImage.snp.bottom).offset(12)
            make.centerX.equalTo(femaleView)
            make.width.equalTo(40)
            make.height.equalTo(26)
        }
        nextButton.snp.makeConstraints { make in
            make.top.equalTo(maleView.snp.bottom).offset(72)
            make.centerX.equalToSuperview()
            make.width.equalTo(343)
            make.height.equalTo(48)
        }
    }
    
}
