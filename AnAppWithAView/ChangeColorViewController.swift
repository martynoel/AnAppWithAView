//
//  ChangeColorViewController.swift
//  AnAppWithAView
//
//  Created by Mimi Chenyao on 4/19/18.
//  Copyright © 2018 Mimi Chenyao. All rights reserved.
//

import UIKit

class ChangeColorViewController: UIViewController {
    
    // MARK: Properties
    
    unowned var changeColorView: ChangeColorView { return self.view as! ChangeColorView }
    unowned var purpleButton: UIButton { return changeColorView.purpleButton }
    unowned var greenButton: UIButton { return changeColorView.greenButton }
    unowned var yellowButton: UIButton { return changeColorView.yellowButton }
    unowned var redButton: UIButton { return changeColorView.redButton }
    unowned var resetButton: UIButton { return changeColorView.resetButton }
    
    // MARK: View Lifecycle Methods
    
    public override func loadView() {
        
        self.view = ChangeColorView()
    
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.purpleButton.addTarget(self, action: #selector(purpleButtonPressed), for: .touchUpInside)
        self.greenButton.addTarget(self, action: #selector(greenButtonPressed), for: .touchUpInside)
        self.yellowButton.addTarget(self, action: #selector(yellowButtonPressed), for: .touchUpInside)
        self.redButton.addTarget(self, action: #selector(redButtonPressed), for: .touchUpInside)
        self.resetButton.addTarget(self, action: #selector(resetButtonPressed), for: .touchUpInside)
    }

    // MARK: Selectors
    
    @objc func purpleButtonPressed() {
        
        changeColorView.backgroundColor = .purple
        purpleButton.layer.borderColor = UIColor.white.cgColor
        purpleButton.setTitleColor(.white, for: .normal)
    }
    
    @objc func greenButtonPressed() {
        
        changeColorView.backgroundColor = .green
        greenButton.layer.borderColor = UIColor.white.cgColor
        greenButton.setTitleColor(.white, for: .normal)
    }
    
    @objc func yellowButtonPressed() {
        
        changeColorView.backgroundColor = .yellow
        yellowButton.layer.borderColor = UIColor.white.cgColor
        yellowButton.setTitleColor(.white, for: .normal)
    }
    
    @objc func redButtonPressed() {
        
        changeColorView.backgroundColor = .red
        redButton.layer.borderColor = UIColor.white.cgColor
        redButton.setTitleColor(.white, for: .normal)
    }
    
    @objc func resetButtonPressed() {
        
        changeColorView.backgroundColor = .black
        
        purpleButton.layer.borderColor = UIColor.purple.cgColor
        purpleButton.setTitleColor(.purple, for: .normal)
        
        greenButton.layer.borderColor = UIColor.green.cgColor
        greenButton.setTitleColor(.green, for: .normal)
        
        yellowButton.layer.borderColor = UIColor.yellow.cgColor
        yellowButton.setTitleColor(.yellow, for: .normal)
        
        redButton.layer.borderColor = UIColor.red.cgColor
        redButton.setTitleColor(.red, for: .normal)
    }
}
