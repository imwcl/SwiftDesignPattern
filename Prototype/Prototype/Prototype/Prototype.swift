//
//  Prototype.swift
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
// @class Prototype
// @abstract 基本的原型模式
// @discussion 基本的原型模式
//

// 定义一个原型协议
protocol Prototype {
    var id: String { get }
    func clone() -> Prototype
}

// 原型的具体对象
class ConcretePrototypeA: Prototype {
    var id: String = ""
    // 实现克隆的具体操作
    func clone() -> Prototype {
        let p = ConcretePrototypeA()
        p.id = id
        return p
    }
}
