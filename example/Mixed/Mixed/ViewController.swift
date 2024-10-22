//
//  ViewController.swift
//  Mixed
//
//  Created by Jian Fang on 10/22/24.
//

import Eureka
import ViewRow

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        form
            +++ Section("ViewRow Demo")
                <<< ViewRow<UIView>("view") { (row) in
                    row.title = "My View Title" // optional
                }
                .cellSetup { (cell, row) in
                    //  Construct the view for the cell
                    cell.view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 200))
                    cell.view?.backgroundColor = UIColor.orange
                }
    }


}

