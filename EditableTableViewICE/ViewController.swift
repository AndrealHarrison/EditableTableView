//
//  ViewController.swift
//  EditableTableViewICE
//
//  Created by Student Account on 5/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    var ds:DataStore! = DataStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

class EditableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

class Animal {
    var animalName: String
    var color: String
    var type: String

    init(animalName: String, color:String, type: String) {
        self.animalName = animalName
        self.color = color
        self.type = type
    
    }

    convenience init() {
        self.init(animalName:"[Unnamed]", color:"[blank]", type: <#String#>)
    }
}

class DataStore {
    
    var persons:[Animal]
    init() {
        let animal1 = Animal(animalName: "Billy", color:"red and white", type:"dog")
        let animal2 = Animal(animalName: "Leo", color:"grey and white", type:"cat")
        let animal3 = Animal(animalName: "Lucy", color:"black", type:"cat")
    persons = [animal1, animal2, animal3]
    }

}

class newCustomCell: UITableViewCell {

}


