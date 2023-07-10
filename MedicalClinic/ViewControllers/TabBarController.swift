//
//  TabBarController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 05.07.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private let hospital = Hospital.getInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach {
            if let newsVc = $0 as? NewsViewController {
                newsVc.hospital = hospital
            } else if let analyzesGroupVC = $0 as? AnalyzesGroupViewController {
                analyzesGroupVC.hospital = hospital
            } else if let professionsVC = $0 as? ProfessionsViewController {
                professionsVC.hospital = hospital
            } else if let authVC = $0 as? AuthorizationViewController {
                authVC.hospital = hospital
                authVC.account = hospital.first
            }
        }
    }
    
}
