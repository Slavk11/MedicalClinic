//
//  ProfessionsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 28.06.2023.
//

import UIKit

final class ProfessionsViewController: UITableViewController {
    
    @IBOutlet var searchBar: UISearchBar!
    
    var hospital: [Hospital] = []
    var filteredProfession: [Hospital] = []
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        filteredProfession = hospital
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredProfession.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "professionCell", for: indexPath)
        guard let cell = cell as? ProfessionCell else { return UITableViewCell() }
        let model = filteredProfession[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let specialistsVC = segue.destination as? SpecialistsViewController else { return }
            specialistsVC.hospital = hospital[indexPath.row]
        }
    }
}

extension ProfessionsViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredProfession = searchText.isEmpty ? hospital : hospital.filter { $0.specialist.contains(searchText) }
        tableView.reloadData()
    }
    
}
