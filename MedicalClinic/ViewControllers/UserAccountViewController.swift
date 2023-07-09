//
//  UserAccountViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 05.07.2023.
//

import UIKit

final class UserAccountViewController: UIViewController {
    @IBOutlet var welcomeLabel: UILabel!
    
    var patient: Patient!
    var hospital: [Hospital] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Добро пожаловать \(patient.login)!"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let patientResultsVC = segue.destination as? PatientResultsViewController {
            patientResultsVC.hospital = hospital
        } else if let patientAppointmentVC = segue.destination as? PatientAppointmentsViewController {
            patientAppointmentVC.hospital = hospital
        } else { return }
    }
}
