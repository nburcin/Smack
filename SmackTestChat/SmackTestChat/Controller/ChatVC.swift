//
//  ChatVC.swift
//  SmackTestChat
//
//  Created by Nicholas Burcin on 10/17/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    // Outlets
    
    @IBOutlet weak var menuBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(animated:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail { (success) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            }
        }
        MessageService.instance.findAllChannel { (success) in
        }
    }
    

}
