//
//  Facade.swift
//  Facade
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
// @class Facade
// @abstract 外观模式的基本实现
// @discussion 外观模式的基本实现
//

//MARK: 外观类
class Facade {
    let one   = SubSystemOne()
    let two   = SubSystemTwo()
    let three = SubSystemThree()
    let four  = SubSystemFour()

    public func methodA() {
        print("方法组A")
        one.methodOne()
        two.methodTwo()
        three.methodThree()
    }
    
    public func methodB() {
        print("方法组B")
        two.methodTwo()
        three.methodThree()
        four.methodFour()
    }
}


//MARK: 子系统类
class SubSystemOne {
    public func methodOne() {
        print("子系统方法一")
    }
}

class SubSystemTwo {
    public func methodTwo() {
        print("子系统方法二")
    }
}

class SubSystemThree {
    public func methodThree() {
        print("子系统方法三")
    }
}

class SubSystemFour {
    public func methodFour() {
        print("子系统方法四")
    }
}
