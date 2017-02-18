//
//  DecoratorA.swift
//  Decorator
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
//  HomePage:https://imwcl.com
//  CSDN    :http://blog.csdn.net/wang631106979
//
//  Created by 王崇磊 on 16/9/14.
//  Copyright © 2016年 王崇磊. All rights reserved.
//
// @class DecoratorA
// @abstract <#类的描述#>
// @discussion <#类的功能#>
//

import UIKit

protocol Component {
    func operation()
}

class ConcreteComponent: Component {
    func operation() {
        // 具体操作的实现
    }
}

class Decorator: Component {
    var component: Component?
    func operation() {
        component?.operation()
    }
}

class ConcreteDecoratorA: Decorator {
    private var addedState: String?
    override func operation() {
        super.operation()
        addedState = "ConcreteDecoratorA独有的功能，用来区分ConcreteDecoratorB"
        // 具体装饰对象A的操作
    }
}

class ConcreteDecoratorB: Decorator {
    override func operation() {
        super.operation()
        addedBehavior()
        // 具体装饰对象B的操作
    }
    // ConcreteDecoratorB独有的方法，用来区分ConcreteDecoratorA
    private func addedBehavior() {
        
    }
}
