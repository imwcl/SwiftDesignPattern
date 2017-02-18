//
//  Strategy.swift
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
// @class Strategy
// @abstract 策略模式基本实现
// @discussion 策略模式基本实现
//

// 策略类，定义所有支持 的算法的公共接口
protocol Strategy {
    func AlgorithmInterface()
}

// 具体策略类，封装了具体的算法或行为，继承于Strategy
class ConcreteStrategyA: Strategy {
    func AlgorithmInterface() {
        print("ConcreteStrategyA")
    }
}

class ConcreteStrategyB: Strategy {
    func AlgorithmInterface() {
        print("ConcreteStrategyB")
    }
}

class ConcreteStrategyC: Strategy {
    func AlgorithmInterface() {
        print("ConcreteStrategyC")
    }
}

// Context上下文，用一个 ConcreteStrategy来配置，维护一个对Strategy对象的引用
class Context {
    var strategy: Strategy?
    func ContextInterface() {
        strategy?.AlgorithmInterface()
    }
}
