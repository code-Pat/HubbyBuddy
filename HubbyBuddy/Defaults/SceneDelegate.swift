//
//  SceneDelegate.swift
//  HubbyBuddy
//
//  Created by Donggeun Lee on 2022/01/18.
//

import UIKit
import FirebaseAuth

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        
//        if Auth.auth().currentUser == nil {
//            let vc = LogInViewController()
//            let navVC = UINavigationController(rootViewController: vc)
//            window.rootViewController = navVC
//        } else {
//            let vc = SUNickNameViewController()
//            let navVC = UINavigationController(rootViewController: vc)
//            window.rootViewController = navVC
//        }
//        window.makeKeyAndVisible()
//        self.window = window
        
        
        let vc = SeSACHomeViewController()
        //vc.title = "main"
        let navVC = UINavigationController(rootViewController: vc)
        window.rootViewController = navVC
        window.makeKeyAndVisible()
        self.window = window
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

