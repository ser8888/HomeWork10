//
//  TabBarViewController.swift
//  HomeWork10
//
//  Created by John Doe on 20/07/2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContacts()

    override func viewDidLoad() {
        super.viewDidLoad()

        let contactsVC = viewControllers?.first as! ContactsViewController
        let detailsVC = viewControllers?.last as! DetailsViewController

        contactsVC.persons = persons
        detailsVC.persons = persons
    }
}
