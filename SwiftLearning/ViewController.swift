//
//  ViewController.swift
//  SwiftLearning
//
//  Created by xiaoZuDeMeng on 2016/12/23.
//  Copyright © 2016年 Zhilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
//   if let
//        var optionalString: String? = "Hello"
//        optionalString = nil
//        print("optionalString = \(optionalString)")
//        var optionalName: String? = "John Appleseed"
//        optionalName = "John Appleseed"
//        var greeting = "Hello! "
//        if let name = optionalName {
//            greeting = "Hello, \(name)"
//            print("optionalName = \(optionalName), greeting = \(greeting)")
//        }
//        else {
//            greeting = "optionalName is nil"
//            print("greeting = \(greeting)")
//        }
    
        
//        let vegetable = "red pepper"
//        let vegetable = "watercress"
//        switch vegetable {
//        case "celery":
//            let vegetableComment = "Add some raisins and make ants on a log."
//            print("vegetableComment = \(vegetableComment)")
//        case "cucumber", "watercress":
//            let vegetableComment = "That would make a good tea sandwich."
//            print("vegetableComment = \(vegetableComment)")
//        case let x where x.hasSuffix("pepper"):
//            let vegetableComment = "Is it a spicy \(x)?"
//            print("vegetableComment = \(vegetableComment)")
//        default:
//            let vegetableComment = "Everything tastes good in soup."
//            print("vegetableComment = \(vegetableComment)")
//        }
        
        
//        使用 for-in 遍历字典，需要两个变量来表示键和值。
//        let interestingNumbers = ["Prime": [2, 3, 5, 7, 11, 13],
//                                  "Fibonacci": [1, 1, 2, 3, 5, 8],
//                                  "Square":[1, 4, 9, 16, 25]]
//        var largest = 0
//        var type:String?
//        for (kind, numbers) in interestingNumbers {
//            for number in numbers {
//                if number > largest {
//                    largest = number
//                    type = kind
//                }
//            }
//        }
//        print("largest = \(largest), type = \(type)")
//    练习：添加另一个变量来记录哪种类型的数字最大。        var type:String?

        
//        使用 while 来重复运行一段代码直到不满足条件。循环条件可以在开头也可以在结尾。
//        var n = 2
//        while n < 100 {
//            n = n*n
//        }
//        print("n = \(n)")
//    
//        var m = 2
//        repeat {
//            m = m*m
//        } while m < 100
//        print("m = \(m)")
   
        
//        你可以在循环中使用 .. 来表示范围，也可以使用传统的写法，两者是等价的：
//        var firstForLoop = 0
//        for i in 0..<3 {
//            firstForLoop += i
//        }
//        print("firstForLoop = \(firstForLoop)")
//
//        var secondForLoop = 0
//        for i in 0...3 {
//            secondForLoop += i
//        }
//        print("secondForLoop = \(secondForLoop)")
//    使用 ..< 表示的范围不包括上界，如果想包括的话需要使用 ...
        
        
    }
}

