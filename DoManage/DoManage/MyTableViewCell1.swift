//
//  MyTableViewCell1.swift
//  DoManage
//
//  Created by 张德茂 on 2018/3/30.
//  Copyright © 2018年 张德茂. All rights reserved.
//

import UIKit

class MyTableViewCell1: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var visitNum: UILabel!
    @IBOutlet weak var visitTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
