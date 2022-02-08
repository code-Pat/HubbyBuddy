//
//  SeSACBaseView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/07.
//

import Foundation
import UIKit
import SnapKit

class SeSACBaseView: UIView {
 
    let imageView = UIView()
    let backgroundImage = UIImageView()
    let faceImage = UIImageView()
    let saveButton = UIButton()
    
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
        
        backgroundImage.image = UIImage(named: "sesac_bg_01")
        backgroundImage.contentMode = .scaleToFill
        
        faceImage.image = UIImage(named: "sesac_face_1")
        faceImage.contentMode = .scaleToFill
        
        saveButton.setTitle("저장하기", for: .normal)
        saveButton.setTitleColor(.white, for: .normal)
        saveButton.backgroundColor = .green
        
    }
    
    func setupConstraints() {
        
        addSubview(imageView)
        addSubview(backgroundImage)
        
        
        imageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(175)
        }
        
        backgroundImage.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.top)
            make.leading.equalTo(imageView.snp.leading)
            make.trailing.equalTo(imageView.snp.trailing)
            make.height.equalTo(imageView.snp.height)
        }
        
        faceImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(backgroundImage)
        }
        
        saveButton.snp.makeConstraints { make in
            make.top.equalTo(backgroundImage.snp.top).offset(-15)
            make.trailing.equalTo(backgroundImage.snp.trailing).offset(-15)
            make.height.equalTo(40)
            make.width.equalTo(80)
        }
    }
    
}
