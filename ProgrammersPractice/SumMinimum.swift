//
//  SumMinimum.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/30.
//

import Foundation

func sumMinimum(_ A: [Int], _ B: [Int]) -> Int {
    var ans = 0
    let A1 = A.sorted()
    let B1 = B.sorted(by: >)
    
    for i in 0..<A1.count {
        ans += A1[i] * B1[i]
    }
    return ans
}
