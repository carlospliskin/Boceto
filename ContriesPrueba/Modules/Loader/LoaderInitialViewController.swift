//
//  LoaderInitialViewController.swift
//  ContriesPrueba
//
//  Created by Carlos Paredes León on 19/03/24.
//

import UIKit
import Lottie

class LoaderInitialViewController: UIViewController {
    
    var presenter: loaderPresenterProtocol?
    @IBOutlet weak var animationLoader: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let animationView = LottieAnimationView(name: "Animation - 1710827793000")
        animationView.contentMode = .scaleAspectFit
        animationView.frame = self.animationLoader.bounds
        animationView.loopMode = .loop
        animationView.play()
        
        self.animationLoader.addSubview(animationView)
    }


}

extension LoaderInitialViewController: loaderViewProtocol { }
