//
//  LoginProtocols.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 25/03/24.
//  
//

import Foundation

//MARK: Presenter -> View
protocol LoginViewProtocol: AnyObject {
    var presenter:LoginPresenterProtocol? { get set }
}

//MARK: View -> Presenter
protocol LoginPresenterProtocol: AnyObject {
    var interactor: LoginInteeractorInputProtocol? { get set }
}

//MARK: Presenter -> Interactor
protocol LoginInteeractorInputProtocol: AnyObject {
    var presenter: LoginInteractorOutputProtocol?  { get set }
}

//MARK: Interactor -> Presenter
protocol LoginInteractorOutputProtocol: AnyObject {

}

//MARK: Presenter -> Router
protocol LoginWireframeProtocol: AnyObject { }
