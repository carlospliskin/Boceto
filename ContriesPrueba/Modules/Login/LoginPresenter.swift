//
//  LoginPresenter.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 25/03/24.
//  
//

import Foundation

class LoginPresenter {

    // MARK: Properties

    weak var view: LoginViewProtocol?
    private let router: LoginWireframeProtocol
    var interactor: LoginInteeractorInputProtocol?

    init(interface: LoginViewProtocol, interactor: LoginInteeractorInputProtocol, router: LoginWireframeProtocol) {
        view = interface
        self.interactor = interactor
        self.router = router
    }


}

extension LoginPresenter: LoginPresenterProtocol { }

extension LoginPresenter: LoginInteractorOutputProtocol { }
