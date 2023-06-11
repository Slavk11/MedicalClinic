//
//  ContentCell.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 03.06.2023.
//

import UIKit

final class InfoCell: UITableViewCell {
    @IBOutlet var newsTitleLabel: UILabel!
    @IBOutlet var newsImageLabel: UIImageView!
    @IBOutlet var newsTextLabel: UILabel!

   
    func configure(with hospital: Hospital) {
        newsTitleLabel.text = hospital.newsTitle
        newsImageLabel.image = UIImage(named: hospital.newsImage)
        newsTextLabel.text = hospital.newsText
        
       
        
    }
}
