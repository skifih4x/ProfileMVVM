//
//  TableViewCell.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var fullNameLabel: UILabel!

    @IBOutlet weak var ageLabel: UILabel!

    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
    //    @IBOutlet weak var fullNameLabel: UILabel!
//    @IBOutlet weak var ageLabel: UILabel!
}
