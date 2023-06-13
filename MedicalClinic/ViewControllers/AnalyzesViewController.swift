//
//  AnalyzesViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

import UIKit

class AnalyzesViewController: UITableViewController {
    let hospital = Hospital.getInfo()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "analysisCell", for: indexPath)
        guard let cell = cell as? AnalyzesCell else { return UITableViewCell() }
        let model = hospital[indexPath.row]
        cell.configure(with: model)
        return cell
        
    }

}
