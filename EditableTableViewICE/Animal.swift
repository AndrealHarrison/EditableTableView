//
//  Animal.swift
//  EditableTableViewICE
//
//  Created by Student Account on 5/17/22.
//

import Foundation


class Animal {
    var name: String!
    public var points: Int

    init(name: String) {
        self.name = name
        self.points = Int.random(in: 1...99)
    }
}
