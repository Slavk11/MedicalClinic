//
//  PatientAppointmentsCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 09.07.2023.
//

import UIKit

final class PatientAppointmentsCell: UITableViewCell {
    @IBOutlet var doctorsProfessionLabel: UILabel!
    @IBOutlet var doctorsNameLabel: UILabel!
    @IBOutlet var doctorsImage: UIImageView!
    @IBOutlet var visitTimeLabel: UILabel!
    
    func configure(with model: Hospital) {
        doctorsProfessionLabel.text = model.specialist
        doctorsNameLabel.text = model.doctors.first
        doctorsImage.image = UIImage(named: model.doctorsPhotos.first ?? "")
        visitTimeLabel.text = model.schedule
    }
    
}
