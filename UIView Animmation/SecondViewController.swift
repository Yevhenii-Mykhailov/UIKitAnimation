//
//  SecondViewController.swift
//  UIView Animmation
//
//  Created by Yevhenii M on 21.10.2022.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var topView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureTopView()
    }
    
    
    
    @IBAction func runButtonPressed(_ sender: Any) {
        let start = topView.center
        
        UIView.animateKeyframes(withDuration: 5, delay: 0, options: .calculationModeCubic, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.topView.alpha = 1
            }

            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.25) {
                self.topView.center = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.maxY)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                self.topView.center = CGPoint(x: self.view.bounds.width, y: start.y)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.topView.alpha = 0
                self.topView.center = start
            }
        })
    }
    
    func configureTopView() {
        topView.layer.cornerRadius = 40
    }
}
