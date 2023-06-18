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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        analyzeTitle.text = model.analyzesGroup
        analyzePicture.image = UIImage(named: model.analyzesImage)
    }
    
    var model: Hospital!

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        model.analyzesTest.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "analyzesCell", for: indexPath)
        guard let cell = cell as? AnalyzesCell else { return UITableViewCell() }
        let value = model.analyzesTest[indexPath.row]
        cell.configure(with: value)
        return cell
    }
}


