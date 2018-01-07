//
//  ChannelVC.swift
//  Smack
//
//  Created by Георгий Фесенко on 07.01.2018.
//  Copyright © 2018 Georgy. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }


}
