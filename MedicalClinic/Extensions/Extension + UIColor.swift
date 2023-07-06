//
//  Extension + UIColor.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 06.07.2023.
//

import UIKit

extension UIColor {
    static func getColorForStatus(_ status: String) -> UIColor {
        if status == "Готов" || status == "Отрицательный" || status == "Норма" {
            return UIColor.blue
        } else if status == "В работе" || status == "Положительный" {
            return UIColor.red
        }
    
        return UIColor.purple
    }
}
