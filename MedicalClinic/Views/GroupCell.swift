//
//  AnalyzesCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 11.06.2023.
//

import UIKit

final class GroupCell: UITableViewCell {
    @IBOutlet var analyzeLabel: UILabel!
    @IBOutlet var analyzePicture: UIImageView!
    
    func configure(with hospital: Hospital) {
        analyzeLabel.text = hospital.analyzesGroup
        analyzePicture.image = UIImage(named: hospital.analyzesImage)
    }

}
