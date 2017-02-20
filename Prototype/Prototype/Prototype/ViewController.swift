//
//  ViewController.swift
//  Prototype
//
//  Created by 王崇磊 on 2017/2/20.
//  Copyright © 2017年 王崇磊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let wcl = Resume(name: "wcl", sex: "male", age: "23", company: "beijing")
        let scy = wcl.copy() as! Resume
        scy.name = "scy"
        scy.sex = "female"
        wcl.disPlay()
        scy.disPlay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

