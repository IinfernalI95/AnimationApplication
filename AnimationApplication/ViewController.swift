//
//  ViewController.swift
//  AnimationApplication
//
//  Created by Artur on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var coreAnimationView: UIView!
    
    private var originCoordinate: CGFloat?
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        originCoordinate = coreAnimationView.frame.origin.x
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func coreAnimationButtonPressed(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat]) { [weak self] in
                            guard let self = self else { return }
                            if self.coreAnimationView.frame.origin.x == self.originCoordinate {
                                //FRAME - размер елемента относительно его размера и позиции на елементе выше
                                self.coreAnimationView.frame.origin.x -= 10
                                self.coreAnimationView.frame.origin.y += 20
                            }
                            else {
                                self.coreAnimationView.frame.origin.x = self.originCoordinate ?? 0
                            }
                        }
    }
}

