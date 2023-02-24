//
//  CatalogViewController.swift
//  OnlineShop
//
//  Created by Teacher on 11.02.2023.
//

import UIKit

class CatalogViewController: UITableViewController {

    var presenter: CatalogPresenter!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.loadGoods()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.goodCount()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell: UITableViewCell
        if let dequeuedCell = tableView.dequeueReusableCell(withIdentifier: "Cell") {
            cell = dequeuedCell
        } else {
            cell = UITableViewCell(
                style: .default, reuseIdentifier: "Cell"
            )
        }

        let good = presenter.good(at: indexPath.row)
        
        var configuration = UIListContentConfiguration.cell()
        configuration.text = good.name
        cell.contentConfiguration = configuration

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.presentDetails(forGoodAt: indexPath.row)
    }
}
