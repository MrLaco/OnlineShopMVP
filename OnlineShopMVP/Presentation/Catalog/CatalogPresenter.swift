//
//  CatalogPresenter.swift
//  OnlineShop
//
//  Created by Данил Терлецкий on 13.02.2023.
//

import UIKit

class CatalogPresenter {
    
    var showDetails: ((Good) -> Void)?
    var catalogService: CatalogService = MockCatalogService.shared
    weak var view: CatalogViewController!
    
    private var goods: [Good] = []
    
    func loadGoods() {
        goods = catalogService.obtainGoods()
    }
    
    func goodCount() -> Int {
        goods.count
    }
    
    func good(at index: Int) -> Good {
        goods[index]
    }

    func presentDetails(forGoodAt index: Int) {
        showDetails?(goods[index])
    }
}
