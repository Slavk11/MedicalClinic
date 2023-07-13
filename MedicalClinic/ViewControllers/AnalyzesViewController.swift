//
//  Analyzes1ViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 17.06.2023.
//

import UIKit

final class AnalyzesViewController: UITableViewController {
    
    @IBOutlet var analyzeTitle: UILabel!
    @IBOutlet var analyzePicture: UIImageView!
    
    var hospital: Hospital!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        analyzeTitle.text = hospital.analyze
        analyzePicture.image = UIImage(named: hospital.analyzesImage)
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.analyzesTests.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "analyzesCell", for: indexPath)
        guard let cell = cell as? AnalyzesCell else { return UITableViewCell() }
        let value = hospital.analyzesTests[indexPath.row]
        cell.configure(with: value)
        tableView.allowsSelection = false
        return cell
    }
}


