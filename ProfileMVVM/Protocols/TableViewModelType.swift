//
//  TableViewModelType.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
