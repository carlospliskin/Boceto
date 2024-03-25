//
//  SearchProtocols.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 18/03/24.
//  
//

import Foundation

//MARK: Presenter -> View
protocol SearchViewProtocol: AnyObject {
    var presenter:SearchPresenterProtocol? { get set }
}

//MARK: View -> Presenter
protocol SearchPresenterProtocol: AnyObject {
    var interactor: SearchInteeractorInputProtocol? { get set }
}

//MARK: Presenter -> Interactor
protocol SearchInteeractorInputProtocol: AnyObject {
    var presenter: SearchInteractorOutputProtocol?  { get set }
}

//MARK: Interactor -> Presenter
protocol SearchInteractorOutputProtocol: AnyObject {

}

//MARK: Presenter -> Router
protocol SearchWireframeProtocol: AnyObject { }
