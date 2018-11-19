//
//  TableViewPresenter.swift
//  demoPresenter
//
//  Created by datnguyen on 10/14/18.
//  Copyright © 2018 datnguyen. All rights reserved.
//

import Foundation
import UIKit

protocol TableViewPresenter {
    var Identifier: String { get }
    func regester(tableView: UITableView)
    var numberRows: Int { get }
    func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    func didSelectRow(at indexPath: IndexPath)
    func heightForRow() -> CGFloat
}

class TableViewPresenterImpl: TableViewPresenter {
    var Identifier: String {
        return "Cell"
    }
    
    private let dataSource = ["Dat", "Hiep", "Trieu"]

    func regester(tableView: UITableView) {
        let nib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: Identifier)
    }

    var numberRows: Int {
        return dataSource.count
    }

    func tableView(tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Identifier ) as? TableViewCell else { return  UITableViewCell()}
        cell.configure(name: dataSource[indexPath.row])
        return cell// ?? UITableViewCell()
    }

    func didSelectRow(at indexPath: IndexPath) {
        print(dataSource[indexPath.row])
    }

    func heightForRow() -> CGFloat {
        return 80
    }
}


