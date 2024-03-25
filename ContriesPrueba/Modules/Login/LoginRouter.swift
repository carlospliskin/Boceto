//
//  LoginRouter.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 25/03/24.
//  
//

import Foundation
import UIKit

class LoginRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> UIViewController {

        let viewController = LoginNViewController()
        let router = LoginRouter()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter(interface: viewController, interactor: interactor, router: router)

        viewController.presenter =  presenter
        interactor.presenter = presenter
        router.view = viewController

        return viewController
    }
}

extension LoginRouter: LoginWireframeProtocol { }
