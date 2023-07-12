//
//  PatientAppointmentViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 09.07.2023.
//

import UIKit

final class PatientAppointmentsViewController: UITableViewController {
    var hospital: [Hospital] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "appointmentsCell", for: indexPath)
        guard let cell = cell as? PatientAppointmentsCell else { return UITableViewCell ()}
        let model = hospital[indexPath.row]
        cell.configure(with: model)
        tableView.allowsSelection = false
        return cell
    }
    
}
