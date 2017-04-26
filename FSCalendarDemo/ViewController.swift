//
//  ViewController.swift
//  FSCalendarDemo
//
//  Created by wangwenjie on 2017/4/20.
//  Copyright © 2017年 Roo. All rights reserved.
//

import UIKit
import FSCalendar

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btn_touchUpInside(_ sender: Any) {
        
        let sec = SecCalendarViewController()
        
        self.navigationController?.pushViewController(sec, animated: true)
    }

}


