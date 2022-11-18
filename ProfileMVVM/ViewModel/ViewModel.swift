//
//  ViewModel.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import Foundation

class ViewModel: TableViewModelType {

    var profiles = [
        Profile(name: "Artem", secondName: "Orlov", age: 30),
        Profile(name: "Maxim", secondName: "Demid", age: 31),
        Profile(name: "Alex", secondName: "Lex", age: 34)
    ]

    var numberOfRows: Int {
        profiles.count
    }
}
