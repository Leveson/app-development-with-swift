//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Tshaka Lekholoane on 17/06/2019.
//  Copyright © 2019 Tshaka Lekholoane. All rights reserved.
//

import UIKit

protocol ToDoCellDelegate: class {
    func chechmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    
    weak var delegate: ToDoCellDelegate?
    
    @IBOutlet var isCompleteButton: UIButton!
    @IBOutlet var titleLabel: UILabel!

    @IBAction func completeButtonTapped(_ sender: Any) {
        delegate?.chechmarkTapped(sender: self)
    }
}
