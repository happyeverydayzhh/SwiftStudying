//
//  ViewController.swift
//  InstanceAndClass
//
//  Created by xiaoZuDeMeng on 2016/12/28.
//  Copyright © 2016年 Zhilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

//        let shape = Shape()
//        print("shape = \(shape.simpleDescription())")

//        let triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
//        let p1 = triangle.perimeter
//        triangle.perimeter = 9.9
//        let p2 = triangle.perimeter
//        let p3 = triangle.sideLength
//        print("p1 = \(p1)\n, p2 = \(p2)\n, p3 = \(p3)\n")
        
        let triangleAndSquare = TriangleAndSquare(size:10, name: "another test shape")
        let tr1 = triangleAndSquare.square.sideLength
        let tr2 = triangleAndSquare.triangle.sideLength
        let tr3 = triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        let tr4 = triangleAndSquare.triangle.sideLength
        print("tr1 = \(tr1)\n tr2 = \(tr2)\n tr3 = \(tr3)\n tr4 = \(tr4)\n")
    }

    class Shape {
        var numberOfSides = 0
        func simpleDescription() -> String {
            return "A shape with \(numberOfSides) sides."
        }
    }
    
    class NameShape {
        var numberOfSides: Int = 0
        var name: String
        
        init(name: String) {
            self.name = name
        }
        
        deinit {
            
        }
        
        func simpleDescription() -> String {
            return "A shape with \(numberOfSides) sides."
        }
    }
    
    class Square: NameShape {
        var sideLength: Double
        
        init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSides = 4
        }
        
        func area() ->  Double {
            return sideLength * sideLength
        }
        
        override func simpleDescription() -> String {
            return "A square with sides of length \(sideLength)."
        }
    }
    
//    为了更简单的存储属性，属性可以有 setter 和 getter 方法
//    注意 EquilateralTriangle 类的构造器执行了三步：
//    1.设置子类声明的属性值
//    2.调用父类的构造器
//    3.改变父类定义的属性值。调用方法、getters和setters都可以在这个阶段完成。
//    如果你不需要计算属性值，但是需要在设置新值之前或者之后执行一些代码，可以通过 willSet 和 didSet 完成。比如，确保三角形的边长和正方形的边长相同。
    
//    处理可选值时，可以在操作(如方法、属性和子脚本)之前加 ? ，如果 ? 之前是 nil ，那么 nil 之后的都会被忽略，并且整个表达式返回 nil 。否则 ? 之后的都会被执行。这两中情况下，整个表达式的值是可选值。
    
    class EquilateralTriangle: NameShape {
        var sideLength: Double = 0.0
        
        init(sideLength: Double, name: String) {
            self.sideLength = sideLength
            super.init(name: name)
            numberOfSides = 3
        }
        
        var perimeter: Double {
            get {
                print("get\n")
                return 3.0*sideLength
            }
            set {
                print("newValue = \(newValue)\n")
                sideLength = newValue/3.0
            }
        }
        override func simpleDescription() -> String {
            return "An equilateral triagle with sides of length \(sideLength)"
        }
    }
    
    class TriangleAndSquare {
        var triangle: EquilateralTriangle {
            willSet {
                square.sideLength = newValue.sideLength
            }
        }
        
        var square: Square {
            willSet {
                triangle.sideLength = newValue.sideLength
            }
        }
        
        init(size: Double, name: String) {
            square = Square(sideLength: size, name: name)
            triangle = EquilateralTriangle(sideLength: size, name: name)
        }
    }
}

