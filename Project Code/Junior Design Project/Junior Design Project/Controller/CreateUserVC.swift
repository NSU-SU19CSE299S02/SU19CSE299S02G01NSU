//
//  CreateUserVC.swift
//  Junior Design Project
//
//  Created by Shafiqul  Islam on 8/26/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit
import Firebase

class CreateUserVC: UIViewController {

    //Outlests
    
    @IBOutlet weak var emailTxt: greyBackgroundForTextField!
    
    @IBOutlet weak var passwordTxt: greyBackgroundForTextField!
    
    @IBOutlet weak var usernameTxt: greyBackgroundForTextField!
    
    @IBOutlet weak var createUserBtn: UIButton!
    
    @IBOutlet weak var cancelBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Actions
    @IBAction func createTapped(_ sender: Any) {
        Auth.auth().createUser(withEmail: "", password: "") { (user, error) in
            if let error = error{
                debugPrint("Error creating user: \(error.localizedDescription)")
            }
        }
            
        
        
        
    }
    @IBAction func cancelTapped(_ sender: Any) {
    }
    
}
