//
//  SplashViewController.swift
//  Cproject
//
//  Created by KMUSER on 2024/04/26.
//

import Lottie
import UIKit

class SplashViewController: UIViewController {
    @IBOutlet weak var lottieAnimationView: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        lottieAnimationView.play { _ in
            let storyboard = UIStoryboard(name: "Home", bundle: nil)
            let viewController = storyboard.instantiateInitialViewController()
            
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let window = windowScene.windows.first(where: { $0.isKeyWindow }) {
                window.rootViewController = viewController
            }
        }
    }
}
