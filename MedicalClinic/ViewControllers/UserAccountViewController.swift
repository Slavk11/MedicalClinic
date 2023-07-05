//
//  UserAccountViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 05.07.2023.
//

import UIKit

final class UserAccountViewController: UIViewController {
    var hospital: [Hospital] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let patientResultsVC = segue.destination as? PatientResultsViewController else {return}
        patientResultsVC.hospital = hospital
    }
}
