//
//  CashSuper.swift
//  Strategy
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
// @class CashSuper
// @abstract 用策略模式解决实际问题（商场打折）
// @discussion 用策略模式解决实际问题（商场打折）
//
import Foundation

// 定义一个收费的策略接口
protocol CashSuper {
    func acceptCash(money: Double) -> Double
}

// 普通收费子类
class CashNormal: CashSuper {
    // 正常原价返回
    func acceptCash(money: Double) -> Double {
        return money
    }
}

// 打折收费子类
class CashRebate: CashSuper {
    // 折扣率
    private var moneyRebate: Double = 1.0
    
    init(moneyRebate: Double) {
        self.moneyRebate = moneyRebate
    }
    
    func acceptCash(money: Double) -> Double {
        return money*moneyRebate
    }
}

// 返利收费子类
class CashReturn: CashSuper {
    // 返利要求
    private var moneyCondition: Double = 0
    // 返多少
    private var moneyReturn: Double    = 0
    
    init(moneyCondition: Double, moneyReturn: Double) {
        self.moneyCondition = moneyCondition
        self.moneyReturn    = moneyReturn
    }
    
    func acceptCash(money: Double) -> Double {
        var result = money
        if money >= moneyCondition {
            result = money - floor(money / moneyCondition) * moneyReturn
        }
        return result
    }
}


// context类
class CashContext {
    private var cs: CashSuper?
    
    // 通过枚举判断使用哪种方式
    init(style: CashStyle) {
        switch style {
        case .normal:
            cs = CashNormal()
        case .rebate(moneyRebate: let money):
            cs = CashRebate(moneyRebate: money)
        case .return(moneyCondition: let moneyCondition, moneyReturn: let moneyReturn):
            cs = CashReturn(moneyCondition: moneyCondition, moneyReturn: moneyReturn)
        }
    }
    
    func getResult(money: Double) -> Double {
        return cs?.acceptCash(money: money) ?? 0
    }
}

// 优惠的枚举类型
enum CashStyle {
    case normal
    case rebate(moneyRebate: Double)
    case `return`(moneyCondition: Double, moneyReturn: Double)
}


