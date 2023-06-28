//
//  ProfessionsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 28.06.2023.
//

import UIKit

final class ProfessionsViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "professionCell", for: indexPath)
       
        var content = cell.defaultContentConfiguration()
        return cell
    }
}
