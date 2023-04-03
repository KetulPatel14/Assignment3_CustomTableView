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
    
    var cellIdentifiers: [String] = ["courseCodeCell", "imageCell", "segmentCell", "progressCell", "sliderCell", "stepperCell", "textCell"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.delegate = self
        myTableView.dataSource = self
        
        let courseCodeCell = UINib(nibName: "CourseCodeTableViewCell", bundle: nil)
        myTableView.register(courseCodeCell, forCellReuseIdentifier: "courseCodeCell")
        
        let imageCell = UINib(nibName: "ImageTableViewCell", bundle: nil)
        myTableView.register(imageCell, forCellReuseIdentifier: "imageCell")
        
        let segmentCell = UINib(nibName: "SegmentTableViewCell", bundle: nil)
        myTableView.register(segmentCell, forCellReuseIdentifier: "segmentCell")
        
        let progressCell = UINib(nibName: "ProgessTableViewCell", bundle: nil)
        myTableView.register(progressCell, forCellReuseIdentifier: "progressCell")
        
        let sliderCell = UINib(nibName: "SliderTableViewCell", bundle: nil)
        myTableView.register(sliderCell, forCellReuseIdentifier: "sliderCell")
        
        let stepperCell = UINib(nibName: "StepperTableViewCell", bundle: nil)
        myTableView.register(stepperCell, forCellReuseIdentifier: "stepperCell")
        
        let textCell = UINib(nibName: "TextTableViewCell", bundle: nil)
        myTableView.register(textCell, forCellReuseIdentifier: "textCell")
    }

   

}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellIdentifiers.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("Selected")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: cellIdentifiers[indexPath.row], for: indexPath)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}

