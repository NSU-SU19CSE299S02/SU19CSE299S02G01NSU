//
//  GoogleSignIn.swift
//  Junior Design Project
//
//  Created by Shafiqul  Islam on 8/6/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit
import GoogleSignIn

class GoogleSignIn: UIViewController , GIDSignInUIDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        //GIDSignIn.sharedInstance().signInSilently()
        
        let gSignIn = GIDSignInButton(frame: CGRect(x: 0, y: 0, width: 230, height: 48))
        gSignIn.center = view.center
        view.addSubview(gSignIn)
        
        // Add sign out button
      
        let signOut = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 30))
        signOut.backgroundColor = UIColor.red
        signOut.setTitle("Sign Out", for: .normal)
        signOut.center = view.center
        signOut.center.y = view.center.y + 100
        signOut.addTarget(self, action: #selector(self.signOut(_:)), for: .touchUpInside)
        self.view.addSubview(signOut)
    }
    @objc func signOut(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
        print("Signed out")
        
    }

}
