//
//  Analyzes1ViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 17.06.2023.
//

import UIKit

final class Analyzes1ViewController: UITableViewController {
    var model: Hospital!
    let hospital = Hospital.getInfo()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "analyzesCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = model.analyzesTest.description
        guard let cell = cell as? AnalyzesCell else { return UITableViewCell() }
        cell.configure(with: model)
        
        return cell
    }

}


