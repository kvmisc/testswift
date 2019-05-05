//
//  AppDelegate.swift
//  TestSwift
//
//  Created by Haiping Wu on 2019/4/24.
//  Copyright © 2019 migu. All rights reserved.
//

import UIKit


//struct Person {
//  var firstName = "Matt"
//  var lastName = "Mathias"
//
//  mutating func changeTo(fn: String, ln: String) {
//    self.firstName = fn
//    self.lastName = ln
//  }
//}

struct Stt {
  var value = 0
}

class Cls {
  var value = 0
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {


    var va = "abcdef"
    var start = va.startIndex
    var idx = va.index(start, offsetBy: 2);
    var range = start...idx
    var vb = va[range]
    print(vb) // abc

    var secondIdx = va.index(after: va.startIndex)
    vb.remove(at: secondIdx)
    print(va)
    print(vb)


//    for i in >1..5 {
//      print(i)
//      if i==10 { break }
//    }

//    let va = Stt()
//    va.value = 101
//
//    let vb = Cls()
//    vb.value = 101

//    var person = Person()
//    var fChangeTo = Person.changeTo
//    // 按住 Option 键点击 fChangeTo，能显示出 fChangeTo 的定义：
//    // 有 mutating
//    //   var fChangeTo: (inout Person) -> (String, String) -> ()
//    // 无 mutating
//    //   var fChangeTo: (      Person) -> (String, String) -> ()
//    // 两种情况都是接受 Person 实例作为参数，返回一个函数，只不过 mutating 的情况下参数是 inout 形式
//    // 总结起来：mutating 方法的第一个参数是 self，并以 inout 的形式传入。因为值类型在传递的时候会被复制，所以
//    // 对于非 mutating 方法，self 其实是个副本，为了进行修改，self 需要被声明为 inout。
//    var changeTo = fChangeTo(&person)
//    changeTo("John", "Gallagher") // TODO: 这里会导致函数体内 EXE_BAD_ACCESS，为什么？
//    print("\(person.firstName) \(person.lastName)")



    return true
  }

}

