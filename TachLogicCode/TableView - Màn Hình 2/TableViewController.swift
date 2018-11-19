//
//  TableViewController.swift
//  demoPresenter
//
//  Created by datnguyen on 10/14/18.
//  Copyright © 2018 datnguyen. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!

    var presenter: TableViewPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.regester(tableView: tableView)
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.numberRows ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return presenter?.tableView(tableView: tableView, cellForRowAt: indexPath) ?? UITableViewCell()
    }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelectRow(at: indexPath)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return presenter?.heightForRow() ?? 0
    }
}
