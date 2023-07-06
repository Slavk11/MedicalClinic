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
        guard let patientResultsVC = segue.destination as? PatientResultsViewController else {return}
        patientResultsVC.hospital = hospital
    }
}
