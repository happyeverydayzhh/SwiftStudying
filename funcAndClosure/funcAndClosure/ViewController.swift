//
//  ViewController.swift
//  funcAndClosure
//
//  Created by xiaoZuDeMeng on 2016/12/26.
//  Copyright © 2016年 Zhilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
//        let tupel: (Double, Double, Double) = self.getGasPrices()
//        print("tupel = \(tupel)")
     
//        let sum = self.sumOf(numbers: [1, 2, 3], string: "a")
//        print("sum = \(sum)")
        
//        let sum = self.sumOf(numbers: 1, 2, 3, string: "a")
//        print("sum = \(sum)")
        
//        let fifteen = self.returnFifteen()
//        print("fifteen = \(fifteen)")
        
//        let increment = self.makeIncrementer()
//        print("increment = \(increment(7))")
        
//        let result = self.hasAnyMatches(list: [1, 2, 3, 8, 9, 10], condition: self.lessThanTen)
//        print("result = \(result)")

        
//闭包
//    实际上函数是一种特殊的闭包。通过 {} 创建一个匿名的闭包，使用 in 将执行体和参数、返回值进行分离
        let numbers = [20, 19, 7, 12]
        let result = numbers.map({
            (number: Int) -> Int in
            let result = 3*number
            return result
        })
        print("result = \(result)")
        
//     有多种更简明创建闭包的方法。如果一个闭包类型已知，比如作为一个回调函数，这时可以忽略它的参数类型、或则返回值类型、或则二者都忽略。单条语句的闭包可以直接将语句的结果当做返回值。
        let resulr1 = numbers.map({ number in
            3*number
        })
        print("result1 = \(resulr1)")

//      可以通过参数的位置而不是名称来引用参数--这对于简短的闭包来说非常有用；闭包作为最后一个参数传递给函数时，可以直接跟在括号后面。
//        let sort1 = sort([1, 5, 3, 12, 2]){
//            $0 > $1
//        }
    }

//  使用元组定义函数的多个返回值
    func getGasPrices() -> (Double, Double, Double) {
        return (3.00, 4.00, 5.00)
    }

//  传递可变数量的参数，通过数组获取参数
//    func sumOf(numbers: [Int], string: String!) -> Int {
//        var sum = 0
//        var append: String? = ""
//        for number in numbers {
//            sum += number
//            append?.append(string!)
//        }
//        print("append = \(append)")
//        return sum
//    }
    
    func sumOf(numbers: Int..., string: String!) -> Int {
        var sum = 0
        var append: String? = ""
        for number in numbers {
            sum += number
            append?.append(string!)
        }
        print("append = \(append)")
        return sum
    }
    
//    函数可以嵌套，被嵌套的函数可以访问外部函数的变量。可以通过函数的嵌套来重构太长或者太复杂的函数。
    func returnFifteen() -> Int {
        var y = 10
        func add() {
            y += 5
        }
        add()
        return y
    }
    
//    函数是一级类型，这意味着函数可以使用另一个函数作为返回值
    func makeIncrementer() -> ((Int) -> Int) {
        func addOne(number: Int) -> Int {
            return 1 + number
        }
        return addOne
    }

//    函数也可以使用另一个函数作为参数
    func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
        for item in list {
            if condition(item) {
                return true
            }
        }
        return false
    }
    
    func lessThanTen(number: Int) -> Bool {
        return number < 10
    }
    
    
    
    //闭包
//    实际上函数是一种特殊的闭包。通过 {} 创建一个匿名的闭包，使用 in 将执行体和参数、返回值进行分离
//     有多种更简明创建闭包的方法。如果一个闭包类型已知，比如作为一个回调函数，这时可以忽略它的参数类型、或则返回值类型、或则二者都忽略。单条语句的闭包可以直接将语句的结果当做返回值。
}

