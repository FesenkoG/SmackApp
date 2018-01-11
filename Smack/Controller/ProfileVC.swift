//
//  ProfileVC.swift
//  Smack
//
//  Created by Георгий Фесенко on 11.01.2018.
//  Copyright © 2018 Georgy. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    //Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var bgView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }

    @IBAction func logoutPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGED, object: nil)
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        profileImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        userEmail.text = UserDataService.instance.email
        userName.text = UserDataService.instance.name
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

}
