//
//  SeSACShop2ViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/07.
//

import Foundation
import UIKit

class SeSACShop2ViewController: UIViewController {
    
    private let mockData = [
        (image: UIImage(named: "sesac_bg_01"), name: "하늘 공원", point: "보유", description: "새싹들을 많이 마주치는 매력적인 하늘 공원입니다"),
        (image: UIImage(named: "sesac_bg_01"), name: "씨티 뷰", point: "1,200", description: "창밖으로 보이는 도시 야경이 아름다운 공간입니다"),
        (image: UIImage(named: "sesac_bg_01"), name: "밤의 산책로", point: "1,200", description: "어둡지만 무섭지 않은 조용한 산책로입니다"),
        (image: UIImage(named: "sesac_bg_01"), name: "낮의 산책로", point: "1,200", description: "즐겁고 가볍게 걸을 수 있는 산책로입니다"),
        (image: UIImage(named: "sesac_bg_01"), name: "연극 무대", point: "2,500", description: "연극의 주인공이 되어 연기를 펼칠 수 있는 무대입니다")
    ]
    
    let mainView = SeSACShop2View()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.collectionView.register(SeSACShop2CollectionViewCell.self, forCellWithReuseIdentifier: SeSACShop2CollectionViewCell.identifier)
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
    }
}

extension SeSACShop2ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mockData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainView.collectionView.dequeueReusableCell(withReuseIdentifier: SeSACShop2CollectionViewCell.identifier, for: indexPath) as! SeSACShop2CollectionViewCell
        
        cell.imageView.image = mockData[indexPath.row].image
        cell.nameLabel.text = mockData[indexPath.row].name
        cell.pointLabel.text = mockData[indexPath.row].point
        cell.descriptionLabel.text = mockData[indexPath.row].description
        
        return cell
    }
}

extension SeSACShop2ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 25, left: 25, bottom: 25, right: 25)
    }
}
