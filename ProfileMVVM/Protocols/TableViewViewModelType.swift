//
//  TableViewModelType.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?

    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(atIndexPAth indexPath: IndexPath)
}
