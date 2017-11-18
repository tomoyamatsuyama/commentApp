//
//  CommentTableViewCell.swift
//  commentApp
//
//  Created by 松山友也 on 2017/11/18.
//  Copyright © 2017年 Tomoya Matsuyama. All rights reserved.
//

import UIKit

class CommentTableViewCell: UITableViewCell {

    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var sentenseLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
