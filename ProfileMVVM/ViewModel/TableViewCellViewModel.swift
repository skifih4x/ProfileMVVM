//
//  TableViewCellViewModel.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {

    private var profile: Profile

    var fullName: String {
        profile.name + " " + profile.secondName
    }

    var age: String {
        String(describing: profile.age)
    }

    init(profile: Profile) {
        self.profile = profile
    }
}
