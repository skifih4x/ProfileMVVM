//
//  ViewModel.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import Foundation

class ViewModel: TableViewViewModelType {

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
}
