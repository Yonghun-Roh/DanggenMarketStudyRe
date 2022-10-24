//
//  Main.swift
//  Danggen market study
//
//  Created by Yonghun Roh on 2022/09/16.
//

import UIKit

class MainViewController: UIViewController {
    
    
    @IBAction func moveByLoginVC(_ sender: Any) {
        
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") else{
            return
        }
        self.present(uvc, animated: true)
    }
    
    @IBAction func moveByStartVC(_ sender: Any) {
        
        guard let svc = self.storyboard?.instantiateViewController(withIdentifier: "StartVC") else {
            return
        }
        self.present(svc, animated: true)
    }
}
