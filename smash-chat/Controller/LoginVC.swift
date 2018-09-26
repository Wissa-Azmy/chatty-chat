//
//  LoginVC.swift
//  smash-chat
//
//  Created by Admin on 9/23/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func signUpPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREAT_ACCOUNT, sender: nil)
    }
    
}
