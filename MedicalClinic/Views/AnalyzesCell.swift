//
//  AnalyzesCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 17.06.2023.
//


import UIKit

class AnalyzesCell: UITableViewCell {

    @IBOutlet var analyzesName: UILabel!
    var model: Hospital!
    func configure(with hospital: Hospital) {
        analyzesName.text = hospital.analyzesTest
    }

}
