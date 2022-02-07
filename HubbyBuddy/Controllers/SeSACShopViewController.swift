//
//  SeSACShopViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import Foundation
import UIKit

class SeSACShopViewController: UIViewController {
    
    
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
