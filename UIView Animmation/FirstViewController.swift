//
//  FirstViewController.swift
//  UIView Animmation
//
//  Created by Yevhenii M on 21.10.2022.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var bottomMargin: NSLayoutConstraint!
    var isAnimated = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureBottomView()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        if !isAnimated {
            UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 4, initialSpringVelocity: 5, options: [.repeat, .autoreverse]) {
                self.bottomMargin.constant += 200
                self.isAnimated = true
                self.view.layoutIfNeeded()
            }
        } else {
            self.bottomView.layer.removeAllAnimations()
            self.bottomMargin.constant = 0
            self.isAnimated = false
        }
    }
    
    func configureBottomView() {
        bottomView.layer.cornerRadius = 60
    }
}
