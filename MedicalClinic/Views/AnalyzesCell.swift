//
//  AnalyzesCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 11.06.2023.
//

import UIKit

class AnalyzesCell: UITableViewCell {
    @IBOutlet var analyzeLabel: UILabel!
    @IBOutlet var analyzePicture: UIImageView!
    
    func configure(with hospital: Hospital) {
        analyzeLabel.text = hospital.analyzesTitle
        analyzePicture.image = UIImage(named: hospital.analyzesImage)
    }

}
