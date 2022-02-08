//
//  SUGenderViewController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/21.
//

import Foundation
import UIKit

class SUGenderViewController: UIViewController {
    
    let mainView = SUGenderView()
    
    override func loadView() {
        self.view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        mainView.nextButton.addTarget(self, action: #selector(nextBtnClicked), for: .touchUpInside)
        
        let tapGesture1: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedView1(_:)))
        let tapGesture2: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tappedView2(_:)))
        
        mainView.maleView.addGestureRecognizer(tapGesture1)
        mainView.femaleView.addGestureRecognizer(tapGesture2)
    }
    
    @objc func tappedView1(_ gesture: UITapGestureRecognizer) {
        mainView.maleView.backgroundColor = .green
        mainView.nextButton.backgroundColor = .orange
    }
    
    @objc func tappedView2(_ gesture: UITapGestureRecognizer) {
        mainView.femaleView.backgroundColor = .green
        mainView.nextButton.backgroundColor = .orange
    }
    
//    @objc func nextBtnClicked() {
//        let vc = SUEmailViewController()
//        self.navigationController?.pushViewController(vc, animated: true)
//    }
}
