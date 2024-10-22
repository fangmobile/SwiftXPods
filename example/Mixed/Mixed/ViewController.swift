//
//  ViewController.swift
//  Mixed
//
//  Created by Jian Fang on 10/22/24.
//

import Eureka
import ViewRow
import ImageRow

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        form
            +++ Section("ViewRow Demo")
                <<< LabelRow() { (row) in
                                    row.title = "A Row"
                                    row.value = "Hello World"
                                }
                <<< ImageRow() { row in
                                    row.title = "Image Row 1"
                                    row.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum]
                                    row.clearAction = .yes(style: UIAlertAction.Style.destructive)
                                }
    }
}

