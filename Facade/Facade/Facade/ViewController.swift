//
//  ViewController.swift
//  Facade
//
//  Created by 王崇磊 on 2017/3/8.
//  Copyright © 2017年 王崇磊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let jijin = Fund()
        // 基金购买
        jijin.buyFund()
        // 基金赎回
        jijin.shellFund()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

