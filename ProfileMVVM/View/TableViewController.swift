//
//  TableViewController.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var viewModel: TableViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()


    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.numberOfRows ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else { return UITableViewCell() }

        let profile = viewModel?.profiles[indexPath.row]

        cell.ageLabel.text = "\(profile?.age ?? 0)"
        cell.fullNameLabel.text = (profile?.name ?? "") + " " + (profile?.secondName ?? "")
        return cell
    }
}
