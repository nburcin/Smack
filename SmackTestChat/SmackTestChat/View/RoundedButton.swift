//
//  RoundedButton.swift
//  SmackTestChat
//
//  Created by Nicholas Burcin on 10/19/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    override func awakeFromNib() {
        self.setupView()
    }

    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
        
    }
}
