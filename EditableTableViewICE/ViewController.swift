//
//  ViewController.swift
//  EditableTableViewICE
//
//  Created by Student Account on 5/17/22.
//

import UIKit

class EditableViewController: UITableViewController {
    
    var data : AnimalsDB!
    var animals = ["Dog", "Cat", "Lizard", "Giraffe", "Wallaby", "Chinchilla"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection
                                 section: Int) -> String? {

        return "Animals"
     }
     // Create a standard footer that includes the returned text.
     override func tableView(_ tableView: UITableView, titleForFooterInSection
                                 section: Int) -> String? {
        return "End of animals list"
     }


    @IBAction func addAnimal() {
        if (animals.count > 0) {
            // add random country
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
                if( editingStyle == .delete) {
                    animals.append(data.animals[indexPath.row].name)
                    data.remove(atIndex: indexPath.row)
                    tableView.deleteRows(at: [indexPath], with: .automatic)
                }
            }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.animals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = data.animals[indexPath.row].name
        cell.detailTextLabel?.text = ""

        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier{
        case "showItem":
            if let row = tableView.indexPathForSelectedRow?.row {
                let theAssign = data.animals[row]
                            let detailViewController = segue.destination as! MyDetailView

                            detailViewController.assign = theAssign
                        }
                    default:
                        preconditionFailure("Unexpected segue")
                    }
    }

}
