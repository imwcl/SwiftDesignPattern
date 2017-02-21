//
//  Express.swift
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
// @class Express
// @abstract 代理模式解决快递的问题
// @discussion 代理模式解决快递的问题
//

// 定义一个配送的接口
protocol Deliver {
    var goodsName: String { get }
    func deliverGoods()
}

// 快递公司继承配送的接口
class Express: Deliver {
    var goodsName: String
    
    init(goodsName: String) {
        self.goodsName = goodsName
    }
    
    func deliverGoods() {
        print("由顺丰快递配送\(goodsName)")
    }
}

// 淘宝卖家也继承配送的接口
class Taobao: Deliver {
    // 实际上是由快递公司配送
    var express: Express
    var goodsName: String
    
    init(goodsName: String) {
        express = Express(goodsName: goodsName)
        self.goodsName = goodsName
        print("买了一个\(goodsName)")
    }
    
    func deliverGoods() {
        express.deliverGoods()
    }
}

