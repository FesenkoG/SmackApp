//
//  CircleImage.swift
//  Smack
//
//  Created by Георгий Фесенко on 11.01.2018.
//  Copyright © 2018 Georgy. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
        
    }
    
    func setUpView() {
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        setUpView()
    }

}
