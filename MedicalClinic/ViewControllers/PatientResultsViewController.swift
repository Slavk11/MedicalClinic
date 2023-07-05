//
//  UserResultsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.07.2023.
//

import UIKit

final class PatientResultsViewController: UITableViewController {
    
    var hospital: [Hospital] = []
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath)
        guard let cell = cell as? ResultCell else { return UITableViewCell() }
        let model = hospital[indexPath.row]
        cell.configure(with: model)
        return cell
    }
}
