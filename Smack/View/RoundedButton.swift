//
//  RoundedButton.swift
//  Smack
//
//  Created by Георгий Фесенко on 08.01.2018.
//  Copyright © 2018 Georgy. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = 3.0
    }

}
