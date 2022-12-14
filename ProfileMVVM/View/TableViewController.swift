//
//  TableViewController.swift
//  ProfileMVVM
//
//  Created by Артем Орлов on 18.11.2022.
//

import UIKit

class TableViewController: UITableViewController {

    var viewModel: TableViewViewModelType?

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ViewModel()


    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.numberOfRows() ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell else { return UITableViewCell() }

        let cellViewModel = viewModel?.cellViewModel(forIndexPath: indexPath)
        cell.viewModel = cellViewModel
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }
        viewModel.selectRow(atIndexPAth: indexPath)

        performSegue(withIdentifier: "detailSegue", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier, let viewModel = viewModel else { return }

        if identifier == "detailSegue" {
            if let dvc = segue.destination as? DetailViewController {
                dvc.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }
}
