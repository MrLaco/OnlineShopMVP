//
//  CatalogService.swift
//  OnlineShop
//
//  Created by Данил Терлецкий on 12.02.2023.
//

import UIKit

struct Good {
    let name: String
    let price: Int
    let description: String
}

protocol CatalogService {
    var goods: [Good] { get set }

    func obtainGoods() -> [Good]
}

class MockCatalogService: CatalogService {
    static let shared: MockCatalogService = .init()

    var goods: [Good] = [
        .init(name: "iPhone 14", price: 100000, description: "Best phone forever"),
        .init(name: "iPad Pro", price: 80000, description: "Best tablet forever"),
        .init(name: "MacBook Air", price: 90000, description: "Best laptop forever")
    ]

    func obtainGoods() -> [Good] {
        return goods
    }
}
