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

    override func viewDidLoad() {
        super.viewDidLoad()
        professionLabel.text = hospital.specialist
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hospital.doctors.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "specialistCell", for: indexPath)
        guard let cell = cell as? SpecialistsCell else { return UITableViewCell() }
        let description = hospital.doctors[indexPath.row]
        let test = hospital.doctorsDescriptions[indexPath.row]
        let test22 = hospital.doctorsPhotos[indexPath.row]
        cell.configure(with: description, description: test, photos: test22)
        return cell
    }
}

    
   

