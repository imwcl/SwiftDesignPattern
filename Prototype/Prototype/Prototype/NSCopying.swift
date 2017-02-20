//
//  NSCopying.swift
//  Prototype
//
// **************************************************
// *                                  _____         *
// *         __  _  __     ___        \   /         *
// *         \ \/ \/ /    / __\       /  /          *
// *          \  _  /    | (__       /  /           *
// *           \/ \/      \___/     /  /__          *
// *                               /_____/          *
// *                                                *
// **************************************************
//  Github  :https://github.com/631106979
//  HomePage:http://imwcl.com
//  CSDN    :http://blog.csdn.net/wang631106979
//
//  Created by 王崇磊 on 16/9/14.
//  Copyright © 2016年 王崇磊. All rights reserved.
//
// @class NSCopying
// @abstract NSCopying来实现原型模式
// @discussion NSCopying来实现原型模式
//

import Foundation

class Resume: NSCopying {
    
    var name: String
    var sex: String
    var age: String
    var company: String
    
    init(name: String, sex: String, age: String, company: String) {
        self.name = name
        self.sex = sex
        self.age = age
        self.company = company
    }
    
    func disPlay() {
        print("name: \(name), sex: \(sex), age: \(age), company: \(company)")
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Resume(name: name, sex: sex, age: age, company: company)
    }
}
