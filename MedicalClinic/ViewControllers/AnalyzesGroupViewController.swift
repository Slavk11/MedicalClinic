//
//  AnalyzesViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

import UIKit

final class AnalyzesGroupViewController: UITableViewController {
    var hospital: [Hospital] = []
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath)
        guard let cell = cell as? GroupCell else { return UITableViewCell() }
        let model = hospital[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let analyzesVC = segue.destination as? AnalyzesViewController else { return }
            analyzesVC.hospital = hospital[indexPath.row]
        }
    }
}


