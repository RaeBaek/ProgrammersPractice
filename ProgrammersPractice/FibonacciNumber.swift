//
//  FibonacciNumber.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/30.
//

import Foundation

func fibonacciNumber(_ n: Int) -> Int {
    var fibonacci: [Int] = [0, 1]
    
    for i in 0..<n-1 {
        fibonacci.append((fibonacci[i] + fibonacci[i+1]) % 1234567)
    }
    return fibonacci[n]
}
