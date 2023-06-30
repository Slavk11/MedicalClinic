//
//  SpecialistsCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

import UIKit

final class SpecialistsCell: UITableViewCell {
    @IBOutlet var doctorsName: UILabel!
    @IBOutlet var doctorsPhoto: UIImageView!
    @IBOutlet var doctorsDescription: UILabel!
    
    func configure(with value: String) {
        doctorsName.text = value
    }

}
