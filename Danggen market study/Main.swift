//
//  Main.swift
//  Danggen market study
//
//  Created by Yonghun Roh on 2022/09/16.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBAction func moveByLogin(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") else {
            return
        }
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    @IBAction func moveByLoginVC(_ sender: Any) {
        
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") else{
            return
        }
        self.present(uvc, animated: true)
    }
    
}
