//
//  TableViewController.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var profiles: [Profile]!

    override func viewDidLoad() {
        super.viewDidLoad()

        profiles = [
            Profile(name: "Artem", secondName: "Orlov", age: 30),
            Profile(name: "Maxim", secondName: "Demid", age: 31),
            Profile(name: "Alex", secondName: "Lex", age: 34)
        ]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        profiles?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else { return UITableViewCell() }

        let profile = profiles[indexPath.row]
        cell.ageLabel.text = "\(String(describing: profile.age))"
        cell.fullNameLabel.text = (profile.name) + " " + (profile.secondName)
        return cell
    }
}
