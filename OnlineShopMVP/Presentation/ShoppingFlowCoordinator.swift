//
//  ShoppingFlowCoordinator.swift
//  OnlineShop
//
//  Created by Данил Терлецкий on 12.02.2023.
//

import UIKit

class ShoppingFlowCoordinator {
    weak var navigationController: UINavigationController?

    private let storyboard: UIStoryboard = .init(name: "Main", bundle: nil)

    func start() -> UINavigationController {
        let catalogPresenter = CatalogPresenter()
        let catalogViewController: CatalogViewController = storyboard.instantiateViewController(identifier: "CatalogViewController")

        catalogPresenter.view = catalogViewController
        catalogPresenter.showDetails = showGoodDetails(for:)
        catalogViewController.presenter = catalogPresenter

        let navigationController = UINavigationController(rootViewController: catalogViewController)
        self.navigationController = navigationController

        return navigationController
    }
    
    func showGoodDetails(for good: Good) {
        let goodViewController: GoodViewController = storyboard.instantiateViewController(identifier: "GoodViewController")
        goodViewController.good = good
        navigationController?.pushViewController(goodViewController, animated: true)
    }
}
