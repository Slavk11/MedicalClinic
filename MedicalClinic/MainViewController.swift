//
//  ViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 03.06.2023.
//

import UIKit

final class MainViewController: UITableViewController {
    let model = Hospital.getInfo()

    // MARK: - Table view data source
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "infoCell", for: indexPath)
        guard let cell = cell as? InfoCell else { return UITableViewCell() }
        let model = model[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? NewsDetailsViewController else { return }
            detailVC.model = model[indexPath.row]
        }
    }


}

