//
//  UserLoginVC.swift
//  Junior Design Project
//
//  Created by Shafiqul  Islam on 7/16/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit
import Firebase

class UserLoginVC: UIViewController {

    //outlets
    
    @IBOutlet weak var emailTxt: greyBackgroundForTextField!
    @IBOutlet weak var passwordTxt: greyBackgroundForTextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var createUserBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginBtnTapped(_ sender: Any) {
        guard let email = emailTxt.text,
            let password = passwordTxt.text else {return}
        Auth.auth().signIn(withEmail: email , password: password) { (user, error) in
            if let error = error{
                debugPrint("Error Signing in: \(error)")
            } else {
                self.dismiss(animated: true, completion: nil)
            }
        }

    }
    @IBAction func createUserTapped(_ sender: Any) {
    }
    

}
