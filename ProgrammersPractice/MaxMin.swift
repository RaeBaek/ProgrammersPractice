//
//  MaxMin.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/30.
//

import Foundation

var max = 0
var min = 0
var result = ""

func maxMin(_ s: String) -> String {
    let array = s.components(separatedBy: " ")
    max = Int(array[0])!
    min = Int(array[0])!
    for i in 0..<array.count {
        if Int(array[i])! > max {
            max = Int(array[i])!
        } else if Int(array[i])! < min {
            min = Int(array[i])!
        }
    }
    result = "\(min) \(max)"
    return result
}
