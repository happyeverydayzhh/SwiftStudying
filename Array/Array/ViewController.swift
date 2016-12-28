//
//  ViewController.swift
//  Array
//
//  Created by xiaoZuDeMeng on 2016/12/28.
//  Copyright © 2016年 Zhilink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var fruits = ["apple", "pear", "banana", "orange", "grapefruit", "lizhi"]
        fruits.append("longyan")
//        print("fruits = \(fruits)")
        for item in fruits {
            print(item + "\n")
        }
        
        var airports: Dictionary<String, String> = ["TYO": "Tokyo", "DUB": "Dublin", "LDN": "London"]
        airports["APL"] = "apple international"
        print("airports = \(airports)")
        airports.remove(at: airports.index(forKey: "TYO")!)
        print("airports = \(airports)")
    }
}

