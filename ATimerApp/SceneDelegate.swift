//
//  SceneDelegate.swift
//  ATimerApp
//
//  Created by Sumair Zamir on 27/10/2020.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = SelectTimerViewController()
        window?.makeKeyAndVisible()
    }

}

