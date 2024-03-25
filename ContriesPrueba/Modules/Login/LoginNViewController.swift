//
//  LoginNViewController.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 25/03/24.
//

import UIKit

class LoginNViewController: UIViewController {
    
    var presenter: LoginPresenterProtocol?
    
    @IBOutlet weak var BtnAuthGoogle: UIButton!
    @IBOutlet weak var BtnAvanzar: UIButton!
    @IBOutlet weak var checkBox: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var ImageWelcome: UIImageView!
    
    var isCheckBoxSelected = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        
        checkBox.layer.borderWidth = 1.0
        checkBox.layer.borderColor = UIColor.black.cgColor
        checkBox.layer.cornerRadius = 5.0
        
        passwordTextField.isSecureTextEntry = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(checkBoxTapped))
        checkBox.addGestureRecognizer(tapGesture)
    }
    
    // MARK: - Navigation
    
    @objc private func checkBoxTapped() {
        isCheckBoxSelected.toggle()
        updateCheckBox()
    }
    
    @IBAction func LoginButtonPress(_ sender: Any) {
        guard let email = emailTextField.text, !email.isEmpty,
              let password = passwordTextField.text, !password.isEmpty else {
            showAlert(title: "Campos requeridos",
                      message: "Por favor, complete tanto el correo electrónico como la contraseña.")
            return
        }
        if !isValidEmail(email) {
            showAlert(title: "Correo electrónico inválido",
                      message: "Por favor, ingrese un correo electrónico válido.")
            return
        }
    }
    
    private func updateCheckBox() {
        let newColor: UIColor = isCheckBoxSelected ? .green : .clear
        checkBox.backgroundColor = newColor
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
}

extension LoginNViewController: LoginViewProtocol { }

extension UIViewController {
    func showAlert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title,
                                                message: message,
                                                preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
}
