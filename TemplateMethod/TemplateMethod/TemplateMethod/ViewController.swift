//
//  ViewController.swift
//  TemplateMethod
//
//  Created by 王崇磊 on 2017/2/23.
//  Copyright © 2017年 王崇磊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let wcl = WCLTable()
        wcl.showTable()
        let scy = SCYTable()
        scy.showTable()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

