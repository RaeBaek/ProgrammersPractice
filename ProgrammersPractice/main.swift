//
//  main.swift
//  ProgrammersPractice
//
//  Created by 백래훈 on 2022/11/28.
//

import Foundation

func solution(_ s: String) -> Int {
    var c = [Character]()
    var sArray = Array(s)
    
    for i in sArray.indices {
        if c.isEmpty { c.append(sArray[i]) }
        else {
            if c.last! == sArray[i] { c.removeLast() }
            else { c.append(sArray[i]) }
        }
    }
    
    return c.isEmpty ? 1 : 0
}

solution("adad")
