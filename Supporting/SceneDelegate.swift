//
//  SceneDelegate.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 14.12.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = TabController()
        self.window = window
        self.window?.makeKeyAndVisible()
    }

}

