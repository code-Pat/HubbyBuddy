//
//  SeSACShopCollectionViewCell.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/07.
//

import Foundation
import UIKit
import SnapKit

class SeSACShopCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cvCell"
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let pointLabel = UILabel()
    let descriptionLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemBackground
        
        setup()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup() {
        
        imageView.image = UIImage(named: "sesac_face_01")
        imageView.contentMode = .scaleToFill
        
        nameLabel.text = "기본 새싹"
        nameLabel.font = .systemFont(ofSize: 16)
        nameLabel.textColor = .black
        nameLabel.textAlignment = .left
        
        pointLabel.text = "보유"
        pointLabel.font = .systemFont(ofSize: 14)
        pointLabel.textColor = .systemGray
        pointLabel.textAlignment = .center
        
        descriptionLabel.text = "새싹을 대표하는 기본 식물입니다. 다른 새싹들과 함께 하는 것을 좋아합니다"
        descriptionLabel.font = .systemFont(ofSize: 14)
        descriptionLabel.textColor = .black
        descriptionLabel.textAlignment = .left
        
    }
    
    func setupConstraints() {
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(pointLabel)
        addSubview(descriptionLabel)
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(imageView.snp.width)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(8)
            make.leading.equalToSuperview()
            make.width.equalTo(65)
            make.height.equalTo(30)
        }
        
        pointLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(8)
            make.trailing.equalToSuperview()
            make.width.equalTo(40)
            make.height.equalTo(20)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(8)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(75)
            
        }
    }
}
