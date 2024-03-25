//
//  loaderProtocols.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 18/03/24.
//  
//

import Foundation

//MARK: Presenter -> View
protocol loaderViewProtocol: AnyObject {
    var presenter:loaderPresenterProtocol? { get set }
}

//MARK: View -> Presenter
protocol loaderPresenterProtocol: AnyObject {
    var interactor: loaderInteeractorInputProtocol? { get set }
}

//MARK: Presenter -> Interactor
protocol loaderInteeractorInputProtocol: AnyObject {
    var presenter: loaderInteractorOutputProtocol?  { get set }
}

//MARK: Interactor -> Presenter
protocol loaderInteractorOutputProtocol: AnyObject {

}

//MARK: Presenter -> Router
protocol loaderWireframeProtocol: AnyObject { }
