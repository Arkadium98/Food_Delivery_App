//
//  ViewController.swift
//  Proyecto_final
//
//  Created by Andrea Hinojosa on 16/03/21.
//  Copyright © 2021 Andrea Hinojosa. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    
    
    let animationView = AnimationView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAnimation()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 8) {
            self.segue()
        }
        
        perform(#selector(authenticate), with: nil, afterDelay: 1)


    }
    
    @objc func authenticate() {
        
    }
    
    private func segue() {
        performSegue(withIdentifier: "login", sender: self)
    }
    
    private func setupAnimation(){
        
        animationView.animation = Animation.named("pollo")
        animationView.frame = view.bounds
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        
        animationView.play()
        view.addSubview(animationView)
        
    }

}

