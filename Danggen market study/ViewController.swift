//
//  ViewController.swift
//  Danggen market study
//
//  Created by Yonghun Roh on 2022/09/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func moveByNotice(_ sender: Any) {
        
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SearchVC") else {
            return
        }
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    @IBAction func moveByMenu(_ sender: Any) {
        
        guard let uvc1 = self.storyboard?.instantiateViewController(withIdentifier: "MenuVC") else {
            return
        }
        self.navigationController?.pushViewController(uvc1, animated: true)
    }
    
    @IBAction func moveBySearch(_ sender: Any) {
        guard let uvc2 = self.storyboard?.instantiateViewController(withIdentifier: "NoticeVC") else {
            return
        }
        self.navigationController?.pushViewController(uvc2, animated: true)
        
    }
    
    
    
    
}

