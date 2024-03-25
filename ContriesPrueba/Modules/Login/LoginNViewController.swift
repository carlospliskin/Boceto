//
//  LoginNViewController.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 25/03/24.
//

import UIKit

class LoginNViewController: UIViewController {
    
    var presenter: LoginPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginNViewController: LoginViewProtocol { }
