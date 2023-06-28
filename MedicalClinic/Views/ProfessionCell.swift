//
//  ProfessionCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 28.06.2023.
//

import UIKit

final class ProfessionCell: UITableViewCell {
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var professionImage: UIImageView!
    
    func configure(with model: Hospital) {
        professionLabel.text = model.professions
        professionImage.image = UIImage(named: model.doctorsIcons)
    }
}
