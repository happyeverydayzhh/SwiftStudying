//
//  ViewController.swift
//  EnumAndStruct
//
//  Created by xiaoZuDeMeng on 2016/12/28.
//  Copyright © 2016年 Zhilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ace = Rank.Ace
        print("ace = \(ace)")
    }
    
//  使用 enum 创建一个枚举。像类和所有其他的命名类型一样，枚举可以与他们相关的方法
    enum Rank: Int {
        case Ace = 1
        case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King
        func simpleDescription() -> String {
            switch self {
            case .Ace:
                return "Ace"
            case .Jack:
                return "Jack"
            case .Queen:
                return "Queen"
            case .King:
                return "King"
            default:
                return "default"
            }
        }
    }
}

