//
//  AuthVC.swift
//  breakpoint
//
//  Created by MinRiDaddy on 01/10/2018.
//  Copyright © 2018 MinRiDaddy. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
    @IBAction func facebookSignInBtnWasPressed(_ sender: Any) {
    }
    
    
    @IBAction func googleSignInBtnWasPressed(_ sender: Any) {
    }
}
