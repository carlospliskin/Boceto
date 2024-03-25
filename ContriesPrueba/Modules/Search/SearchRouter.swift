//
//  SearchRouter.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 18/03/24.
//  
//

import Foundation
import UIKit

class SearchRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> UIViewController {

        let viewController = SearchViewController()
        let router = SearchRouter()
        let interactor = SearchInteractor()
        let presenter = SearchPresenter(interface: viewController, interactor: interactor, router: router)

        viewController.presenter =  presenter
        interactor.presenter = presenter
        router.view = viewController

        return viewController
    }
}

extension SearchRouter: SearchWireframeProtocol { }
