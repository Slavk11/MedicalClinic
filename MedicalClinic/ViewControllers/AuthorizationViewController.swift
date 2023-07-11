//
//  AuthorizationViewController.swift
//  MedicalClinic
//
//  Created by Сазонов Станислав on 01.07.2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Properties
    var account: Hospital!
    var hospital: [Hospital] = []
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTextField.text = account.patient.login
        passwordTextField.text = account.patient.password
    }
    
    // MARK: - Touch Handling
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func logInButtonTapped() {
        guard loginTextField.text == account.patient.login, passwordTextField.text == account.patient.password else {
            showAlert(
                title: "Неверный логин или пароль",
                message: "Пожалуйста проверьте корректность вводимых данных",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    // MARK: - Private Methods
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userAccountVC = segue.destination as? UserAccountViewController else {return}
        userAccountVC.hospital = hospital
        userAccountVC.account = account
    }
    
}
