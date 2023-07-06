//
//  ResultCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.07.2023.
//

import UIKit

final class ResultCell: UITableViewCell {
    @IBOutlet var testLabel: UILabel!
    @IBOutlet var testStatus: UILabel!
    
    func configure(with model: Hospital) {
        testLabel.text = model.analyze
        testStatus.text = model.executionStatus
        
        let statusColor = UIColor.getColorForStatus(model.executionStatus)
        testStatus.textColor = statusColor
    }
    
}
