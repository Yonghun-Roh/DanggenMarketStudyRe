//
//  HomeTableViewCell.swift
//  Danggen market study
//
//  Created by Yonghun Roh on 2022/10/22.
//

import Foundation
import UIKit

class MyTableViewCell: UITableViewCell {
//    @IBOutlet weak var userProfileImg: UIImageView!
//    
//    @IBOutlet weak var userContentLabel: UILabel!
    
    @IBOutlet weak var userProFileImg: UIImageView!
//    @IBOutlet weak var userProFileImg: UIImageView!
    @IBOutlet weak var userContentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyTableViewCell - awakeFromNib() called")
    }
}
