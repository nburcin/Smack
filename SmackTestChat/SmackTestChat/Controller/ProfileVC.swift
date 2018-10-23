//
//  ProfileVC.swift
//  SmackTestChat
//
//  Created by Nicholas Burcin on 10/23/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    // Outlets
    
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var userName: UILabel!
    
    @IBOutlet weak var userEmail: UILabel!
    
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeModalPressed(_ sender: Any) {
    }
    
    @IBAction func logoutPressed(_ sender: Any) {
    }
    
}
