//
//  ViewController.swift
//  MenuBug
//
//  Created by Ayham Hylam on 20/11/2017.
//  Copyright © 2017 Jasmin. All rights reserved.
//

import UIKit
import Material

class MainViewController: UIViewController {

    @IBAction func openMenu(_ sender: Any) {
        
        navigationDrawerController?.toggleLeftView()
    }
}

