//
//  CreateAccountVC.swift
//  SmackTestChat
//
//  Created by Nicholas Burcin on 10/18/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    // Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else { return }
        guard let password = passTxt.text , passTxt.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("Registered User!")
            }
        }
    }
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
