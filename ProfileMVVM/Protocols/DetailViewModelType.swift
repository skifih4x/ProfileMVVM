//
//  DetailViewModelType.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import Foundation

protocol DetailViewModelType {
    var description: String { get }
    var age: Box<String?> { get }
}
