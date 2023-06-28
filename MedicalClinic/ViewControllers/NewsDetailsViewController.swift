//
//  NewsDetailsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 10.06.2023.
//

import UIKit

final class NewsDetailsViewController: UIViewController {
    @IBOutlet var newsTitleLabel: UILabel!
    @IBOutlet var newsImage: UIImageView!
    @IBOutlet var newsTextLabel: UILabel!
    
    var hospital: Hospital!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTitleLabel.text = hospital.newsTitle
        newsImage.image = UIImage(named: hospital.newsImage)
        newsTextLabel.text = hospital.newsText
    }
}
