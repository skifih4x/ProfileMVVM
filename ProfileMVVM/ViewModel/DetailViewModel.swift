//
//  DetailViewModel.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    var age: Box<String?> = Box(value: nil)


    private var profile: Profile

    var description: String {
        String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old!")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
