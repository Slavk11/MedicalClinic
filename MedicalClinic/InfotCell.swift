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

   
    func configure(with character: Hospital) {
        newsTitleLabel.text = character.newsTitle
        newsImageLabel.image = UIImage(named: character.newsImage)
        newsTextLabel.text = character.newsText
        
       
        
    }
}
