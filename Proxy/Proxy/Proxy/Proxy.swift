//
//  Proxy.swift
//  Proxy
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
// @class Proxy
// @abstract 代理模式的基本实现
// @discussion 代理模式的基本实现
//

// 定义一个接口
protocol Subject {
    func request()
}


class RealSubject: Subject {
    func request() {
        print("真实的请求")
    }
}

class Proxy: Subject {
    // 真实的对象
    var realSubject: RealSubject?
    
    func request() {
        realSubject?.request()
    }
}
