//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Георгий Фесенко on 08.01.2018.
//  Copyright © 2018 Georgy. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
