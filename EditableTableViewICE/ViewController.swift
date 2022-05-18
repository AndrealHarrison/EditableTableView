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
    
    
    var data : Animal!
       var animals = ["Billy", "Leo", "Lucy"]

       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }

       @IBAction func addAnimal() {
           if (animals.count > 0) {
               let randomIndex = Int(arc4random_uniform(UInt32(animals.count)))
               data.addAnimal(name: animals[randomIndex])
               //update tableview row
               let indexPath = IndexPath(row: data.animals.count-1, section: 0)
               tableView.insertRows(at:[indexPath], with: .automatic)

               //remove random country from country array
               animals.remove(at: randomIndex)


           }
       }
       @IBAction func EditToggle(_ sender: UIButton) {
           if isEditing {
               setEditing(false, animated: true)
               sender.setTitle("Edit", for: .normal)
           }
           else {
               setEditing(true, animated: true)
               sender.setTitle("Done", for: .normal)
           }
       }

       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return data.animalName.count
       }

       override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = data.animals[indexPath.row].animals
           cell.detailTextLabel?.text = ""

           return cell
       }


   }



