# 策略模式

策略模式定义了算法家族，分别封装起来，让它们之间可以相互替换，此模式让算法的变化，不会影响到使用算法的客户。

## 策略模式的组成

- 抽象策略角色（Strategy）： 策略类，通常由一个接口或者抽象类实现。
- 具体策略角色（ConcreteStrategy）：包装了相关的算法和行为。
- 环境角色（Context）：持有一个策略类的引用，最终给客户端调用。

## 策略模式的基本实现

![](http://imwcl.oss-cn-shanghai.aliyuncs.com/blog/%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F/%E7%AD%96%E7%95%A5%E6%A8%A1%E5%BC%8F/Strategy.png)

上图是最基本的装饰模式的结构图，下面将用[**Swift**](http://lib.csdn.net/base/swift)代码来实现一个基本策略模式：

```swift
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
```

以上代码是最简单的策略模式的实现过程，定义了一个`Strategy`的算法族，通过它的子类可以实现算法（`AlgorithmInterface`）的替换，而不会影响到客户端。

## 用策略模式解决实际问题（商场打折）

我们知道在商场中一般有很多打折优惠方案，类似这种问题就可以用策略模式来解决，打折不同的方案就相当于不同的策略（`ConcreteStrategy`），然后用一个`Context`类来实现不同算法的切换，下面是商场打折策略模式的实现于`UML`图：

![](http://imwcl.oss-cn-shanghai.aliyuncs.com/blog/%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F/%E7%AD%96%E7%95%A5%E6%A8%A1%E5%BC%8F/CashSuper.png)

以上是一个简单的商场收银系统，`CashNormal`为普通收费子类，`CashRebate`为打折收费子类，`CashReturn`为返利收费子类，下面是代码的实现过程：

```swift
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
```

下面我们测试一下代码：

```swift
let money: Double = 300
// 普通
let normal = CashContext(style: .normal)
// 打7折
let rebate = CashContext(style: .rebate(moneyRebate: 0.7))
// 满一百返20
let `return` = CashContext(style: .return(moneyCondition: 100, moneyReturn: 20))
print("普通: \(normal.getResult(money: money))")
print("打8折: \(rebate.getResult(money: money))")
print("满一百返20: \(`return`.getResult(money: money))")
```

下面是执行的结果：

```swift
普通: 300.0
打8折: 210.0
满一百返20: 240.0
```

## 策略模式总结

我们可以理解为策略就是用来封装算法，但在实践过程中不用那么死板，可以用来封装几乎任何类型的规则，只要在分析过程中听到需要在不同时间应用不同的业务规则，就可以考虑使用策略模式处理这种变化的可能性。

> 以上是我对于策略模式的理解，如果有不对的地方欢迎大家交流，最后谢谢大家的阅读~~