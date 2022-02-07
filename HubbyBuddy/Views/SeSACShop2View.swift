//
//  SeSACShop2View.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/07.
//

import Foundation
import UIKit
import SnapKit

class SeSACShop2View: UIView {
    var collectionView: UICollectionView = {
        
        var layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = .zero
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width - 20, height: UIScreen.main.bounds.width / 2)
        
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        cv.backgroundColor = .systemBackground
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupConstraints()
       
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupConstraints() {
        
        addSubview(collectionView)
        
        collectionView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(safeAreaLayoutGuide)
        }
    }
}
