//
//  SearchPresenter.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 18/03/24.
//  
//

import Foundation

class SearchPresenter {

    // MARK: Properties

    weak var view: SearchViewProtocol?
    private let router: SearchWireframeProtocol
    var interactor: SearchInteeractorInputProtocol?

    init(interface: SearchViewProtocol, interactor: SearchInteeractorInputProtocol, router: SearchWireframeProtocol) {
        view = interface
        self.interactor = interactor
        self.router = router
    }


}

extension SearchPresenter: SearchPresenterProtocol { }

extension SearchPresenter: SearchInteractorOutputProtocol { }
