//
//  MyTableViewCell.swift
//  Danggen market study
//
//  Created by Yonghun Roh on 2022/10/24.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userProFileImg: UIImageView!
    @IBOutlet weak var userContentLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userJobLabel: UILabel!
    
    override func awakeFromNib() {
           super.awakeFromNib()
           print("MyTableViewCell - awakeFromNib() called")
    
    
    }
    
}
