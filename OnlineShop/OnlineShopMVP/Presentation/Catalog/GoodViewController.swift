//
//  GoodViewController.swift
//  OnlineShop
//
//  Created by Данил Терлецкий on 13.02.2023.
//

import UIKit

class GoodViewController: UIViewController {
    var good: Good?
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        guard let good else { return }
        nameLabel.text = good.name
        nameLabel.numberOfLines = 0

        priceLabel.text = String(good.price)
        priceLabel.numberOfLines = 0

        textView.text = good.description
    }
}
