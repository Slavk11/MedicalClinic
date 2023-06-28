//
//  SpecialistsViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 04.06.2023.
//

import UIKit

final class SpecialistsViewController: UITableViewController {
    @IBOutlet var professionLabel: UILabel!
    @IBOutlet var professionImage: UIImageView!
    
    var hospital: Hospital!

    override func viewDidLoad() {
        super.viewDidLoad()
        professionLabel.text = hospital.professions
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "specialistCell", for: indexPath)
       
        var content = cell.defaultContentConfiguration()
        return cell
    }
}
