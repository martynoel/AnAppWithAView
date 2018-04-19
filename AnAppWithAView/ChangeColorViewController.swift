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
    
    let changeColorView = ChangeColorView()
    
    // MARK: View Lifecycle Methods
    
    public override func loadView() {
        
        self.view = changeColorView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
