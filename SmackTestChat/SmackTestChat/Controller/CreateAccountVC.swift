//
//  CreateAccountVC.swift
//  SmackTestChat
//
//  Created by Nicholas Burcin on 10/18/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
