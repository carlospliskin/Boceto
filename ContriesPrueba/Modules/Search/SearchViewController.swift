//
//  SearchViewController.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 18/03/24.
//  
//

import Foundation
import UIKit

class SearchViewController: UIViewController {

    // MARK: Properties

    var presenter: SearchPresenterProtocol?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SearchViewController: SearchViewProtocol { }
