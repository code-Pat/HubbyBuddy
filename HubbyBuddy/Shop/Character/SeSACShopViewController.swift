//
//  SeSACShopViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import Foundation
import UIKit

class SeSACShopViewController: UIViewController {
    
    private let mockData = [
        (image: UIImage(named: "sesac_face_1"), name: "기본 새싹", point: "보유", description: "새싹을 대표하는 기본 식물입니다. 다른 새싹들과 함께 하는 것을 좋아합니다."),
        (image: UIImage(named: "sesac_face_1"), name: "튼튼 새싹", point: "1,200", description: "잎이 하나 더 자라나고 튼튼해진 새나라의 새싹으로 같이 있으면 즐거워집니다."),
        (image: UIImage(named: "sesac_face_1"), name: "민트 새싹", point: "2,500", description: "호불호의 대명사! 상쾌한 향이 나서 허브가 대중화된 지역에서 많이 자랍니다."),
        (image: UIImage(named: "sesac_face_1"), name: "퍼플 새싹", point: "2,500", description: "감정을 편안하게 쉬도록 하며 슬프고 우울한 감정을 진정시켜주는 멋진 새싹입니다."),
        (image: UIImage(named: "sesac_face_1"), name: "골드 새싹", point: "2,500", description: "화려하고 멋있는 삶을 살며 돈과 인생을 플렉스 하는 자유분방한 새싹입니다.")
    ]
    
    let mainView = SeSACShopView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.collectionView.register(SeSACShopCollectionViewCell.self, forCellWithReuseIdentifier: SeSACShopCollectionViewCell.identifier)
        mainView.collectionView.delegate = self
        mainView.collectionView.dataSource = self
    }
    
}

extension SeSACShopViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mockData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = mainView.collectionView.dequeueReusableCell(withReuseIdentifier: SeSACShopCollectionViewCell.identifier, for: indexPath) as! SeSACShopCollectionViewCell
        
        cell.imageView.image = mockData[indexPath.row].image
        cell.nameLabel.text = mockData[indexPath.row].name
        cell.pointLabel.text = mockData[indexPath.row].point
        cell.descriptionLabel.text = mockData[indexPath.row].description
        
        return cell
    }
}

extension SeSACShopViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
    }
}

//class SeSACShopViewController: UIViewController {
//
//    private var collectionView: UICollectionView?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        layout.itemSize = CGSize(width: view.frame.size.width/2, height: view.frame.size.width/2)
//
//        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
//
//        guard let collectionView = collectionView else {
//            return
//        }
//        collectionView.register(SeSACShopCollectionViewCell.self, forCellWithReuseIdentifier: SeSACShopCollectionViewCell.identifier)
//        collectionView.dataSource = self
//        collectionView.delegate = self
//        view.addSubview(collectionView)
//        collectionView.frame = view.bounds
//    }
//
//}
//
//extension SeSACShopViewController: UICollectionViewDelegate, UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SeSACShopCollectionViewCell.identifier, for: indexPath)
//        return cell
//    }
//}

//extension SeSACShopViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        let itemSpacing: CGFloat = 10
//        let myWidth: CGFloat = (collectionView.bounds.width - itemSpacing * 2) / 3
//
//        return CGSize(width: myWidth, height: myWidth)
//    }
//}
