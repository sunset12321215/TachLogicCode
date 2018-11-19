//
//  TableViewCell.swift
//  TachLogicCode
//
//  Created by mac on 11/19/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lable_name: UILabel!
    
    func configure(name: String) {
        lable_name.text = name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
}
