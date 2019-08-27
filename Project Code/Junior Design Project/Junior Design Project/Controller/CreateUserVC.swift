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
        
        guard let email = emailTxt.text,
            let password = passwordTxt.text,
            let username = usernameTxt.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { (user, Error) in
            if let error = Error {
                debugPrint("Error creating user: \(error.localizedDescription)")
        }
            let changeRequest = user?.user.createProfileChangeRequest()
            changeRequest?.displayName = username
            changeRequest?.commitChanges(completion: { (error) in
                if let error = error {
                    debugPrint(error.localizedDescription)
                }
            })
            guard let userId = user?.user.uid else {return}
            Firestore.firestore().collection(USERS_REF).document(userId).setData([
                USERNAME : username,
                DATE_CREATED : FieldValue.serverTimestamp()
                ], completion: { (error) in
                    
                    if let error = error {
                        debugPrint(error.localizedDescription)
                    }
                    else{
                        self.dismiss(animated: true, completion: nil)
                     }
                
            })
            
        }
            
        
        
        
    }
    @IBAction func cancelTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
