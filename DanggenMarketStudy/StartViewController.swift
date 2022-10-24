//
//  StartViewController.swift
//  Danggen market study
//
//  Created by Yonghun Roh on 2022/10/24.
//

import Foundation
import UIKit
import Firebase

class StartViewController: UIViewController {
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
        
       if let email = emailTextfield.text, let password = passwordTextfield.text {
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error {
                print(e)
            } else {
                self.performSegue(withIdentifier: "GoToMainST", sender: self)
            }
        }
    }
    }}

