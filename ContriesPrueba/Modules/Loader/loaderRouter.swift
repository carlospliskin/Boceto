//
//  loaderRouter.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 18/03/24.
//  
//

import Foundation
import UIKit

class loaderRouter {

    // MARK: Properties

    weak var viewController: UIViewController?

    // MARK: Static methods

    static func setupModule() -> UIViewController {

        let view = LoaderInitialViewController()
        let router = loaderRouter()
        let interactor = loaderInteractor()
        let presenter = loaderPresenter(interface: view, interactor: interactor, router: router)

        view.presenter =  presenter
        interactor.presenter = presenter
        router.viewController = view

        return view
    }
}

extension loaderRouter: loaderWireframeProtocol { }
