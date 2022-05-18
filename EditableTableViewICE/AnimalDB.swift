//
//  AnimalDB.swift
//  EditableTableViewICE
//
//  Created by Student Account on 5/17/22.
//

import Foundation

class AnimalsDB {

    var animals = [Animal]()

    func addAnimal(name: String) {
        let newAnimal = Animal(name: name)
        animals.append(newAnimal)
    }


    init() {
        let animal1 = Animal(name: "Dog")
        let animal2 = Animal(name: "Cat")
        let animal3 = Animal(name: "Lizard")

        animals.append(animal1)
        animals.append(animal2)
        animals.append(animal3)
    }
}
