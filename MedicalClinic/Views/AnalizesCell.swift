//
//  AnalizesCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 17.06.2023.
//

import UIKit

final class AnalyzesCell: UITableViewCell {
    
    @IBOutlet var analyzesLabel: UILabel!
    func configure(with value: String) {
        analyzesLabel.text = value
    }
}


