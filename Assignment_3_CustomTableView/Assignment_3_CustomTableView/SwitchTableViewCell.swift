//
//  SwitchTableViewCell.swift
//  Assignment_3_CustomTableView
//
//  Created by Canadore Student on 2023-04-03.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {

    @IBOutlet weak var mySwitch: UILabel!
    @IBAction func switchControl(_ sender: UISwitch) {
        
        mySwitch.text = ""
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
