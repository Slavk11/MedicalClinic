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
    
    var model: Hospital!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTitleLabel.text = model.newsTitle
        newsImage.image = UIImage(named: model.newsImage)
        newsTextLabel.text = model.newsText
    }

}
