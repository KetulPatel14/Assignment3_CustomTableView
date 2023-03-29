//
//  ViewController.swift
//  Assignment_3_CustomTableView
//
//  Created by Canadore Student on 2023-03-29.
//  Copyright © 2023 Canadore Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var cellIdentifiers: [String] = ["imageCell", "segmentCell"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        myTableView.delegate = self
        myTableView.dataSource = self
    }


}

