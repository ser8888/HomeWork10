//
//  ShortInfoViewController.swift
//  HomeWork10
//
//  Created by John Doe on 20/07/2022.
//

import UIKit

class ShortInfoViewController: UIViewController {
    
    @IBOutlet var telLable: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = person.fullName
        telLable.text = "Phone: \(person.telNumber)"
        emailLabel.text = "Email: \(person.email)"
       
    }
}
