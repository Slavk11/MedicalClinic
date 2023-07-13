//
//  SpecialistsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

import UIKit

final class SpecialistsViewController: UITableViewController {
    
    @IBOutlet var professionLabel: UILabel!
    var hospital: Hospital!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        professionLabel.text = hospital.specialist
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.doctors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "specialistCell", for: indexPath)
        guard let cell = cell as? SpecialistsCell else { return UITableViewCell() }
        let specialist = hospital.doctors[indexPath.row]
        let description = hospital.doctorsDescriptions[indexPath.row]
        let image = hospital.doctorsPhotos[indexPath.row]
        cell.configure(with: specialist, description: description, photos: image)
        tableView.allowsSelection = false
        return cell
    }
}

    
   

