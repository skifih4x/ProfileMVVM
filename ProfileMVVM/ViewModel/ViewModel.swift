//
//  ViewModel.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import Foundation

class ViewModel: TableViewViewModelType {

    private var selectedIndexPath: IndexPath?

    var profiles = [
        Profile(name: "Artem", secondName: "Orlov", age: 30),
        Profile(name: "Maxim", secondName: "Demid", age: 31),
        Profile(name: "Alex", secondName: "Lex", age: 34)
    ]

    func numberOfRows() -> Int {
        profiles.count
    }

    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }

    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return  DetailViewModel(profile: profiles[selectedIndexPath.row])
    }

    func selectRow(atIndexPAth indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
