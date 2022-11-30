//
//  NextMaxNumber.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/30.
//

import Foundation

func nextMaxNumber(_ n: Int) -> Int {
    var answer: Int = 0
    var n = n
    var n1 = ""
    n1 = String(n, radix: 2)
    let replaceCount = n1.filter { $0 == "1" }.count
    
    while true {
        n = n + 1
        n1 = String(n, radix: 2)
        let replaceCount2 = n1.filter { $0 == "1" }.count
        
        if replaceCount == replaceCount2 {
            answer = n
            break
        }
    }
    return answer
}
/*
 0 = 0
 1 = 1
 2 = 10
 3 = 11
 4 = 100
 5 = 101
 6 = 110
 7 = 111
 8 = 1000
 9 = 1001
 10 = 1010
 11 = 1011
 12 = 1100
 13 = 1101
 14 = 1110
 15 = 1111
 16 = 10000
 ...
 */
