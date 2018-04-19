//
//  ChangeColorView.swift
//  AnAppWithAView
//
//  Created by Mimi Chenyao on 4/19/18.
//  Copyright © 2018 Mimi Chenyao. All rights reserved.
//

import UIKit

public class ChangeColorView: UIView {
    
    // MARK: Subviews
    
    let purpleButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.backgroundColor = .clear
        
        button.setTitle("Purple Background", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        button.layer.borderColor = UIColor.purple.cgColor
        button.layer.borderWidth = 4.0
        button.layer.cornerRadius = 7
        button.layer.masksToBounds = true
        
        return button
    }()
    
    let greenButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.backgroundColor = .clear
        
        button.setTitle("Green Background", for: .normal)
        button.setTitleColor(.green, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        button.layer.borderColor = UIColor.green.cgColor
        button.layer.borderWidth = 4.0
        button.layer.cornerRadius = 7
        button.layer.masksToBounds = true
        
        return button
    }()
    
    let yellowButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.backgroundColor = .clear
        
        button.setTitle("Yellow Background", for: .normal)
        button.setTitleColor(.yellow, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        button.layer.borderColor = UIColor.yellow.cgColor
        button.layer.borderWidth = 4.0
        button.layer.cornerRadius = 7
        button.layer.masksToBounds = true
        
        return button
    }()
    
    let redButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.backgroundColor = .clear
        
        button.setTitle("Red Background", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        button.layer.borderColor = UIColor.red.cgColor
        button.layer.borderWidth = 4.0
        button.layer.cornerRadius = 7
        button.layer.masksToBounds = true
        
        return button
    }()
    
    let resetButton: UIButton = {
        
        let button = UIButton(type: .system)
        
        button.backgroundColor = .clear
        
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(.cyan, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        
        button.layer.borderColor = UIColor.cyan.cgColor
        button.layer.borderWidth = 4.0
        button.layer.cornerRadius = 7
        button.layer.masksToBounds = true
        
        return button
    }()
    
    let buttonStackView: UIStackView = {
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 10.0
        
        return stackView
    }()
    
    // MARK: Initialization
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        self.backgroundColor = .black
        
        self.addSubview(buttonStackView)
        
        setUpButtonStackViewConstraints()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Setup subview constraints
    
    func setUpButtonStackViewConstraints() {
        
        buttonStackView.addArrangedSubview(purpleButton)
        buttonStackView.addArrangedSubview(greenButton)
        buttonStackView.addArrangedSubview(yellowButton)
        buttonStackView.addArrangedSubview(redButton)
        buttonStackView.addArrangedSubview(resetButton)
        
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        buttonStackView.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor).isActive = true
        buttonStackView.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor).isActive = true
        buttonStackView.widthAnchor.constraint(equalTo: self.safeAreaLayoutGuide.widthAnchor, constant: -80).isActive = true
        buttonStackView.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor, constant: -100).isActive = true
    }
}
