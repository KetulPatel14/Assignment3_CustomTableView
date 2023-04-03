//
//  ProgessTableViewCell.swift
//  Assignment_3_CustomTableView
//
//  Created by Canadore Student on 2023-04-03.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class ProgessTableViewCell: UITableViewCell {

    @IBOutlet weak var myProgress: UIProgressView!
    @IBOutlet weak var progressValue: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        progressValue.text = "\(Int(myProgress.progress*100))"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
