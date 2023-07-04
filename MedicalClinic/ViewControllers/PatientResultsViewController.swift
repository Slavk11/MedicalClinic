//
//  UserResultsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.07.2023.
//

import UIKit

final class PatientResultsViewController: UITableViewController {
    
    private let hospital = Hospital.getInfo()

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell", for: indexPath)
        guard let cell = cell as? ResultCell else { return UITableViewCell() }
        let model = hospital[indexPath.row]
        cell.configure(with: model)
        return cell
    }
}
