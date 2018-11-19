//
//  ViewController.swift
//  demoPresenter
//
//  Created by datnguyen on 10/14/18.
//  Copyright © 2018 datnguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction private func tappedTableViewButton(_ sender: Any) {

        let storyboard = UIStoryboard(name: "TableViewController", bundle: nil)
        
        guard let vc = storyboard.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController else { return }
        
        present(vc, animated: true, completion: nil)
    }
}
