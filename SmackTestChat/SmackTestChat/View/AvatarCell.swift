//
//  AvatarCell.swift
//  SmackTestChat
//
//  Created by Nicholas Burcin on 10/19/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    @IBOutlet weak var avatarImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
    }
}
