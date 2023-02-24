//
//  MainTabBarCoordinator.swift
//  OnlineShop
//
//  Created by Teacher on 11.02.2023.
//

import UIKit

class MainTabBarCoordinator {
    weak var tabBarController: UITabBarController?

    func start() -> UIViewController {
        let tabBarController = UITabBarController()
        self.tabBarController = tabBarController

        tabBarController.viewControllers = [
            shopping(),
            profile(),
        ]
        return tabBarController
    }

    private let storyboard: UIStoryboard = .init(name: "Main", bundle: nil)

    private func shopping() -> UIViewController {
        let navigationController = ShoppingFlowCoordinator().start()
        navigationController.tabBarItem = UITabBarItem(
            title: "Catalog",
            image: .init(systemName: "cart"),
            selectedImage: .init(systemName: "cart.fill")
        )
        return navigationController
    }

    private func profile() -> UIViewController {
        let controller: ProfileViewController = storyboard.instantiateViewController(identifier: "ProfileViewController")
        controller.tabBarItem = UITabBarItem(
            title: "Profile",
            image: .init(systemName: "person.circle"),
            selectedImage: .init(systemName: "person.circle.fill")
        )
        return controller
    }
}
