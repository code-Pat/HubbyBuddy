//
//  SeSACShop2CollectionViewCell.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/07.
//

import Foundation
import UIKit
import SnapKit

class SeSACShop2CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "cv2Cell"
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let pointLabel = UILabel()
    let descriptionLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setup()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup() {
        
        imageView.contentMode = .scaleToFill
        imageView.layer.addBorder([.top, .bottom, .left, .right], color: .systemGray, width: 1.0)
        imageView.layer.cornerRadius = 15

        nameLabel.font = .systemFont(ofSize: 16)
        nameLabel.textColor = .black
        nameLabel.textAlignment = .left
        
        pointLabel.font = .systemFont(ofSize: 14)
        pointLabel.textColor = .systemGray
        pointLabel.textAlignment = .center
        
        descriptionLabel.font = .systemFont(ofSize: 14)
        descriptionLabel.textColor = .black
        descriptionLabel.textAlignment = .left
        descriptionLabel.numberOfLines = 3
        
    }
    
    func setupConstraints() {
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(pointLabel)
        addSubview(descriptionLabel)
        
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.width.height.equalTo(165)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(40)
            make.leading.equalTo(imageView.snp.trailing).offset(10)
            make.width.equalTo(60)
            make.height.equalTo(25)
        }
        
        pointLabel.snp.makeConstraints { make in
            make.centerY.equalTo(nameLabel)
            make.trailing.equalToSuperview()
            make.width.equalTo(40)
            make.height.equalTo(20)
        }
        
        descriptionLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.leading.equalTo(imageView.snp.trailing).offset(10)
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}
