//
//  AnalyzesViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 17.06.2023.
//

import UIKit

final class AnalyzesViewController: UIViewController {
    @IBOutlet var groupNameLabel: UILabel!
    @IBOutlet var analyzesImage: UIImageView!
    @IBOutlet var analyzesLabel: UILabel!
    @IBOutlet var analyzesPrice: UILabel!
    
    
    var model: Hospital!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        groupNameLabel.text = model.analyzesGroup
        analyzesImage.image = UIImage(named: model.analyzesImage)
        analyzesLabel.text = model.analyzesTest
    }

}
