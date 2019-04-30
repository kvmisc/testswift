//
//  MonsterTown.swift
//  TestSwift
//
//  Created by Haiping Wu on 2019/4/29.
//  Copyright © 2019 migu. All rights reserved.
//

import Foundation

// 枚举和结构体是值类型，值类型被传递时是被复制
//
//
// super 是继承思想的产物，在枚举、结构体等值类型上不可用
//
//
// 属性分为存储属性、计算属性，存储属性可以有默认值，计算属性根据已有信息返回某种计算结果。枚举、
// 结构体和类都可以有属性
//
//
// 类方法：类方法内部可以使用类方法和类属性，不能使用实例方法和实例属性，值类型声明类方法用
// static，类声明类方法用 class
//
// 类属性-值类型：值类型可以有存储类属性、计算类属性，声明类属性用 static
//
// 类属性-类：类也可以有存储类属性、计算类属性，语法和结构体一样用 static，子类不能覆盖父类的类
// 属性，如果希望子类能为某个属性提供自己的实现，那就用 class 关键字（注：用 class 关键字好像要报错）

struct Town {
  var population: Int
  var stoplights: Int
  let region: String
  init(region: String, population: Int, lights: Int) {
    self.population = population
    stoplights = lights
    self.region = region
  }
  init(population: Int, lights: Int) {
    self.init(region: "N/A", population: population, lights: lights)
  }
}


class Monster {
}

class Zombie: Monster {
}




//class Monster {
//  //////////////////////////////////////////////////////////////////////
//  // 初始化方法
//  //
//
//  // 嵌套类型
//  enum Size {
//    case small
//    case medium
//    case large
//  }
//
//  //////////////////////////////////////////////////////////////////////
//  // 实例方法
//  //
//  func instanceMethodSample(value: Int) {
//    print("instance method called: \(value)")
//  }
//  //////////////////////////////////////////////////////////////////////
//  // 类方法
//  //
//  // 声明类方法用 static 和 class 都可以，但是：
//  //   1) 用 class，子类可以重写类方法
//  //   2) 用 static，子类不能重写类方法，效果同 final class
//  class func classMethodSample() {
//    print("class method called")
//  }
//
//  //////////////////////////////////////////////////////////////////////
//  // 实例属性
//  //
//  // 存储属性，可以有默认值
//  var storedProperty = 50
//  // 惰性存储属性，必须声明为 var，只在第一次访问的时候会计算并赋值，如果后面条件变化了，即使访
//  // 问此属性也不会重新计算并赋值
//  // 未初始化的惰性存储属性被多线程同时访问时，无法保证其只被初始化一次
//  // 末尾的圆括号确保 Swift 会在程序第一次访问此属性时调用闭包并将结果赋给属性，如果省略了圆括
//  // 号，那表示把闭包赋值给属性
//  lazy var lazyProperty: Int = {
//    if self.storedProperty < 100 {
//      return 1
//    } else if self.storedProperty < 1000 {
//      return 2
//    } else {
//      return 3
//    }
//  }()
//  // 计算属性，必须声明为 var，必须有类型信息编译器才知道读取方法返回的是什么
//  var computedProperty: Int {
//    get {
//      // 这里的例子完全无意义，举一个有意义的例子是：矩形只保存 origin 和 size，计算得出
//      // center，而在 set 方法中，通过 size 和新的 center 计算出新的 origin
//      if self.storedProperty < 100 {
//        return 1
//      } else if self.storedProperty < 1000 {
//        return 2
//      } else {
//        return 3
//      }
//    }
//    // 可以不提供 set 方法
//    set(newValue) { /**/ }
//    // 如果提供 set 方法的时候不提供参数名，在函数体中可以使用默认参数名 newValue
//    // set { /**/ }
//    // 如果不提供 set 方法，get 方法可以用快捷语法，直接在这个花括号内返回值就行了
//    // return /**/
//  }
//  // 属性观察者，1)能观察自己定义的存储属性，不能观察惰性存储属性；2)能在子类中重写属性来观察父类
//  // 的存储属性和计算属性；3)不需要观察非重写的计算属性，因为可以在计算属性的 set 方法中响应变化；
//  //
//  // 即使设置的新值等于旧值也会调用 willSet 和 didSet
//  var numberOfVictims = 0 {
//    // 如果不指定参数名字，Swift 会自动把参数命名为 oldValue
//    didSet {
//      print("DidSetVictims: \(oldValue) \(self.numberOfVictims)")
//    }
//    // 如果不指定参数名字，Swift 会自动把参数命名为 newValue
//    willSet(newNumberOfVictims) {
//      print("WillSetVictims: \(self.numberOfVictims) \(newNumberOfVictims)")
//    }
//  }
//  //////////////////////////////////////////////////////////////////////
//  // 类属性
//  //
//  // 存储类属性，必须有默认值，因为没有初始化方法来初始化类
//  // 第一次访问存储类属性时初始化属性，类似于 lazy，只不过这里保证在多线程同时访问时只初始化一次
//  static var classStoredProperty = "class stored property"
//  // 计算类属性，可以用 static 或 class 声明，如果用 static，子类就不能重写了
//  class var classComputedProperty: String {
//    // get { return "class computed property" }
//    // 如果计算属性没有 set 方法，可以省掉 get 并直接返回需要的值，这是一种快捷语法
//    return "class computed property"
//  }
//}
//class Zombie: Monster {
//  //////////////////////////////////////////////////////////////////////
//  // 实例方法
//  //
//  // 重写父类的实例方法
//  override func instanceMethodSample(value: Int) {
//    print("override instance method called: \(value)")
//  }
//  //////////////////////////////////////////////////////////////////////
//  // 类方法
//  //
//  // 重写父类的类方法
//  override class func classMethodSample() {
//    print("override class method called")
//  }
//
//  //////////////////////////////////////////////////////////////////////
//  // 实例属性
//  //
//  //var name = "Monster"
//  //////////////////////////////////////////////////////////////////////
//  // 类属性
//  //
//  // 重写父类的存储类属性
//  // TODO: 文档没说存储类属性重写的事，估计是不能重写吧，具体真相？
//  // override static var classStoredProperty = "override class stored property"
//  // 重写父类的计算类属性，父类声明的时候一定要用 class 关键字这里才能重写
//  // TODO: 重写的时候可以用 static 或 class，猜测，如果这里用 static，估计是就仅让自己能重
//  // 写，而不让自己的子类重写，具体真相？
//  override static var classComputedProperty: String {
//    return "override class computed property"
//  }
//}
