//
//  TemplateMethod.swift
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
// @class TemplateMethod
// @abstract 模板方法的基本实现
// @discussion 模板方法的基本实现
//


class AbstractClass {
    func primitiveOperation1() {}
    func primitiveOperation2() {}
    
    func templateMethod() {
        primitiveOperation1()
        primitiveOperation2()
    }
}

class ConcreteClassA: AbstractClass {
    override func primitiveOperation1() {
        print("具体类A方法1实现")
    }
    
    override func primitiveOperation2() {
        print("具体类A方法2实现")
    }
}

class ConcreteClassB: AbstractClass {
    override func primitiveOperation1() {
        print("具体类B方法1实现")
    }
    
    override func primitiveOperation2() {
        print("具体类B方法2实现")
    }
}
