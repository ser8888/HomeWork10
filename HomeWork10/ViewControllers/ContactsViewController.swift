//
//  ContactsTableViewController.swift
//  HomeWork10
//
//  Created by John Doe on 20/07/2022.
//
import UIKit

class ContactsViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
    
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let destination = segue.destination as! ShortInfoViewController
            destination.person = persons[indexPath.row]
       
        }
    
}
}
