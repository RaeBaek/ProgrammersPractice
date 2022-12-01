//
//  Carpet.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/12/01.
//

import Foundation

func carpet(_ brown: Int, _ yellow: Int) -> [Int] {
    let sum = brown + yellow
    var x: Int = 0
    var y: Int = 0
    
    for i in 1...sum {
        if (sum % i) == 0 {
            x = sum / i
            y = i
        }
        if (x-2) * (y-2) == yellow {
            break
        }
    }
    return [x,y]
}
