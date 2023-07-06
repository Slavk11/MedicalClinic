//
//  PatientTestCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 05.07.2023.
//

import UIKit

final class PatientTestCell: UITableViewCell {
    @IBOutlet var patientTest: UILabel!
    @IBOutlet var patientTestResult: UILabel!
    @IBOutlet var testResultStatus: UILabel!
    
    func configure(with value: String, result: String, status: String) {
        patientTest.text = value
        patientTestResult.text = result
        testResultStatus.text = status
        
        let color = UIColor.getColorForStatus(status)
        patientTestResult.textColor = color
        testResultStatus.textColor = color
        
    }
}
