//
//  TabbarController.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/02/03.
//

import UIKit

class TabbarController: UITabBarController {
    
    private var tabs: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabBarAppearance()
        setTabbarItems()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tabBar.frame.size.height = 80
        tabBar.frame.origin.y = view.frame.height - 80
    }

}

extension TabbarController {
    private func setTabBarAppearance() {
        UITabBar.appearance().tintColor = .systemGray
        UITabBar.appearance().unselectedItemTintColor = .systemGray6
        
        tabBar.layer.borderWidth = 1.0
        //tabBar.layer.borderColor = .white.cgColor()
    }
    
    private func setTabbarItems() {
        
        let homeVC = UINavigationController(rootViewController: SeSACHomeViewController())
        homeVC.tabBarItem.selectedImage = UIImage(systemName: "house")
        homeVC.tabBarItem.title = "홈"
        homeVC.tabBarItem.image = UIImage(systemName: "house.fill")
        
        let shopVC = UINavigationController(rootViewController: SeSACShopViewController())
        shopVC.tabBarItem.selectedImage = UIImage(systemName: "house")
        shopVC.tabBarItem.title = "새싹샵"
        shopVC.tabBarItem.image = UIImage(systemName: "house.fill")
        
        let friendVC = UINavigationController(rootViewController: SeSACFriendViewController())
        friendVC.tabBarItem.selectedImage = UIImage(systemName: "house")
        friendVC.tabBarItem.title = "새싹 친구"
        friendVC.tabBarItem.image = UIImage(systemName: "house.fill")
        
        let mypageVC = UINavigationController(rootViewController: MyPageViewController())
        mypageVC.tabBarItem.selectedImage = UIImage(systemName: "house")
        mypageVC.tabBarItem.title = "내정보"
        mypageVC.tabBarItem.image = UIImage(systemName: "house.fill")
        
        tabs = [homeVC, shopVC, friendVC, mypageVC]
        
        setViewControllers(tabs, animated: true)
    }
}
