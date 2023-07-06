//
//  Extension + UIColor.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 06.07.2023.
//

import UIKit

extension UIColor {
    static func getColorForStatus(_ status: String) -> UIColor {
        if status == "Готов" || status == "В Норме" {
            return UIColor.blue
        } else if status == "В работе" || status == "Выше/Ниже Нормы" {
            return UIColor.red
        }
    
        return UIColor.black
    }
}
