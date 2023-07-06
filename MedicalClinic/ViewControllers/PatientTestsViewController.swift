//
//  PatientTestsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 05.07.2023.
//

import UIKit

final class PatientTestsViewController: UITableViewController {
    var hospitals: [Hospital] = []
    var hospital: Hospital!
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.doctors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "patientTestCell", for: indexPath)
        guard let cell = cell as? PatientTestCell else { return UITableViewCell() }
        let value = hospital.analyzesTests[indexPath.row]
        let result = hospitals[indexPath.row]
        cell.configure(with: value, result: result)
        return cell
    }
}
