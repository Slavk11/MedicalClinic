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
  
    func configure(with doctorName: String, description: String, photos: String) {
        doctorsName.text = doctorName
        doctorsDescription.text = description
        doctorsPhoto.image =  UIImage(named: photos)
    }
    
    
}
