//
//  ViewController.swift
//  TestExtensionApp
//
//  Created by Aleksander Pniok on 18/05/2015.
//  Copyright (c) 2015 Inviqa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var testService: TestService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.testService.printName()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

