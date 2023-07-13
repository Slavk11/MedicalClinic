//
//  AnalyzesViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

import UIKit

final class AnalyzesGroupViewController: UITableViewController {
    
    @IBOutlet var searchBar: UISearchBar!
    
    var hospital: [Hospital] = []
    var filteredAnalyze: [Hospital] = []
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        filteredAnalyze = hospital
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredAnalyze.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath)
        guard let cell = cell as? GroupCell else { return UITableViewCell() }
        let model = filteredAnalyze[indexPath.row]
        cell.configure(with: model)
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let analyzesVC = segue.destination as? AnalyzesViewController else { return }
            analyzesVC.hospital = hospital[indexPath.row]
        }
    }
}

// MARK: - UISearchBarDelegate
extension AnalyzesGroupViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredAnalyze = searchText.isEmpty ? hospital : hospital.filter { $0.analyze.contains(searchText) }
        tableView.reloadData()
    }
}


