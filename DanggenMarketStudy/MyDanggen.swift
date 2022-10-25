//
//  MyDanggen.swift
//  Danggen market study
//
//  Created by Yonghun Roh on 2022/09/15.
//

import UIKit
import Firebase

class MyDanggenViewController: UIViewController {
    
    @IBAction func logOutPressed(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
//        dismiss(animated: true)
//        self.presentingViewController?.dismiss(animated: true)
    
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
    }
      
    }
}
