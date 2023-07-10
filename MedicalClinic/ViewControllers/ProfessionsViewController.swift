//
//  ProfessionsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 28.06.2023.
//

import UIKit

final class ProfessionsViewController: UITableViewController {
    var hospital: [Hospital] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "professionCell", for: indexPath)
        guard let cell = cell as? ProfessionCell else { return UITableViewCell() }
        let model = hospital[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let specialistsVC = segue.destination as? SpecialistsViewController else { return }
            specialistsVC.hospital = hospital[indexPath.row]
        }
    }
}
