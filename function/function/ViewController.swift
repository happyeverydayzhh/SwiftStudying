//
//  ViewController.swift
//  function
//
//  Created by xiaoZuDeMeng on 2016/12/29.
//  Copyright © 2016年 Zhilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        var currentValue = 3
//        let moveNearToZero = chooseStepFunction(backwards: currentValue > 0)
//        
//        while currentValue != 0 {
//            print("\(currentValue) ...")
//            currentValue = moveNearToZero(currentValue)
//        }
//        print("zero!")
        
//        函数嵌套
        var currentValue = -4
        let moveNearToZero = chooseStepFunction(backwards: currentValue > 0)
        while currentValue != 0 {
            print("\(currentValue) ...")
            currentValue = moveNearToZero(currentValue)
        }
        print("zero!")
    }
    
//    函数类型作为返回值 函数类型由 参数列表和返回值组成
    
//    函数类型也可以作为另一个函数的返回值类型。就是在返回箭头（->）后写一个完整的函数类型。
//    来看例子：定义2个函数：stepForward 和stepBackward。stepForward 函数返回输入值加1的值。stepBackward 函数返回输入值减1的值。这两个函数的类型都是 (Int) -> Int：

//    func stepForward(input: Int) -> Int {
//        return input + 1
//    }
//    
//    func stepBackward(intput: Int) -> Int {
//        return intput - 1
//    }
//    
//    func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
//        return backwards ? stepBackward : stepForward
//    }
    
    
//    嵌套函数
    func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
        func stepForward(input: Int) -> Int { print("stepForward"); return input + 1 }
        func stepBackward(input: Int) -> Int { print("stepBackward"); return input - 1 }
        return backwards ? stepBackward : stepForward
    }
}

