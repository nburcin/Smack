//
//  CircleImage.swift
//  SmackTestChat
//
//  Created by Nicholas Burcin on 10/23/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
        
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
