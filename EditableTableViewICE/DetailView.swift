//
//  DetailView.swift
//  EditableTableViewICE
//
//  Created by Student Account on 6/2/22.
//
import UIKit

class MyDetailView: UIViewController {
    
    @IBOutlet weak var points: UITextField!
    @IBOutlet weak var name: UITextField!
    
    var assign: Animal!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        name.text = assign.name
        points.text = "\(assign.points)" // note the need to convert this to a string
    }
}


