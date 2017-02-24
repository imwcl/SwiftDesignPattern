//
//  TemplateTable.swift
//  TemplateMethod
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
// @class TemplateTable
// @abstract 模板方法解决实际问题
// @discussion 模板方法解决实际问题
//

// 表格的模板
class TemplateTable {
    func showTable() {
        fillName()
        fillSex()
    }
    
    func fillName() {
        print("你的名字：\(yourName())")
    }
    
    func fillSex() {
        print("你的性别：\(yourSex())")
    }
    
    func yourName() -> String {
        return ""
    }
    
    func yourSex() -> String {
        return ""
    }
}

// wcl填写的表格
class WCLTable: TemplateTable {
    override func yourName() -> String {
        return "wcl"
    }
    
    override func yourSex() -> String {
        return "male"
    }
}

// scy填写的表格
class SCYTable: TemplateTable {
    override func yourName() -> String {
        return "scy"
    }
    
    override func yourSex() -> String {
        return "female"
    }
}
