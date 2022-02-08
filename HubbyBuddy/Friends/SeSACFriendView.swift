//
//  SeSACFriendView.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import UIKit
import SnapKit

class SeSACFriendView: UIView {
    
    let imageView = UIView()
    let topImageView = UIImageView()
    
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
        
        topImageView.image = UIImage(named: "sesac_bg_01")
        topImageView.contentMode = .scaleToFill
    }
    
    func setupConstraints() {
        
        addSubview(imageView)
        addSubview(topImageView)
        
        imageView.snp.makeConstraints { make in
            make.top.equalTo(self.safeAreaLayoutGuide)
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
            make.height.equalTo(175)
        }
        
        topImageView.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.top)
            make.leading.equalTo(imageView.snp.leading)
            make.trailing.equalTo(imageView.snp.trailing)
            make.height.equalTo(imageView.snp.height)
        }
    }
}
