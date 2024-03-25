//
//  loaderPresenter.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 18/03/24.
//  
//

import Foundation

class loaderPresenter {

    // MARK: Properties

    weak var view: loaderViewProtocol?
    private let router: loaderWireframeProtocol
    var interactor: loaderInteeractorInputProtocol?

    init(interface: loaderViewProtocol, interactor: loaderInteeractorInputProtocol, router: loaderWireframeProtocol) {
        view = interface
        self.interactor = interactor
        self.router = router
    }


}

extension loaderPresenter: loaderPresenterProtocol { }

extension loaderPresenter: loaderInteractorOutputProtocol { }
