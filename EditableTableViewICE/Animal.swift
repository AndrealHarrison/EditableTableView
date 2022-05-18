//
//  Animal.swift
//  EditableTableViewICE
//
//  Created by Student Account on 5/17/22.
//

import Foundation


class Animal {
    var animalName: String
   
    init(animalName: String) {
        self.animalName = animalName
    }

    convenience init() {
        self.init(animalName:"[Unnamed]")
    }
}

class DataStore {
    func addAnimal(animalName: String) {
        let newAnimal = Animal(animalName: animalName)
        animals.append(newAnimal)
        }
    
    
    var animals:[Animal]
    init() {
        let animal1 = Animal(animalName: "Billy")
        let animal2 = Animal(animalName: "Leo")
        let animal3 = Animal(animalName: "Lucy")
    animals = [animal1, animal2, animal3]
    }

}
