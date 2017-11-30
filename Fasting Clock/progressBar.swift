//
//  progressBar.swift
//  Fasting Clock
//
//  Created by Drake Sandacz on 11/27/17.
//  Copyright © 2017 Drake Sandacz. All rights reserved.
//
import UIKit

 extension UIProgressView {
    
    func animate(duration: Double) {
        
        setProgress(0.01, animated: true)
        
        UIView.animate(withDuration: duration, delay: 0.0, options: .curveLinear, animations: {
            self.setProgress(1.0, animated: true)
        }, completion: nil)
        progressBar.animate(duration: 10)

    }
}


// Animate your actual progress bar like this (10 second countdown):

