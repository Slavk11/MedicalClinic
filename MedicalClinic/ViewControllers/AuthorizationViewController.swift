//
//  AuthorizationViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 01.07.2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    var hospital: [Hospital] = []
    private let patient = Patient.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginTextField.text = patient.login
        passwordTextField.text = patient.password
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInButtonTapped() {
        guard loginTextField.text == patient.login, passwordTextField.text == patient.password else {
            showAlert(
                title: "Неверный логин или пароль",
                message: "Пожалуйста проверьте корректность вводимых данных",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userAccountVC = segue.destination as? UserAccountViewController else {return}
        userAccountVC.hospital = hospital
        userAccountVC.patient = patient
    }
    
}
