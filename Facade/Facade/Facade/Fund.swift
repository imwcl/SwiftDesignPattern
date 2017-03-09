//
//  Fund.swift
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
// @class Fund
// @abstract 外观模式实现基金购买过程
// @discussion 外观模式实现基金购买过程
//

/// 基金类
class Fund {
    var gu1 = Stock1()
    var gu2 = Stock2()
    var gu3 = Stock3()
    var nd  = NationalDebt()
    var rt  = Realty()

    public func buyFund() {
        print("买入基金")
        gu1.buy()
        gu2.buy()
        gu3.buy()
        nd.buy()
        rt.buy()
    }
    
    public func shellFund() {
        print("\n卖出基金")
        gu1.shell()
        gu2.shell()
        gu3.shell()
        nd.shell()
        rt.shell()
    }
}

//股票类
class Stock1: Deal {
    var dealName: String {
        return "股票一"
    }
}

class Stock2: Deal {
    var dealName: String {
        return "股票二"
    }
}

class Stock3: Deal {
    var dealName: String {
        return "股票三"
    }
}

class NationalDebt: Deal {
    var dealName: String {
        return "国债"
    }
}

class Realty: Deal {
    var dealName: String {
        return "房地产"
    }
}

protocol Deal {
    var dealName: String {get}
    mutating func shell()
    mutating func buy()
}

extension Deal {
    mutating func shell() {
        print("\(dealName)卖出")
    }
    
    mutating func buy() {
        print("\(dealName)买入")
    }
}
