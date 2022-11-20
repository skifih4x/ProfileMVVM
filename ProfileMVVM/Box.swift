//
//  Box.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 20.11.2022.
//

import Foundation

class Box<T> {

    typealias Listener = (T) -> ()

    var listener: Listener?

    var value: T {
        didSet {
            listener?(value)
        }
    }

    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }

    init(value: T) {
        self.value = value
    }
}
