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
    
    func configure(with value: String, result: Hospital) {
        patientTest.text = value
        patientTestResult.text = result.analyzesResult
        testResultStatus.text = result.analyzesResultStatus
        
        let color = UIColor.getColorForStatus(result.analyzesResultStatus)
        patientTestResult.textColor = color
        testResultStatus.textColor = color
        
    }
}
